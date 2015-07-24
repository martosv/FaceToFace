// Change the width of the h1 element
// $('h1').width('50%');

// Change the font-size up to 120%
//$('*').css('font-size', '120%');

// Add the hightlighted class to the elements that has the 'new' class
//$('.new').addClass('highlighted');

// Remove the title class from h1
// $('h1').removeClass('title');

// Specify the age range in 20-30 css selectors
/*
$('option[value="+40"]').removeAttr('selected');
$('option[value="20-30"]').attr('selected', "selected");
*/

// Specify the age range in 20-30 using travesing filters
//$('#age-range').val('20-30');

// Uncheck the "I love learning" checkbox
//$('#love').removeAttr('checked');

// Select yellow as a favourite color
/*
$('#color-red').removeAttr('checked');
$('#color-yellow').attr('checked', "checked");

o solo:

$('#color-yellow').attr('checked', true);
*/

// Write the selected name of the input in the result div
/*
var $input = $('#name').text('value');
$('#result').append($input);
*/

// Write the text of the selected age in the result div
/*
var $input = $("option[selected='selected']").text();
$('#result').append($input);
*/

// Writes the number of data likes of jquery-ui in the result div
/*
var $input = $("#jquery-ui").data('likes');
$('#result').append($input);
*/

// Adds 100 to the number of likes and show it in the result div
/*
var $input = $("#jquery-ui").data('likes') + 100;
$('#result').append($input);
*/

// Show the absolute position of result in the console
//$('#result').offset();

// Move the result to the position 100 top and 150 left
//$('#result').offset({top:100, left:150});

// Change the width and height of the result up to 300px
//$('#result').width('300px').height('300px');

// Add "(User interface)" after "JQueryUI"
//$("#jquery-ui").append(" (User interface)");

// Add a li element with the text "Future JQ" after jQueryUI
// $("#jquery-ui").after("<li>Future JQ</li>");

// Add div containers with the class bordered around every li
//$("li").wrap("<div class='bordered'>");

// Add a div container with the class bordered around all li
//$("li").wrapAll("<div class='bordered'>");

// Remove the result div
//$("#result").remove();


/**
 *  Final round
 */

// Set the names of the colours according to their color
 /*
var length = $("input[name='color']").length;

for (var i = 0; i < length; i++){
	var $color = $("input[name='color']").eq(i).attr('value');
	$("input[name='color']").eq(i).parent().css('color', $color);
}
*/


// Add links to the li elements, the url is the name ended with .com
/*
$('li > a').eq(0).attr('href', 'http://www.' + $('li').eq(0).text() + '.com')
length = $('li').length;

for (var i = 1; i < length; i++){
	var $text ='<a href="http://www.' + $('li').eq(i).text() + '.com">';
	$('li').eq(i).wrapInner($text);
}
*/