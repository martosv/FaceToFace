$('#gmail-window').hide();

$('#button-redactar').on("click", function(){ $('#gmail-window').show(); });

$('#desaparecer').on("click", function(){ $('#gmail-window').hide(); });

var maximizar = true;
$('#minimizar').on("click", maxMinimizar);

function maxMinimizar() { 
	if (maximizar){
		$('#gmail-window').animate({
			height: "45px",
		}, 'slow');
		maximizar = false;
	} else {
		$('#gmail-window').animate({
			height: "80%",
		}, 'slow');
		maximizar = true;
	}
}

$('.button-section').on("click", function(){
	$('.button-section').removeClass('selected-bandeja');
	$(this).addClass('selected-bandeja');
})