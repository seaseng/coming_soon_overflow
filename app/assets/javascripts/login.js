$(document).ready(function(){
	var errorMessage = $('#flash_notice');
	if (errorMessage){
		$("#flash_notice").effect("bounce", {distance: 20, times: 10},"slow").fadeOut(2600,"linear");
	};
});