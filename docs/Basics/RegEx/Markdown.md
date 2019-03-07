**CLI command "--help" output lines to Markdown file**  
Find `\n(.*?) (([a-z]+) )?([A-Z])`  
Replace `\n**$1**\t_$2_\t$4`  
  
**bold**  
`\*\*([^\n```.]*)\*\*`  
Replace with bold inline code block  
**`$1`**  
  
