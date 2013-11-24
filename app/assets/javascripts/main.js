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
  var $messageContent = $("#message-content");
  var content = $messageContent.val();
  $.ajax({
    url: document.URL + '/messages',
    type: 'post',
    data: {content: content}
  })
  .done(function() {
    $messageContent.val('');
    refreshMessages();
  });
}

function refreshMessages() {
  //clear the currently displayed messages
  var $messagesDisplay = $("#messages-display");
  $messagesDisplay.empty();
  //get all the messages
  $.ajax({
    url: document.URL + '/messages',
    type: 'get'
  })
  .done(function(data) {
    //display the messages in the same div
    // console.log(data);
    //data[i].content
    for (var i = 0; i < data.length; i++ ) {
      $messagesDisplay.append('<p>' + data[i].content + '</p>');
    }
  });
}


