$(document).ready(function(){
  addEventListeners();
});

function addEventListeners() {
  $("#submit-message").on("click", function() {
    createMessage();
  });
}

function createMessage() {
  //get chatroom id
  //get the message's content
  var content = $("#message-content").val();
  $.ajax({
    url: document.URL + '/messages',
    type: 'post',
    data: {content: content}
  });
}