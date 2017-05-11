// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener('DOMContentLoaded', function() {
  console.log('loaded');

  var checkedAll = document.getElementById('checkAll')

  // checkedAll.addEventListener('click', function(e) {
  //   e.preventDefault()
  //   console.log('checked');
  // })

  $("#checkAll").click(function(){
    // console.log('checked');
    AllDone();
  });
})

document.addEventListener('DOMContentLoaded', function(){
  console.log('bitch');

  $('.add-todo').on('keypress', function(e) {
    // e.preventDefault
    if (e.which === 13) {
      if($(this).val() !== ''){
        var todo = $(this).val();
        createTodo(todo);
        countTodos();
      }
      else{

      }
    }
    console.log("longstyle");
  });

  $('.todolist').on('change','#sortable li input[type="checkbox"]',function(){
    if($(this).prop('checked')){
      var doneItem = $(this).parent().parent().find('label').text();
      $(this).parent().parent().parent().addClass('remove');
      done(doneItem);
      countTodos();
    }
    console.log("operate");
  });
})

document.addEventListener('DOMContentLoaded', function(){
  $('.todolist').on('click','.remove-item',function(){
    removeItem(this);
  });
  console.log("Lets GOOOO");
})


function countTodos(){
  var count = $("#sortable li").length;
  $('.count-todos').html(count);
  console.log("Yo");
}



function createTodo(text){
  var markup = '<li class="ui-state-default"><div class="checkbox"><label><input type="checkbox" value="" />'+ text +'</label></div></li>';
  $('#sortable').append(markup);
  $('.add-todo').val('');
  console.log("DSHS");
}


function done(doneItem){
  var done = doneItem;
  var markup = '<li>'+ done +'<button class="btn btn-default btn-xs pull-right  remove-item"><span class="glyphicon glyphicon-remove"></span></button></li>';
  $('#done-items').append(markup);
  $('.remove').remove();
  console.log("MMHm");
}





function AllDone(){
  var myArray = [];

  console.log('all done clicked');

  $('#sortable li').each( function() {
    myArray.push($(this).text());
  });


  for (i = 0; i < myArray.length; i++) {
    $('#done-items').append('<li>' + myArray[i] + '<button class="btn btn-default btn-xs pull-right  remove-item"><span class="glyphicon glyphicon-remove"></span></button></li>');
  }


  $('#sortable li').remove();
  countTodos();
}


function removeItem(element){
  $(element).parent().remove();
}
