$(document).ready(function () {
  if ($('#flash-alert').length > 0) {
    var flash = $('#flash-alert')
    if (flash.hasClass('alert-success')) {
      $.toast({
        heading: 'Well done!',
        text: flash.text(),
        position: 'top-right',
        loaderBg: '#5ba035',
        icon: 'success',
        hideAfter: 5000,
        stack: 1
      });
    } else if (flash.hasClass('alert-danger')) {
      $.toast({
        heading: 'Oh snap!',
        text: flash.text(),
        position: 'top-right',
        loaderBg: '#bf441d',
        icon: 'error',
        hideAfter: 5000,
        stack: 1
      });
    }
  }
});