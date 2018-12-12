<? require_once('data.php');
?><!DOCTYPE html>
<html>
<head profile='http://www.w3.org/2005/10/profile'>

<!-- Meta Tags -->
<title><?=$site['title'];?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="icon" href="/gfx/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/gfx/content/favicon.ico" type="image/x-icon" />
<meta name="thumbnail" content="http://carteblanchejazzband.com/gfx/layout/thumb.jpg" />
<meta property="og:image" content="http://carteblanchejazzband.com/gfx/layout/thumb.jpg" />
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1,maximum-scale=1" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic' rel='stylesheet' type='text/css'>

<!-- Scripts -->
<script type="text/javascript" charset="utf-8" src="scripts/jquery_10.js"></script>
<script type="text/javascript" charset="utf-8" src="scripts/responsive.php"></script>
<script type="text/javascript" charset="utf-8" src="scripts/jquery_easing.js"></script>

<!-- Style -->
<link rel="stylesheet" href="/scripts/style.css" type="text/css" media="all" charset="utf-8" />

<!-- JPlayer
<link href="/scripts/jplayer/jplayer.pink.flag.css" rel="stylesheet" type="text/css" media="all" charset="utf-8" />
<script type="text/javascript" src="/scripts/jplayer/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="/scripts/jplayer/jplayer.playlist.min.js"></script>
<script type="text/javascript" src="/scripts/vjquery.jplayer.inspector.js"></script>
 -->

<!-- Body -->
<!--[if lt IE 7 ]> <body class="ie678 ie67 ie6 ie"><![endif]-->
<!--[if IE 7 ]> <body class="ie678 ie67 ie7 ie notie6"><![endif]-->
<!--[if IE 8 ]> <body class="ie678 ie78 ie8 ie notie6"><![endif]-->
<!--[if IE 9 ]> <body class="ie6789 ie789 ie89 ie9 ie notie6"><![endif]-->
<!--[if !IE]>--> <body class="standard notie6"> <!--<![endif]-->
<div id="body">

<div id="splash"></div>
<img id="stage_background" class="stage_image" src="/gfx/layout/stage_background.gif" style="background:#1d1604;" />
<div class="page under">
    
    <div class="acts">
        <div class="act_spacer act"><img class="over" src="/gfx/layout/act_spacer.png" /></div>
        <div class="act_four act"><div class="title"><?=$site['page1']['title'];?></div><img class="over" src="/gfx/layout/white_four.png" /><img class="under" src="/gfx/layout/black_four.png" /></div>
        <div class="act_two act"><div class="title"><?=$site['page2']['title'];?></div><img class="over" src="/gfx/layout/white_two.png" /><img class="under" src="/gfx/layout/black_two.png" /></div>
        <div class="act_one act"><div class="title"><?=$site['page3']['title'];?></div><img class="over" src="/gfx/layout/white_one.png" /><img class="under" src="/gfx/layout/black_one.png" /></div>
        <div class="act_three act"><div class="title"><?=$site['page4']['title'];?></div><img class="over" src="/gfx/layout/white_three.png" /><img class="under" src="/gfx/layout/black_three.png" /></div>
        <div class="act_six act"><div class="title"><?=$site['page5']['title'];?></div><img class="over" src="/gfx/layout/white_six.png" /><img class="under" src="/gfx/layout/black_six.png" /></div>
        <div class="act_five act"><div class="title"><?=$site['page6']['title'];?></div><img class="over" src="/gfx/layout/white_five.png" /><img class="under" src="/gfx/layout/black_five.png" /></div>
    </div>
	
