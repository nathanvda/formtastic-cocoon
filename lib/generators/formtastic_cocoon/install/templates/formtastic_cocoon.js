$(document).ready(function() {

  $('.add_fields').live('click', function() {
    var assoc   = $(this).attr('data-association');
    var content = $('#' + assoc + '_fields_template').html();
    var regexp  = new RegExp('new_' + assoc, 'g');
    var new_id  = new Date().getTime();
    $(this).parent().before(content.replace(regexp, new_id));
    return false;
  });

  $('.remove_fields.dynamic').live('click', function() {
    $(this).closest(".nested-fields").remove();
    return false;
  });

  $('.remove_fields.existing').live('click', function() {
    $(this).prev("input[type=hidden]").val("1");
    $(this).closest(".nested-fields").hide();
    return false;
  });

});