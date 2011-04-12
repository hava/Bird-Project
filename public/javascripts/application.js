$(document).ready(function() {
    $('[data-update-action]').live("change", function (e) {
        alert('heelo')
        var remote_action = $(this).attr("data-update-action");
        replace_with_remote_for_type($(this), remote_action, 'put');
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



