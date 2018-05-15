<?
if ( $_POST['description'] ) {
	if ( $_POST['description'] === file_get_contents('oldshows.html') ) {
		echo '<p style="padding-bottom:15px;color:blue;">No changes.</p>';
	} else if ( file_put_contents( 'oldshows.html', $_POST['description'] ) ) {
		echo '<p style="padding-bottom:15px;color:green;">Form saved successfully!</p>';
	} else {
		echo '<p style="padding-bottom:15px;color:red"><b>ERROR: something went wrong. Form was not saved. Please click "back" in your browser and try again.</b></p>';
	}
}
?>
<!DOCTYPE html>
<html lang="en" ng-app="manage_rows">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=0.75, maximum-scale=0.75, user-scalable=no">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<META HTTP-EQUIV="EXPIRES" CONTENT="Mon, 22 Jul 2002 11:12:01 GMT">
<meta http-equiv="pragma" content="no-cache" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
	$('textarea').each(function(){
		$(this).redactor({
			autoresize: true,
			minHeight: 600
		});
	});
});
$(document).unbind('keydown').bind('keydown', function (event) {
	var doPrevent = false;
    if (event.keyCode === 8) {
        var d = event.srcElement || event.target;
        if ((d.tagName.toUpperCase() === 'INPUT' && (d.type.toUpperCase() === 'TEXT' || d.type.toUpperCase() === 'PASSWORD' || d.type.toUpperCase() === 'FILE')) || d.tagName.toUpperCase() === 'TEXTAREA') {
            doPrevent = d.readOnly || d.disabled;
        } else {
			if (d.className.indexOf('redactor_editor')) {
            	doPrevent = false;
			} else {
           		doPrevent = true;
			}
        }
    }
    if (doPrevent) {
        event.preventDefault();
    }
});
</script>

<!-- meta custom -->
<title>Edit Old Shows</title>

<!-- textarea -->
<link href="/scripts/redactor/10.0/redactor.css" rel="stylesheet" />
<script src="/scripts/redactor/10.0/redactor.min.js"></script>

</head>
<body>
<sup>Do not press "save" unless you are sure. Do not forget to press "submit" when you're done. :) "Return" key = double line break, "Control (or Command) + Return" = single line break.</sup>
<form method="post" action="">
<div style="margin-bottom:15px;">
    <input type="submit" value="SAVE CHANGES" /> 
    <input type="button" value="Reset" onclick="window.location.href ='/oldshows.php';" />
</div>
<textarea name="description" style="width:100%;height:600px;">
<?= $_POST['description'] ? $_POST['description'] : file_get_contents('oldshows.html'); ?>
</textarea>
</form>
</body>
</html>