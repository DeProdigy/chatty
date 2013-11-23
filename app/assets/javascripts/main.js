$(document).ready(function(){
  addEventListeners();
});

function addEventListeners() {
  $("#submit-message").on("click", function() {
    createMessage();
  });
}

function createMessage() {
  alert('yo');
}