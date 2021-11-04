function chkEmail() {

// Get the target node of the event

let email = document.forms["edit"]["email"].value;
// Test the format of the input phone number
 
  var pos = email.search(/^[\w.-]+@[\w.-]+\.[A-za-z]{2,3}$/);
  if (pos != 0) {
    alert("The Email ID you entered (" + email +
          ") is not in the correct form. \n" +
          "The correct form is: email@example.com \n" +
          "Please go back and fix your email");
  } 
}

function chkPhone() {

let phone = document.forms["edit"]["number"].value;
 
  var pos = phone.search(/^\d{8}$/);
 
  if (pos != 0) {
    alert("The phone number you entered (" + phone+
          ") is not in the correct form. \n" +
          "The correct form is: 81234567 \n" +
          "Please go back and fix your phone number");
  } 
}