</div>
<img id="stage_curtain" class="stage_image" src="/gfx/layout/stage_curtain.gif" />
<img id="stage_foreground" class="stage_image" src="/gfx/layout/stage_foreground.gif" />
<img id="full_spotlight" class="full_image" src="/gfx/layout/full_spotlight.png" />
<div id="overlay"></div>
<div class="page over">
    
    <a id="back" href="javascript:;"></a>
    
    <div id="board0" class="board"><div class="content">
			<?=$site['description'];?>
    </div></div>
    
    <div class="acts">
        <div class="act_spacer act"><img class="" src="/gfx/layout/act_spacer.png" /></div>
        <div class="act_four act"><img class="" src="/gfx/layout/act_spacer.png" /><div class="title"><?=$bio[0]['title'];?></div></div>
        <div class="act_two act"><img class="" src="/gfx/layout/act_spacer.png" /><div class="title"><?=$bio[1]['title'];?></div></div>
        <div class="act_one act"><img class="" src="/gfx/layout/act_spacer.png" /><div class="title"><?=$bio[2]['title'];?></div></div>
        <div class="act_three act"><img class="" src="/gfx/layout/act_spacer.png" /><div class="title"><?=$bio[3]['title'];?></div></div>
        <div class="act_six act"><img class="" src="/gfx/layout/act_spacer.png" /><div class="title"><?=$bio[4]['title'];?></div></div>
        <div class="act_five act"><img class="" src="/gfx/layout/act_spacer.png" /><div class="title"><?=$bio[5]['title'];?></div></div>
    </div>
    
    <div id="board1" class="board"><div class="content">
			<?=$bio[0]['description'];?>
    </div></div>
    <div id="board2" class="board"><div class="content">
			<?=$bio[1]['description'];?>
    </div></div>
    <div id="board3" class="board"><div class="content">
			<?=$bio[2]['description'];?>
    </div></div>
    <div id="board4" class="board"><div class="content">
			<?=$bio[3]['description'];?>
    </div></div>
    <div id="board5" class="board"><div class="content">
			<?=$bio[4]['description'];?>
    </div></div>
    <div id="board6" class="board"><div class="content">
			<?=$bio[5]['description'];?>
    </div></div>
    
    <a id="play" href="javascript:;" onclick="$('.act').removeClass('selected');$('.board').css('display','none');$('#boardplay').css('display','block');$('#back').show();"></a>
    <a id="contact" href="javascript:;" onclick="$('.act').removeClass('selected');$('.board').css('display','none');$('#boardcontact').css('display','block');$('#back').show();"></a>
    <a id="shop" href="javascript:;" onclick="$('.act').removeClass('selected');$('.board').css('display','none');$('#boardshop').css('display','block');$('#back').show();"></a>
    
		<a id="button_facebook" href="http://www.facebook.com/carteblanchejazzband" target="_blank"><img src="/gfx/icons/fb.png" /></a>
		<!-- onclick="window.open('http://www.facebook.com/sharer.php?s=100&amp;p[title]=<?php echo $fbtitle;?>&amp;p[summary]=<?php echo $fbsummary;?>&amp;p[url]=<?php echo $fburl; ?>&amp;&p[images][0]=<?php echo $fbimage;?>', 'sharer', 'toolbar=0,status=0,width=620,height=280');" -->
		<a id="button_youtube" href="http://www.youtube.com/carteblanchevintage" target="_blank"><img src="/gfx/icons/yt.png" /></a>
    <a id="button_itunes" href="http://www.cdbaby.com/cd/carteblanche2" target="_blank"><img src="/gfx/icons/cd.png" /></a>
		
    <img id="page_banner" src="/gfx/layout/web_logo.png" onclick="javascript:act_start();" />
    <div id="page_title"><?=$site['summary'];?></div>
    
    <div id="page_1" class="page_banner">
        <a id="close" href="javascript:banner_close();"></a>
        <div id="content" style="overflow:hidden;">
					<div id="slides" style="margin-top:2.5%;">
					<? foreach ($site['page1']['images'] as $img) { ?>
						<img src="<?=$img['src'];?>" />
					<? } ?>
					<a href="javascript:;" class="prev">&laquo; prev</a>
					<a href="javascript:;" class="next" style="float:right;">next &raquo;</a>
					</div>
  				<script src="/scripts/cycle.js"></script>
					<script>
					$(function(){
						$("#slides").cycle({
							'prev':'.prev',
							'next':'.next'
						});
					});
					</script>
        </div>
    </div>

    <div id="page_2" class="page_banner">
        <a id="close" href="javascript:banner_close();"></a>
        <div id="content">
        </div>
    </div>

    <div id="page_3" class="page_banner">
        <a id="close" href="javascript:banner_close();"></a>
        <div id="content">
					<?= $site['page3']['description']; ?>
        </div>
    </div>
    
    <div id="page_4" class="page_banner">
				<!-- Begin MailChimp Signup Form -->
				<span id="mc_embed_signup" style="position:absolute;">
				<form action="//carteblanchejazzband.us8.list-manage.com/subscribe/post?u=129b3064633748b63f9d93a22&amp;id=959261aacc" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
						<span id="mc_embed_signup_scroll">
					<span class="mc-field-group">
					Subscribe to our mailing list: 
						<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Email address">
					</span>
					<span class="mc-field-group mc-field-name">
						<input type="text" value="" name="FNAME" class="" id="mce-FNAME" placeholder="First name">
					</span>
					<span class="mc-field-group mc-field-name">
						<input type="text" value="" name="LNAME" class="" id="mce-LNAME" placeholder="Last name">
					</span>
					<span id="mce-responses" class="clear">
						<span class="response" id="mce-error-response" style="display:none"></span>
						<span class="response" id="mce-success-response" style="display:none"></span>
					</span>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
						<span style="position: absolute; left: -5000px;"><input type="text" name="b_129b3064633748b63f9d93a22_959261aacc" tabindex="-1" value=""></span>
						<span class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></span>
						</span>
				</form>
				</span>
				<!--End mc_embed_signup-->
				
        <a id="close" href="javascript:banner_close();"></a>
        <div id="content">
        </div>
    </div>
    
    <div id="page_5" class="page_banner">
				<!-- Begin MailChimp Signup Form -->
				<span id="mc_embed_signup" style="position:absolute;">
				<form action="//carteblanchejazzband.us8.list-manage.com/subscribe/post?u=129b3064633748b63f9d93a22&amp;id=959261aacc" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
						<span id="mc_embed_signup_scroll">
					<span class="mc-field-group">
					Subscribe to our mailing list: 
						<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Email address">
					</span>
					<span class="mc-field-group mc-field-name">
						<input type="text" value="" name="FNAME" class="" id="mce-FNAME" placeholder="First name">
					</span>
					<span class="mc-field-group mc-field-name">
						<input type="text" value="" name="LNAME" class="" id="mce-LNAME" placeholder="Last name">
					</span>
					<span id="mce-responses" class="clear">
						<span class="response" id="mce-error-response" style="display:none"></span>
						<span class="response" id="mce-success-response" style="display:none"></span>
					</span>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
						<span style="position: absolute; left: -5000px;"><input type="text" name="b_129b3064633748b63f9d93a22_959261aacc" tabindex="-1" value=""></span>
						<span class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></span>
						</span>
				</form>
				</span>
				<!--End mc_embed_signup-->
				
        <a id="close" href="javascript:banner_close();"></a>
        <div id="content">
					<?= $site['page5']['description']; ?>
        </div>
    </div>
    
    <div id="page_6" class="page_banner">
				<!-- Begin MailChimp Signup Form -->
				<span id="mc_embed_signup" style="position:absolute;">
				<form action="//carteblanchejazzband.us8.list-manage.com/subscribe/post?u=129b3064633748b63f9d93a22&amp;id=959261aacc" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
						<span id="mc_embed_signup_scroll">
					<span class="mc-field-group">
					Subscribe to our mailing list: 
						<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Email address">
					</span>
					<span class="mc-field-group mc-field-name">
						<input type="text" value="" name="FNAME" class="" id="mce-FNAME" placeholder="First name">
					</span>
					<span class="mc-field-group mc-field-name">
						<input type="text" value="" name="LNAME" class="" id="mce-LNAME" placeholder="Last name">
					</span>
					<span id="mce-responses" class="clear">
						<span class="response" id="mce-error-response" style="display:none"></span>
						<span class="response" id="mce-success-response" style="display:none"></span>
					</span>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
						<span style="position: absolute; left: -5000px;"><input type="text" name="b_129b3064633748b63f9d93a22_959261aacc" tabindex="-1" value=""></span>
						<span class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></span>
						</span>
				</form>
				</span>
				<!--End mc_embed_signup-->
				
        <a id="close" href="javascript:banner_close();"></a>
        <div id="content">
					<?= $site['page6']['description']; ?>
        </div>
    </div>
    
</div>
</div>
</body>
</html>