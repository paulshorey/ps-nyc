# Try WebStorm  
  
### Lately, I've had trouble with both Sublime Text and Vs Code.  
  
**VsCode** just does not indent JSX correctly, no matter what options I set, using the popular plugin "js-beautify" or the default formatter. Best case scenario - it sometimes ignores JSX indentation and sometimes indents incorrectly, that's with the correct plugin and settings, explained in ./auto-formatting.md.  
In **Sublime Text**, I could not enable "format on save" no matter what I did. Instructions listed here in ./auto-formatting.md worked for others on the web.  
  
I do not like **Prettier** (the "opinionated" formatter), though I will use it if my team mates want to. Its formatting preferences are not as configurable as **js-beautify**, its preferences force me to do a lot of scrolling, and it still doesn't work well with JSX. **Vs-Code's default formatter is the same** (probably uses Prettier?).  
  
So, this remains unsolved, in 2019 !?  
  
  
### WebStorm simply works. No problems.  
It indents JSX correctly, and has program settings which all actually do what they're supposed to when you change them. WebStorm is a good little robot that does as you command it.  
  
Also, it lets you choose to put arguments on the same line as the brackets, or each on its own line. This is huge for readability. Sometimes one format is more legible. Other times it's not. Now you, the human, can decide which to use.  
  
Examples at the bottom of this page.  
  
  
### Other benefits...  
  
It has several more sophisticated features - ones you would have to spend a long time finding and configuring just right in open source editors.  
  
* When you re-name a file or folder, it can search all the source code in the project, and rename any references to that file, to prevent broken links.  
  
* Key mapping has a very easy interface! Feel free to remap all your favorite shortcuts, including Macros.  
  
* Subtle things like -  
    Pressing "Backspace" (Delete on Mac) when all you have to the left is whitespace, WebStorm deletes all the way to the end of the previous line, with one key stroke.  
    * Vs Code deletes one indentation level at a time, then you must press again to delete the new line  
    * Sublime Text actually is even worse. When indenting using spaces (for example 4), instead of deleting 4 spaces at a time, it deletes one space at a time.  
    Lint tooltips are easier to use and read  
  
  
### Unfortunately,  
  
* It costs money!  
* Color themes are lacking in variety, and are difficult to customize.  
  
### Example 1  
Long-form:  
```  
import {  
  ValidateForm,  
  ValidateField,  
  ValidateButton,  
  validations  
} from 'src/containers/validateForm';  
```  
Short-form:  
```  
import { ValidateForm, ValidateField, ValidateButton, validations } from 'src/containers/validateForm';  
```  
Imagine many of these imports.  
**WebStorm** allows you to use either format. You just code it. WebStorm will detect which format you're using, and fix your indentation and spaces accordingly. VsCode and others force you to use the longer one, unless you specify in the setting to always use the all-in-line version.  
  
  
### Example 2  
Code formatted by Vs Code (started out perfectly indented):  
```  
    SuggestedSelects.push(  
      <SuggestRow  
                    words={lists}  
                    domains={domains}  
                />  
    );  
```  
Notice the broken indentation.  
Also... why is that `<SuggestedRow...` indented by 2 spaces, while others by 4 spaces? Idk.  
  
  
