$(document).ready(function() {
    $('[data-change-update-action]').live("change", function (e) {
        var remote_action = $(this).attr("data-change-update-action");
        replace_with_remote_for_type($(this), remote_action, 'put');
    });

    $('[data-click-update-action]').live("click", function (e) {
        var remote_action = $(this).attr("data-click-update-action");
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
        if (tearDown) {
            tearDown.call()
        }
    }
}

function show_sightings(id) {
    $("#entry_" + id + " .entry_action").hide();
    $("#entry_" + id).addClass("highlight");
    $("#first_sighting_" + id).hide();
    $("#sightings_" + id).fadeIn(500);
}

function hide_sightings(id) {
    $("#sightings_" + id).fadeOut(500);

    var entry_element = $("#entry_" + id);
    var entry_action_element = $("#entry_" + id + " .entry_action");
    var first_sighting_element = $("#first_sighting_" + id);

    first_sighting_element.show();
    entry_action_element.show();
    entry_element.removeClass("highlight");
    pulsate(entry_element)
}


function pulsate(element) {
    var effectClass = "pulsate";

    element.addClass(effectClass);

    effects(element, effectClass, effectClass, function () {
        element.removeClass(effectClass);
    });
}


