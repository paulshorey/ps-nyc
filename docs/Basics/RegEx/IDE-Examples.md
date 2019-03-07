### HTML:  
search `(\s*)</script>` replace `</script>` puts all closing tags on same line  
  
`\ ?data-(.*?)"(.*?)" `  
`\ ?tabindex=(".*") `  
match all tag attributes starting with with or without leading spaces  
  
  
`li\ class(.*?)"(.*?)" `  
strip out class attribute from matching elements  
  
`<!--(.*?)\.(.*?)-->`  
match comments containing phrase "."  
  
search `href="(.*?)"` replace `href=""` clears all href attributes  
  
search `(\ *?)((?!\ ).*?)><span(.*?)</span> `  
replace `$1$2>\n$1  <span$3\n$1  </span> `  
to add indent span elements  
  
### Javascript:  
Remove all console.logs (or .warn .error, etc):  
`(\s?)console.(.?)\n([\w\s\W\t\n]*?)`  
  
### CLI --help to Markdown  
Find `\n(.*?) (([a-z]+) )?([A-Z])`  
Replace `\n**$1**\t_$2_\t$4`  
  
  
#### Any  
  
Find any new line (including existing trailing spaces)  
`([\ ]*?)\n`  
Replace with two spaces and a new line  
`  \n`  
