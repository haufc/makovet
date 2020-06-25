$(document).ready(function() {
    $('form').submit(function(event) {
      event.preventDefault()

      if (!this.checkValidity()) {
          // If the form is invalid, submit it. The form won't actually submit;
          // this will just cause the browser to display the native HTML5 error messages.
          this.find('button[type="submit"]').click()
      } else {
        var values = $(this).serialize();
        $.ajax({
          type: this.method,
          url: this.action,
          data: values,
          success: function(data){
              if (data.success) {
                  $('#success-dialog').modal('show');
                  $('form')[0].reset();
              } else {
                  $('#fail-dialog').modal('show');
              }
          },
          error: function(response) {
              $('#fail-dialog').modal('show');
          }
        });
      }
  });
});