	$('video').parent().click(function () {
	    if($(this).find("video").get(0).paused){
	        $(this).find("video").get(0).play();
	        $(this).find(".playpause").fadeOut();
	    }else{
	       $(this).find("video").get(0).pause();
	        $(this).find(".playpause").fadeIn();
	    }
	});
	$(window).on('load, scroll', function(){
		$('[scrollplay]').each(function(){
			if (isVideoInView($(this)[0])) {
				$(this)[0].play();
			} else {
				$(this)[0].pause();
			}
		})
	});
	function isVideoInView(video) {
		var middle = (window.innerHeight || document.documentElement.clientHeight) * (2/5);
		var rect = video.getBoundingClientRect();
		if (
			rect.top < middle && 
			rect.top+video.clientHeight >= middle
		) {
			return true;
		}
	}
	$(document).ready(function(){
		$('.cycle-slideshow').each(function(){
			$(this).cycle();
			$(this)[0].play = function(){ try { $(this).cycle('resume'); } catch(e){} }
			$(this)[0].pause = function(){ try { $(this).cycle('pause'); } catch(e){} }
			$(this).cycle('pause');
		})
	});
	function scrollToTopCode(){
		$('html, body').animate({
			scrollTop: $('a[name="scrollToTopCode"]').eq(0).offset().top
		}, 2000);
	}
	function scrollToCode(){
		$('html, body').animate({
			scrollTop: $('a[name="scrollToCode"]').eq(0).offset().top
		}, 2000);
	}
	function scrollToMe(){
		$('html, body').animate({
			scrollTop: 100000
		}, 2000);
	}
	function scrollToTop(){
		$('html, body').animate({
			scrollTop: 0
		}, 2000);
	}