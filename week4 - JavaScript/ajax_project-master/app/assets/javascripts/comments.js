// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function (){
	$('#reload-button').on("click", function(){
		$.ajax({
			type: "GET",
			url: "http://localhost:3000/comments",
			data: "",
			success: function(response){populate_ul(response)},
			error: function(response){alert("Success: false")},
			dataType: "json"
		});
	});


	function addObject(){
	var $author = $("#author").val();
	var $text = $("#text").val();
	var $newcomment = {author: $author, text: $text};
		$.ajax({
			type: "POST",
			url: "http://localhost:3000/comments",
			data: $newcomment,
			success: function(response){console.log("Success: true")},
			error: function(response){console.log("Success: false")},
			dataType: "json"
		});
	};
	
	$("#add-button").on("click", addObject);

	function populate_ul(items){
		$('ul').empty();
		total_length = items.length;
		for (var i = 0; i < total_length; i++){
			$('ul').append('<li>'+ items[i].author + " says: " + items[i].text + '</li>');
		};
	};
});

