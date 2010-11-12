// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//
   // Hide mask an dialogs
/**
 *
 */
function hideDialog() {
  $('#mask').hide();
  $('.dialog').hide();
}

/**
 *
 */
function showDialog(target) {
  $('#mask').show();
  $('#save').attr('disabled', false).html('Salvar');
  $(target).show();
}
/**
 * Serializa los datos de un formulario para hacer submit mediante AJAX
 */
function serializeFormElements(elem) {
  var params = {};

  $(elem).find('input, select, textarea').each(function(i, el) {
    params[ $(el).attr('name') ] = $(el).val();
  });

  return params;
}
 
$(document).ready(function() {

  $('#mask, .dialog .close').click(function() {
    hideDialog();
  });
});

