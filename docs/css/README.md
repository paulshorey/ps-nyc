### CSS is not hard. Just review the properties at the bottom of this page.  
  
## If you know the basics, here are some gotchas and odditties:  
```  
```  
## Properties:  
* position:  
    * **static** ~ default value, makes element think it has NO position property.  
    * **relative** ~ relative to its surroundings. Lets you to add **top, left, bottom, right**, to shift it a bit to any direction  
    * **fixed** ~ relative to the window - use **top, left, bottom, right** to position the element any number of units from the top/left/bottom/right of the screen boundaries.  
    * **absolute** ~ same as fixed, but relative to the parent element (well, the closest parent which has a specified positon property)  
* display:  
    * **block** ~ wrap to their own line, and take up 100% available width! Used to layout visual blocks on the page, with height, padding, border, etc. (**div, blockquote, header, article, main** have this by default)  
    * **inline** ~ for text elements which do not have height or width or margin or vertical padding (**span, b, i, u, img, code** have this by default)  
    * **inline-block** ~ best of both worlds. Can have vertical height and padding, but do not wrap to their own line! So, can style a padded button or highlight in the middle of a paragraph.  
    * **flex** ~ read about it. It will change your life. **Note:** it affects the children, not itself! Simple example: Lets you have a fixed-width left column, and a main article section which takes up the remaining page width, no matter how wide or narrow the screen is.  
    * **inline-flex** ~ flex content inline! Like a pill-button, with left/right sections.  
    * **grid** ~ new hotness. Not like "masonry", but still very useful.  
* margin:  
    * **0 0 0 10px** add 10px margin outside of the element to the left  
    * **0 10px** add 10px margin to left and right. Zero to top/bottom  
    * **10px** add to all sides  
    * **10px 0 0 0** same as margin-top:10px  
    * Margin adds space **outside** of the element's boundaries. So, **outside** of the element's width/height, padding, border, background.  
* padding:  
    like margin, but adds space **inside** the element's boundarids. So, **inside** the border. Increases width/height, and is covered by background.  
* float:  
    never use  
* top, left, right, bottom:  
  
