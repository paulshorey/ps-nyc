### Units and Responsive design:  
  
#### With only a little work, your pixel sizes can scale proportionally with the viewer's screen size.  
But that's not all. Keep reading, and this applies also to ALL CSS properties, not just font-size. Also margin, padding, top, left, border, width, height, etc. They can all be responsive just by adding some dynamic text sizes.  
  
```  
/* set your default text size for the page */  
html {  
    font-size: 16.5px;  
}  
/* make smaller for smaller screens */  
@media (max-width: 950px),(max-height: 750px) {  
    html {  
        font-size: 15px;  
    }  
}  
@media (max-width: 750px),(max-height: 650px) {  
    html {  
        font-size: 12.5px;  
    }  
}  
@media (max-width: 380px),(max-height: 380px) {  
    html {  
        font-size: 11.5px;  
    }  
}  
@media (max-width: 330px),(max-height: 330px) {  
    html {  
        font-size: 10.5px;  
    }  
}  
/* make bigger for extra large screens */  
@media (min-width: 1600px) {  
    html {  
        font-size: 19px;  
    }  
}  
```  
  
#### That's it. You're done. Now you can use **`rem`** units of measurement instead of pixels.  
  
Now, you can style an `<h1>` tag to have `font-size` of `2rem` pixels instead of `30px`. The difference is:  
1. Traditionally, with static pixels, no matter what screen size, your text would be always 30px. On a big screen, it may be too small. On a phone screen, it would be too big.  
2. Responsive size of `2rem` means that whatever you are sizing is 2x the font-size of the `<html>` element. If the `<html>`  font size is "16.5px", then "2rem" equates to "33px". On a small screen, where the `<html>` font size is "11.5px", then "2rem" means only "23px".  
  
With no extra effort. Apply the same sizing to your padding, and widths, especially "max-width", to have larger UI distances on larger screens, and small compact styling for phones and tablets.  
  
  
  
  
