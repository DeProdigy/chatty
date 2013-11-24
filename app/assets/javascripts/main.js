$(document).ready(function(){
  addEventListeners();
});

function addEventListeners() {
  $("#submit-message").on("click", function() {
    createMessage();
  });
}

function createMessage() {
  var content = $("#message-content").val();
  $.ajax({
    url: '/messages',
    type: 'post',
    data: {param1: 'value1'}
  })
  .done(function(data) {
    console.log(data);
  });

}