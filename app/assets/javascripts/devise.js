$( document ).ready(function() {

  $('#resetPasswordForm').validate({
    rules: {
      "user[email]":{
        required: true,
        email: true
        //minlength: 12,
        //phoneUS: true
      }
    },
    messages: {
      "user[email]":{
        required: "Please enter you email",
        email: "A valid email address is required"
        //phoneUS: "Please enter a valid phone number: (e.g. 19999999999 or 9999999999)"
      }
    }
  });

  $('#loginForm').validate({
    rules: {
      "user[email]":{
        required: true,
        email: true
        //minlength: 12,
        //phoneUS: true
      },
      "user[password]": {
        required: true
      }
    },
    messages: {
      "user[email]":{
        required: "Please enter you email",
        email: "A valid email address is required"
        //phoneUS: "Please enter a valid phone number: (e.g. 19999999999 or 9999999999)"
      },
      "user[password]": {
        required: "password is required"
      }
    }
  });

  $('#registrationForm').validate({
    rules: {
      "user[first_name]": {
        required: true
      },
      "user[last_name]": {
        required: true
      },
      "user[email]":{
        required: true,
        email: true
        //minlength: 12,
        //phoneUS: true
      },
      "user[password]": {
        required: true
      },
      "user[password_confirmation]": {
        required: true,
        equalTo: "#user_password"
      },
      "user[termsConditions]": {
        required: true,
      }
    },
    messages: {
      "user[first_name]": {
        required: "First Name is required",
        maxlength: ""
      },
      "user[last_name]": {
        required: "Last Name is required"
      },
      "user[email]":{
        required: "Please enter you email",
        email: "A valid email address is required"
        //phoneUS: "Please enter a valid phone number: (e.g. 19999999999 or 9999999999)"
      },
      "user[password]": {
        required: "password is required"
      },
      "user[password_confirmation]": {
        required: "Password confirmation is required",
        equalTo: "New Password Doesn't Match"
      },
      "user[termsConditions]": {
        required: "Terms & Conditions Available"
      }
    }
  });
});
