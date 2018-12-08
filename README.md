# shell_script_stock

## wc
wc -lwc [file path]
1) -l : number of line of the file
2) -w : number of words inside file
3) -c : data-size of file

## tr 
tr -d <delimiter ex. , \t, half space>
usage is below two options
1) cat [file path] | tr -d , 
2) tr -d , < file > file_modified

tr command cannot take particular file as argument directly.

## sed

## vimdiff

## grep/egrep
template
  grep <option> <conditions> <file path>
1) options
  -i
  -v
  -E

# Regular Expression
