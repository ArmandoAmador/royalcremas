$(function(){

  var form = $('#new_contact_request');

  form.on('ajax:error', function(e, xhr){
    var response = xhr.responseJSON;
    form.find('.error').remove();
    Object.keys(response).forEach(function(key){
      var value = response[key].join(' and ');
      $('label[for="contact_request_' + key + '"]').append('<span class="error"> ' + value + '</span>');
    });
  });

  form.on('ajax:success', function(e, response){
    form.after('<h1 class="coffee">Thank you for contacting Royal Cremas!</h1>');
    form.hide();
  });

});
