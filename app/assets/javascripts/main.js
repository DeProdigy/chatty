$(document).ready(function(){
  addEventListeners();
  //initial load
  refreshMessages();
  //refresh every 1 second
  setInterval(function(){
    refreshMessages();
  }, 1000);
});

function addEventListeners() {
  $("#new-message-form").on("submit", function(event) {
    //don't submit the form, just extract the needed info
    event.preventDefault();
    createMessage();
  });
}

function createMessage() {
  //get chatroom id
  //get the message's content
  var $messageContent = $("#message-content");
  var content = $messageContent.val();
  $.ajax({
    url: document.URL + '/messages',
    type: 'post',
    data: {content: content}
  })
  .done(function() {
    //clear the input box
    $messageContent.val('');
  });
}

function refreshMessages() {
  //clear the currently displayed messages
  var $messagesDisplay = $("#messages-display");
  //$messagesDisplay.empty();
  //get all the messages
  $.ajax({
    url: document.URL + '/messages',
    type: 'get'
  })
  .done(function(data) {
    for (var i = 0; i < data.length; i++ ) {
      $messagesDisplay.append('<p id="' + data[i].id + '" >' + data[i].content + '</p>');
    }
  });
}


