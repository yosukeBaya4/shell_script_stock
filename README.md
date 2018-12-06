# shell_script_stock

# wc -lwc [file path]
-l : number of line of the file
-w : number of words inside file
-c : data-size of file

## tr -d <delimiter ex. , \t, half space>
usage is below two options
1) cat [file path] | tr -d , 
2) tr -d , < file > file_modified

tr command cannot take particular file as argument directly.
