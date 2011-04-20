$(document).ready(function() {
    $('[data-update-action]').live("change click", function (e) {
        var remote_action = $(this).attr("data-update-action");
        replace_with_remote_for_type($(this), remote_action, 'put');
    });

    $('[data-click-action]').live("click", function (e) {
        var remote_action = $(this).attr("data-click-action");
        replace_with_remote_for_type($(this), remote_action, 'get');
    });
});


/*
 Form
 */
function replace_with_remote_for_type(element, remote_action, method_type) {
    var params = element.parents("form").serialize();

    $.ajax({
        type: method_type,
        url: remote_action,
        data: params,
        success: function(data) {
        },
        dataType: "script"
    });

}

function effects(element, effect, cssClass, tearDown) {
    element.effect(effect, {times: 3}, 1000, callback);

    function callback() {
        setTimeout(function() {
            element.removeAttr("style").hide().fadeIn();
        }, 1000);
        if (tearDown)
        {
            tearDown.call()
        }
    }
}



