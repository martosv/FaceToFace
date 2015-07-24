$(document).ready( function() {

	function searchMusic(){
		var $singer = $("#search-singer").val();
		$.ajax({
			type: "GET",
			url: "https://api.spotify.com/v1/search?type=artist&query=" + $singer,
			data: "",
			success: function(response){alert("Success: true"); populate_ul(response)},
			error: function(response){alert("Success: false")}, 
			dataType: "json"
		});
	}

	$('#search-button').on("click", searchMusic);

	function populate_ul(singers){
		$('ul').empty();
		var items = singers.artists.items;
		total_length = items.length;

		for (var i = 0; i < total_length; i++){
			var images = items[i].images;
			length_images = images.length;
			$('ul').append('<li>'+ items[i].name + ":" + '</li>');

			if (length_images > 0) {
				var $url = images[0].url;
				$('li').eq(i).after('<img src="' + $url + '">');
			};
		};
	};
})