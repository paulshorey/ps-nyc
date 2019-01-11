<?php /* Smarty version 2.6.22, created on 2010-07-14 15:53:32
         compiled from publisher/core/items/editor+additem.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getitem', 'publisher/core/items/editor additem.html', 43, false),array('function', 'getitems', 'publisher/core/items/editor additem.html', 81, false),array('function', 'getpages', 'publisher/core/items/editor additem.html', 459, false),array('modifier', 'date', 'publisher/core/items/editor additem.html', 472, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<div id="screen">
<table border="0" width="100%" height="100%"><tr><td align="center" valign="middle">
<img src="/publisher/scripts/thickbox/loadingAnimation.gif" id="valignthis">
</td></tr></table>
</div>

<div id="page">
<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/textfile.png" border="0" />
    <h3>New entry</h3>
        <!-- buttons -->
        <div class="buttons">
        	<!-- submit -->
            <input type="button" id="submit" value="Submit" class="button" onClick="showscreen();document.form_1.submit();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
        	<!-- uploading -->
            <input type="button" id="uploading" value="Uploading..." class="button" style="display:none;" />
            <!-- reset -->
            <input type="button" value="Reset" class="button" onClick="window.location.reload();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
            <!-- cancel -->
            <input type="button" value="Exit" class="button" onClick="self.parent.tb_remove();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
        </div>
</div>

<!-- MESSAGE -->
<?php if ($this->_tpl_vars['page']['message']): ?>
<div id="message">
	<?php echo $this->_tpl_vars['page']['message']; ?>

</div>
<?php endif; ?>

<!-- ERROR -->
<?php if ($this->_tpl_vars['page']['error']): ?>
<div id="error">
	<?php echo $this->_tpl_vars['page']['error']; ?>

</div>
<?php endif; ?>

<!-- MIDDLE -->
<?php echo smarty_function_getitem(array('id' => $this->_tpl_vars['page']['item'],'name' => 'item'), $this);?>

<div id="middle">

	<!-- FORM -->
    <form action="publisher/core/items/editor additem.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="xid" id="xid" value="<?php echo $this->_tpl_vars['xitem']['id']; ?>
" />
    <input type="hidden" name="type" id="type" value="<?php echo $this->_tpl_vars['page']['type']; ?>
" />
    <h5>Add a new article, product or photo.</h5>
    
    <!-- name -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Title </a><a href="javascript:return;" class="helpbox">
      This will be the title of the article.
      </a>
      </p>
    <input type="text" name="name" id="name" style="width:50%;" value="<?php if ($this->_tpl_vars['post']['name']): ?><?php echo $this->_tpl_vars['post']['name']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['name']; ?>
<?php endif; ?>" />
    </div>
    
    <!-- subtitle -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Subtitle </a><a href="javascript:return;" class="helpbox">
      This will appear below the title.
      </a>
      </p>
    <input type="text" name="text3" id="text3" style="width:80%;" value="<?php if ($this->_tpl_vars['post']['text3']): ?><?php echo $this->_tpl_vars['post']['text3']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['text3']; ?>
<?php endif; ?>" />
    </div>
    
    <!-- category -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Category </a><a href="javascript:return;" class="helpbox">
      Items on a page will be grouped by categories. You may see these categories listed in a dropdown menu or elsewhere in the page.
      </a>
      </p>
    <?php if (! $this->_tpl_vars['post']): ?>
    <select name="category" id="category_select"  onchange="if(this.value=='new category'){$('#category').show('slow');$('#category').attr('name','category');$(this).hide();}">
    <?php echo smarty_function_getitems(array('page' => "",'category' => "",'item' => "",'orderby' => 'category desc','unique' => 'category','name' => 'categories'), $this);?>

    <?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['val']):
?>
    <?php if ($this->_tpl_vars['val']['category'] != ""): ?><option value="<?php echo $this->_tpl_vars['val']['category']; ?>
" <?php if ($this->_tpl_vars['item']['category'] == $this->_tpl_vars['val']['category']): ?>selected="selected"<?php endif; ?>><?php echo $this->_tpl_vars['val']['category']; ?>
</option><?php endif; ?>
    <?php endforeach; endif; unset($_from); ?>
    <option value="new category">----------</option>
    <option value="new category">New Category</option>
    </select>
    <input type="text" name="xcategory" id="category" value="<?php if ($this->_tpl_vars['post']['category']): ?><?php echo $this->_tpl_vars['post']['category']; ?>
<?php endif; ?>" style="display:none;" />
    <?php else: ?>
    <input type="text" name="category" id="category" value="<?php if ($this->_tpl_vars['post']['category']): ?><?php echo $this->_tpl_vars['post']['category']; ?>
<?php else: ?><?php if ($this->_tpl_vars['item']['category']): ?><?php echo $this->_tpl_vars['item']['category']; ?>
<?php else: ?><?php endif; ?><?php endif; ?>" />
    <?php endif; ?>
    </div>
    
    
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Images </a><a href="javascript:return;" class="helpbox">
		<h6>
        - Add up to 5 images/prices/descriptions for this article. At checkout, the shopper will be able to choose from these 5 options. For example, the first image can be a 12x16 print in a black frame. The second image can be the same print in a different frame. The third image can be a larger print in another frame. Etc.
        </h6><h6>
        - Image files can be no larger than 5mb, and no larger than 4000px in any direction. If you want to upload images from your digital camera, take the pictures on the lowest setting, or use a program like Photoshop to reduce their size.
        </h6><h6>
        - If your browser has the latest Flash Plugin, you'll be able to upload images instantly. Otherwise, please be patient after submitting the form.
        </h6><h6>
        - Check "do not resize" if your image is a scan of a document or magazine. This will keep the text large and readable.
        </h6><h6>
        - If you want to add a video, add an image to be used as the preview. The video can be ".FLV" (preffered) or ".MOV" format. Large videos upto 200mb will work fine, but may take upto 15 minutes to upload depending on your connection speed.
        </h6>
      </a>
      </p>
    
    <!-- Image1 -->
    <div id="details1">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 2px 0;">
      <tr>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <div id="images">
        <div class="image_row" style="display:block">
        <?php if ($this->_tpl_vars['xitem']['image1']): ?>
        <div id="image1_box" class="image"><img id="image1_preview" src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['xitem']['image1']; ?>
" width="100%" /></div>
        <?php else: ?>
        <div id="image1_box" class="image"><img id="image1_preview" src="" width="100%" /></div>
        <?php endif; ?>
        </div>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="image1_text">Image</p>
        <input type="file" name="image[]" id="image1" size="1" style="width:130px;" onChange="$('#image1_text').text('Selected');$('#delete_image1').attr('value','');" value="<?php echo $this->_tpl_vars['post']['image1']; ?>
" />
        <input type="hidden" name="uploaded_image1" id="uploaded_image1" value="" />
        <p><input name="donotresize_image1" type="checkbox" value="donotresize" style="padding:0;margin:0;" /> do not resize</p>
        </div>
		</td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="video1_text">Video</p>
        <input type="file" name="video[]" id="video1" size="1" style="width:130px;" onChange="$('#video1_text').text('Selected');$('#delete_video1').attr('checked','');" value="<?php echo $this->_tpl_vars['post']['video1']; ?>
" />
        <input type="hidden" name="uploaded_video1" id="uploaded_video1" value="" />
        <p><input name="delete_video1" id="delete_video1" type="checkbox" value="delete" style="padding:1px;margin:0;" /> delete file</p>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Price 
        <input type="text" name="price1" id="price1" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['price1']): ?><?php echo $this->_tpl_vars['post']['price1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['price1']; ?>
<?php endif; ?>" />
        </p>
        <p>Qty 
        <input type="text" name="qty1" id="qty1" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['qty1']): ?><?php echo $this->_tpl_vars['post']['qty1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['qty1']; ?>
<?php endif; ?>" />
        </p>
        <p>Ship 
        <input type="text" name="shp1" id="shp1" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['shp1']): ?><?php echo $this->_tpl_vars['post']['shp1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['shp1']; ?>
<?php endif; ?>" />
        </p>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Description</p>
        <input type="text" name="caption1" id="caption1" style="width:290px;" value="<?php if ($this->_tpl_vars['post']['caption1']): ?><?php echo $this->_tpl_vars['post']['caption1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['caption1']; ?>
<?php endif; ?>" />
        <div style="margin:4px 0 0 0;">
        <span id="showdetails2" onMouseUp="$('#details2').show('slow');$(this).css('visibility','hidden');$('#delete_image2').attr({'checked' : ''});$('#delete_video2').attr({'checked' : ''});$('#checkdetails2').attr({'checked' : ''});">
        <a href="#" style="text-decoration:none;">Add 2nd variation</a> &nbsp;
        </span>
        <span onMouseUp="$('#xdetails1').hide('slow');$('#showdetails1').css({'display':'inline', 'visibility':'visible'});$('#image1').attr('value','');$('#image1_preview').fadeOut('slow');$('#delete_image1').attr('value','delete');$('#video1').attr('value','');$('#delete_video1').attr('checked','checked');$('#price1').attr('value','');$('#qty1').attr('value','');$('#shp1').attr('value','');$('#caption1').attr('value','');$('#checkdetails1').attr('checked','');">
        <input id="delete_image1" name="delete_image1" type="hidden" style="padding:1px;margin:0;" />
        <a href="#" style="text-decoration:none;">Remove image</a> &nbsp;
        </span>
        <?php if (! $this->_tpl_vars['xitem']['image2']): ?>
		<script>$(document).ready(function() {$('#showdetails2').show('slow');$('#details2').hide();})</script>
        <?php else: ?>
        <script>$(document).ready(function() {$('#showdetails2').hide();})</script>
        <?php endif; ?>
        </div>
        </td>
      </tr>
    </table>
    </div>
    
    <!-- Image2 -->
    <div id="details2">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 2px 0;">
      <tr>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <div id="images">
        <div class="image_row" style="display:block">
        <?php if ($this->_tpl_vars['xitem']['image2']): ?>
        <div id="image2_box" class="image"><img id="image2_preview" src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['xitem']['image2']; ?>
" width="100%" /></div>
        <?php else: ?>
        <div id="image2_box" class="image"><img id="image2_preview" src="" width="100%" /></div>
        <?php endif; ?>
        </div>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="image2_text">Image</p>
        <input type="file" name="image[]" id="image2" size="1" style="width:130px;" onChange="$('#image2_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['image2']; ?>
" />
        <input type="hidden" name="uploaded_image2" id="uploaded_image2" value="" />
        <p><input name="donotresize_image2" type="checkbox" value="donotresize" style="padding:0;margin:0;" /> do not resize</p>
        </div>
		</td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="video2_text">Video</p>
        <input type="file" name="video[]" id="video2" size="1" style="width:130px;" onChange="$('#video2_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['video2']; ?>
" />
        <input type="hidden" name="uploaded_video2" id="uploaded_video2" value="" />
        <p><input name="delete_video2" id="delete_video2" type="checkbox" value="delete" style="padding:1px;margin:0;" /> delete file</p>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Price 
        <input type="text" name="price2" id="price2" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['price2']): ?><?php echo $this->_tpl_vars['post']['price2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['price2']; ?>
<?php endif; ?>" />
        </p>
        <p>Qty 
        <input type="text" name="qty2" id="qty2" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['qty2']): ?><?php echo $this->_tpl_vars['post']['qty2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['qty2']; ?>
<?php endif; ?>" />
        </p>
        <p>Ship 
        <input type="text" name="shp2" id="shp2" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['shp2']): ?><?php echo $this->_tpl_vars['post']['shp2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['shp2']; ?>
<?php endif; ?>" />
        </p>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Description</p>
        <input type="text" name="caption2" id="caption2" style="width:290px;" value="<?php if ($this->_tpl_vars['post']['caption2']): ?><?php echo $this->_tpl_vars['post']['caption2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['caption2']; ?>
<?php endif; ?>" />
        <div style="margin:4px 0 0 0;">
        <span id="showdetails3" onMouseUp="$('#details3').show('slow');$(this).css('visibility','hidden');$('#delete_image3').attr({'checked' : ''});$('#delete_video3').attr({'checked' : ''});$('#checkdetails3').attr({'checked' : ''});">
        <a href="#" style="text-decoration:none;">Add 3rd variation</a> &nbsp;
        </span>
        <span onMouseUp="$('#details2').hide('slow');$('#showdetails2').css({'display':'inline', 'visibility':'visible'});$('#image2').attr('value','');$('#delete_image2').attr('value','delete');$('#video2').attr('value','');$('#delete_video2').attr('checked','checked');$('#price2').attr('value','');$('#qty2').attr('value','');$('#shp2').attr('value','');$('#caption2').attr('value','');$('#checkdetails2').attr('checked','');">
        <input id="delete_image2" name="delete_image2" type="hidden" style="padding:1px;margin:0;" />
        <a href="#" style="text-decoration:none;">Remove variation</a> &nbsp;
        </span>
        <?php if (! $this->_tpl_vars['xitem']['image3']): ?>
		<script>$(document).ready(function() {$('#showdetails3').show('slow');$('#details3').hide();})</script>
        <?php else: ?>
        <script>$(document).ready(function() {$('#showdetails3').hide();})</script>
        <?php endif; ?>
        </div>
        </td>
      </tr>
    </table>
    </div>
    
    <!-- Image3 -->
    <div id="details3">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 2px 0;">
      <tr>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <div id="images">
        <div class="image_row" style="display:block">
        <?php if ($this->_tpl_vars['xitem']['image3']): ?>
        <div id="image3_box" class="image"><img id="image3_preview" src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['xitem']['image3']; ?>
" width="100%" /></div>
        <?php else: ?>
        <div id="image3_box" class="image"><img id="image3_preview" src="" width="100%" /></div>
        <?php endif; ?>
        </div>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="image3_text">Image</p>
        <input type="file" name="image[]" id="image3" size="1" style="width:130px;" onChange="$('#image3_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['image3']; ?>
" />
        <input type="hidden" name="uploaded_image3" id="uploaded_image3" value="" />
        <p><input name="donotresize_image3" type="checkbox" value="donotresize" style="padding:0;margin:0;" /> do not resize</p>
        </div>
		</td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="video3_text">Video</p>
        <input type="file" name="video[]" id="video3" size="1" value="<?php echo $this->_tpl_vars['post']['video3']; ?>
" />
        <input type="hidden" name="uploaded_video3" id="uploaded_video3" style="width:130px;" onChange="$('#video3_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['video3']; ?>
" />
        <p><input name="delete_video3" id="delete_video3" type="checkbox" value="delete" style="padding:1px;margin:0;" /> delete file</p>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Price 
        <input type="text" name="price3" id="price3" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['price3']): ?><?php echo $this->_tpl_vars['post']['price3']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['price3']; ?>
<?php endif; ?>" />
        </p>
        <p>Qty 
        <input type="text" name="qty3" id="qty3" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['qty3']): ?><?php echo $this->_tpl_vars['post']['qty3']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['qty3']; ?>
<?php endif; ?>" />
        </p>
        <p>Ship 
        <input type="text" name="shp3" id="shp3" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['shp3']): ?><?php echo $this->_tpl_vars['post']['shp3']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['shp3']; ?>
<?php endif; ?>" />
        </p>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Description</p>
        <input type="text" name="caption3" id="caption3" style="width:290px;" value="<?php if ($this->_tpl_vars['post']['caption3']): ?><?php echo $this->_tpl_vars['post']['caption3']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['caption3']; ?>
<?php endif; ?>" />
        <div style="margin:4px 0 0 0;">
        <span id="showdetails4" onMouseUp="$('#details4').show('slow');$(this).css('visibility','hidden');$('#delete_image4').attr({'checked' : ''});$('#delete_video4').attr({'checked' : ''});$('#checkdetails4').attr({'checked' : ''});">
        <a href="#" style="text-decoration:none;">Add 4th variation</a> &nbsp;
        </span>
        <span onMouseUp="$('#details3').hide('slow');$('#showdetails3').css({'display':'inline', 'visibility':'visible'});$('#image3').attr('value','');$('#delete_image3').attr('value','delete');$('#video3').attr('value','');$('#delete_video3').attr('checked','checked');$('#price3').attr('value','');$('#qty3').attr('value','');$('#shp3').attr('value','');$('#caption3').attr('value','');$('#checkdetails3').attr('checked','');">
        <input id="delete_image3" name="delete_image3" type="hidden" style="padding:1px;margin:0;" />
        <a href="#" style="text-decoration:none;">Remove variation</a> &nbsp;
        </span>
        <?php if (! $this->_tpl_vars['xitem']['image4']): ?>
		<script>$(document).ready(function() {$('#showdetails4').show('slow');$('#details4').hide();})</script>
        <?php else: ?>
        <script>$(document).ready(function() {$('#showdetails4').hide();})</script>
        <?php endif; ?>
        </div>
        </td>
      </tr>
    </table>
    </div>
    
    <!-- Image4 -->
    <div id="details4">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 2px 0;">
      <tr>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <div id="images">
        <div class="image_row" style="display:block">
        <?php if ($this->_tpl_vars['xitem']['image4']): ?>
        <div id="image4_box" class="image"><img id="image4_preview" src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['xitem']['image4']; ?>
" width="100%" /></div>
        <?php else: ?>
        <div id="image4_box" class="image"><img id="image4_preview" src="" width="100%" /></div>
        <?php endif; ?>
        </div>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="image4_text">Image</p>
        <input type="file" name="image[]" id="image4" size="1" style="width:130px;" onChange="$('#image4_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['image4']; ?>
" />
        <input type="hidden" name="uploaded_image4" id="uploaded_image4" value="" />
        <p><input name="donotresize_image4" type="checkbox" value="donotresize" style="padding:0;margin:0;" /> do not resize</p>
        </div>
		</td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="video4_text">Video</p>
        <input type="file" name="video[]" id="video4" size="1" value="<?php echo $this->_tpl_vars['post']['video4']; ?>
" />
        <input type="hidden" name="uploaded_video4" id="uploaded_video4" style="width:130px;" onChange="$('#video4_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['video4']; ?>
" />
        <p><input name="delete_video4" id="delete_video4" type="checkbox" value="delete" style="padding:1px;margin:0;" /> delete file</p>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Price 
        <input type="text" name="price4" id="price4" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['price4']): ?><?php echo $this->_tpl_vars['post']['price4']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['price4']; ?>
<?php endif; ?>" />
        </p>
        <p>Qty 
        <input type="text" name="qty4" id="qty4" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['qty4']): ?><?php echo $this->_tpl_vars['post']['qty4']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['qty4']; ?>
<?php endif; ?>" />
        </p>
        <p>Ship 
        <input type="text" name="shp4" id="shp4" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['shp4']): ?><?php echo $this->_tpl_vars['post']['shp4']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['shp4']; ?>
<?php endif; ?>" />
        </p>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Description</p>
        <input type="text" name="caption4" id="caption4" style="width:290px;" value="<?php if ($this->_tpl_vars['post']['caption4']): ?><?php echo $this->_tpl_vars['post']['caption4']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['caption4']; ?>
<?php endif; ?>" />
        <div style="margin:4px 0 0 0;">
        <span id="showdetails5" onMouseUp="$('#details5').show('slow');$(this).css('visibility','hidden');$('#delete_image5').attr({'checked' : ''});$('#delete_video5').attr({'checked' : ''});$('#checkdetails5').attr({'checked' : ''});">
        <a href="#" style="text-decoration:none;">Add 5th variation</a> &nbsp;
        </span>
        <span onMouseUp="$('#details4').hide('slow');$('#showdetails4').css({'display':'inline', 'visibility':'visible'});$('#image4').attr('value','');$('#delete_image4').attr('value','delete');$('#video4').attr('value','');$('#delete_video4').attr('checked','checked');$('#price4').attr('value','');$('#qty4').attr('value','');$('#shp4').attr('value','');$('#caption4').attr('value','');$('#checkdetails4').attr('checked','');">
        <input id="delete_image4" name="delete_image4" type="hidden" style="padding:1px;margin:0;" />
        <a href="#" style="text-decoration:none;">Remove variation</a> &nbsp;
        </span>
        <?php if (! $this->_tpl_vars['xitem']['image5']): ?>
		<script>$(document).ready(function() {$('#showdetails5').show('slow');$('#details5').hide();})</script>
        <?php else: ?>
        <script>$(document).ready(function() {$('#showdetails5').hide();})</script>
        <?php endif; ?>
        </div>
        </td>
      </tr>
    </table>
    </div>
    
    <!-- Image5 -->
    <div id="details5">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:0 0 2px 0;">
      <tr>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <div id="images">
        <div class="image_row" style="display:block">
        <?php if ($this->_tpl_vars['xitem']['image5']): ?>
        <div id="image5_box" class="image"><img id="image5_preview" src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['xitem']['image5']; ?>
" width="100%" /></div>
        <?php else: ?>
        <div id="image5_box" class="image"><img id="image5_preview" src="" width="100%" /></div>
        <?php endif; ?>
        </div>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="image5_text">Image</p>
        <input type="file" name="image[]" id="image5" size="1" style="width:130px;" onChange="$('#image5_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['image5']; ?>
" />
        <input type="hidden" name="uploaded_image5" id="uploaded_image5" value="" />
        <p><input name="donotresize_image5" type="checkbox" value="donotresize" style="padding:0;margin:0;" /> do not resize</p>
        </div>
		</td>
        <td align="left" valign="top" class="button" style="width:130px;padding:4px 6px 6px 6px;">
        <div style="position:absolute;">
        <p id="video5_text">Video</p>
        <input type="file" name="video[]" id="video5" size="1" value="<?php echo $this->_tpl_vars['post']['video5']; ?>
" />
        <input type="hidden" name="uploaded_video5" id="uploaded_video5" style="width:130px;" onChange="$('#video5_text').text('Selected');" value="<?php echo $this->_tpl_vars['post']['video5']; ?>
" />
        <p><input name="delete_video5" id="delete_video5" type="checkbox" value="delete" style="padding:1px;margin:0;" /> delete file</p>
        </div>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Price 
        <input type="text" name="price5" id="price5" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['price5']): ?><?php echo $this->_tpl_vars['post']['price5']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['price5']; ?>
<?php endif; ?>" />
        </p>
        <p>Qty 
        <input type="text" name="qty5" id="qty5" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['qty5']): ?><?php echo $this->_tpl_vars['post']['qty5']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['qty5']; ?>
<?php endif; ?>" />
        </p>
        <p>Ship 
        <input type="text" name="shp5" id="shp5" style="width:40px;" value="<?php if ($this->_tpl_vars['post']['shp5']): ?><?php echo $this->_tpl_vars['post']['shp5']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['shp5']; ?>
<?php endif; ?>" />
        </p>
        </td>
        <td align="left" valign="top" class="button" style="padding:4px 12px 6px 6px;">
        <p>Description</p>
        <input type="text" name="caption5" id="caption5" style="width:290px;" value="<?php if ($this->_tpl_vars['post']['caption5']): ?><?php echo $this->_tpl_vars['post']['caption5']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['caption5']; ?>
<?php endif; ?>" />
        <div style="margin:4px 0 0 0;">
        <span id="showdetails6" onMouseUp="$('#details6').show('slow');$(this).css('visibility','hidden');$('#delete_image6').attr({'checked' : ''});$('#delete_video6').attr({'checked' : ''});$('#checkdetails6').attr({'checked' : ''});">
        <a href="#" style="text-decoration:none;">Add 6th variation</a> &nbsp;
        </span>
        <span onMouseUp="$('#details5').hide('slow');$('#showdetails5').css({'display':'inline', 'visibility':'visible'});$('#image5').attr('value','');$('#delete_image5').attr('value','delete');$('#video5').attr('value','');$('#delete_video5').attr('checked','checked');$('#price5').attr('value','');$('#qty5').attr('value','');$('#shp5').attr('value','');$('#caption5').attr('value','');$('#checkdetails5').attr('checked','');">
        <input id="delete_image5" name="delete_image5" type="hidden" style="padding:1px;margin:0;" />
        <a href="#" style="text-decoration:none;">Remove variation</a> &nbsp;
        </span>
        <?php if ($this->_tpl_vars['xitem']['image6']): ?>
		<script>$(document).ready(function() {$('#showdetails6').show('slow');$('#details6').hide();})</script>
        <?php else: ?>
        <script>$(document).ready(function() {$('#showdetails6').hide();})</script>
        <?php endif; ?>
        </div>
        </td>
      </tr>
    </table>
    </div>
    </div>
    
    <div class="section" style="cursor:hand;cursor:pointer;" onClick="$('#moreoptions').show('slow');$(this).hide('slow');">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">More Options </a><a href="javascript:return;" class="helpbox">
      Add a link, change the page or date...
      </a>
      </p>
    </div>
    
    <div id="moreoptions" style="display:none;">
    <!-- link -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Link </a><a href="javascript:return;" class="helpbox">
      If this is on a "links" or "news" page, this article will hyperlink to another site. Type in the full url above including http://www...
      </a>
      </p>
	  <p><input type="text" name="link" id="link" style="width:100%;" value="<?php if ($this->_tpl_vars['post']['link']): ?><?php echo $this->_tpl_vars['post']['link']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['link']; ?>
<?php endif; ?>" /></p>
    </div>
    <!-- page -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Page </a><a href="javascript:return;" class="helpbox">
      Optional, change the page this will show on.
      </a>
      </p>
    <select name="page">
    <?php echo smarty_function_getpages(array('from' => 'pages','orderby' => 'name desc','unique' => 'name','name' => 'pgs'), $this);?>

    <?php $_from = $this->_tpl_vars['pgs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['val'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['val']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['val']):
        $this->_foreach['val']['iteration']++;
?>
        <option <?php if ($this->_tpl_vars['val']['name'] == $this->_tpl_vars['page']['name']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['val']['name']; ?>
"><?php echo $this->_tpl_vars['val']['name']; ?>
</option>
    <?php endforeach; endif; unset($_from); ?>
    </select>
    </div>
    <!-- date -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Date Added </a><a href="javascript:return;" class="helpbox">
      Optional, change the date this was published in "month/day/year" format. Leave blank to use today's date.
      </a>
      </p>
    <p><input type="text" name="date" id="datepicker" value="<?php if ($this->_tpl_vars['post']['date']): ?><?php echo $this->_tpl_vars['post']['date']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['xitem']['date'])) ? $this->_run_mod_handler('date', true, $_tmp, 'm/d/Y') : smarty_modifier_date($_tmp, 'm/d/Y')); ?>
<?php endif; ?>" /></p>
    </div>
    </div>
    
    <!-- text1 -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Text </a><a href="javascript:return;" class="helpbox">
	  Type in some text to describe the item. Use the toolbar. Add images, media, and formatting.
      </a>
      </p>
    <textarea name="text1" id="text1" style="width:100%;height:400px"><?php if ($this->_tpl_vars['post']['text1']): ?><?php echo $this->_tpl_vars['post']['text1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['text1']; ?>
<?php endif; ?></textarea>
    </div>
    
    <div class="section" style="cursor:hand;cursor:pointer;display:none;" onClick="$('#moretexts').show('slow');$(this).hide('slow');">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">More Text fields </a><a href="javascript:return;" class="helpbox">
      If your page design shows multiple texts per article. If not, contact your designer to add them.
      </a>
      </p>
    </div>
    
    <div id="moretexts" style="display:block;">
    <!-- text2 -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Text 2 </a><a href="javascript:return;" class="helpbox">
	  Sometimes you may want a second text to be displayed next to your article.
      </a>
      </p>
    <textarea name="text2" id="text2" style="width:100%;height:200px"><?php if ($this->_tpl_vars['post']['text2']): ?><?php echo $this->_tpl_vars['post']['text2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xitem']['text2']; ?>
<?php endif; ?></textarea>
    </div>
    </div>

    <!-- advanced features -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Advanced Options </a><a href="javascript:return;" class="helpbox">
	  Advanced tools and settings. See www.friendlyeditor.com/editors for more info.
      </a>
      </p>
      <input type="checkbox" name="clearformatting" value="yes"> Remove all html styles, colors, and behaviors in this entry.
    </div>
    
  	</form>
    
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/tinymce.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

</div>
</body>
</html>