<!--
<iframe src="//player.vimeo.com/video/75369426" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen frameborder="0" allowfullscreen style="position:absolute;width:100%;height:100%;"></iframe>
-->

<div id="banner_videos">
    <p>
        <a href="javascript:;" onclick="$(this).parent().siblings('iframe').attr('src','//player.vimeo.com/video/107431558'); $(this).siblings().removeClass('selected'); $(this).addClass('selected');" class="selected">Video #1</a> | 
        <a href="javascript:;" onclick="$(this).parent().siblings('iframe').attr('src','//player.vimeo.com/video/75369426'); $(this).siblings().removeClass('selected'); $(this).addClass('selected');">Video #2</a>
    </p>
    <iframe src="//player.vimeo.com/video/107431558" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen frameborder="0" allowfullscreen style="position:absolute;width:100%;height:100%;"></iframe>
</div>

<style>
	#banner_videos p {position:absolute;z-index:999999999;display:block;top:-30px;}
	#banner_videos p a.selected {font-weight:bold;text-decoration:underline;}
</style>
<script>
$(document).ready(function(){
	$('#banner_videos').parents('#content').css('overflow','visible');
});
</script>