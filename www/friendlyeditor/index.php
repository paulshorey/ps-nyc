<?php include($_SERVER['DOCUMENT_ROOT'].'/publisher/index.php'); ?>

<!-- statistics -->
<script type="text/javascript" src="http://abcstatistics.com/save.php?account=paulshorey&site=userfriendlycms.com&category=<?=$page['type'];?>&url=<?=urlencode($_SERVER['REDIRECT_URL']?$_SERVER['REDIRECT_URL']:'/');?>&user=<?=urlencode($_SERVER['REMOTE_ADDR']);?>"></script>