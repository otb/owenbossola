/* Author: 

    Owen Bossola

*/

(function($) {

	var info = $('#info');

	$('.info')
		.click(function() {
			if (info.hasClass('slidein')) {
				info.removeClass('slidein');
				info.addClass('slideout');
			}
			else {
				info.removeClass('slideout');
				info.addClass('slidein');
			}
		});

	$('#info')
		.mouseleave(function() {
			$(this)
				.removeClass('slidein')
				.addClass('slideout');
		});

})(window.jQuery);