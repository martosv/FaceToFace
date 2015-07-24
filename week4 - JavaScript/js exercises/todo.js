// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem(itemText) {
    var newTask = document.createElement("li");
    var txt = document.createTextNode(itemText);
    newTask.appendChild(txt);
    console.log(txt)

    document.getElementsByClassName("todo-list-items")[0].appendChild(newTask);
  }

  saveButton.onclick = function() {
    var inItemText = document.getElementById("todo-input").value
    var itemText = inItemText;
    addToDoItem(itemText)
  }
    //for (var i = 0, l = 100; i < l; i++) {
    //  list.appendChild(newTask);
    //}
    //var task = document.createElement('hr');
    //document.body.appendChild(task);

    //var paragraphs = document.getElementsByClassName('todo-list-items');
    //var firstParagraph = document.querySelector('todo-list-items:nth-of-type(1)');
    //firstParagraph.parentNode.insertBefore(newTask, firstParagraph);
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field
  



  function markAsDone() {
    // add your code here
    // this should remove the FIRST li item from to-do list
    // and add it to the done list (with the strikethrough!)
  }


