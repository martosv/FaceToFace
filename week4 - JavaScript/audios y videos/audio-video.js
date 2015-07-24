var $vid = $("#Toy_3");

$('#the-best').on('click', function() { 
	$vid.prop('src', 'Toy_3.mp4#t=17,21');
} );

$('#restart').on('click', function() { 
	if ($vid[0].play()){
		$vid[0].currentTime = 0;
	} else {
		$vid[0].currentTime = 0;
		$vid[0].play();
	}
} );

var is_reproduction_in_loop = false;
$('#loop-reproduction').on('click', function() { 
	if (is_reproduction_in_loop) {
		$vid.removeAttr('loop');
		$('#loop-reproduction').css("text-decoration", "line-through");
		is_reproduction_in_loop = false;
	} else {
		$vid.attr('loop', 'true');
		$('#loop-reproduction').css("text-decoration", "none");
		is_reproduction_in_loop = true;
	}
} );
