# linux  CLI cheatsheet

## ls
This command is used to list files and directories at the specified location
### usage 
` ls -la ~`
lists all files and directores including hidden ones in the user's home directory

## mkdir 
This command is used to make new directories
```bash
$ mkdire new-dir 
# this will create a new directory name new-dir in the current working directory
$ mkdir -p new-dir/another-new-dir/final-new-dir
# the -p flag will create even the parent directories if they don't exist
``` 

## pwd
This command prints the current working directory
```bash
$ cd /home
$ pwd
# output: /home
```

## cp 
This command is use to cp files and directories
```bash
$ cp file1.txt file1_backup.txt
# this creates a new file file1_backup.txt
$ cp -r my-dir other-dir/copy-of-my-dir
# -r flag/option is use to copy directories including their content
```

## mv
This command can be use to move or rename file and directories
```bash
$ mv file1.txt newname.txt # file will be renamed
$ mv newname.txt ./my-dir/original-file1.txt # file will be moved and renamed
```

## cat 
This command display what is pass to std input to std output
```bash
$ cat "hello" > file1.txt # the > redirects the std output to file1.txt
$ cat file1.txt
# output: hello
$ cat "I am Ahamd" >> file1.txt # appending text to file if it already exists
```
- we can specify line numbers via -n option
- we can use "tac" reverse spelled cat to output from bottom to top

## touch
This command is use to create empty files
```bash
# $ touch path/to/newfile
$ touch ~/newfile.txt
$ touch file1 file2
```

## find
This command is use to find files and directories 
```bash
$ find . -name "*-linux-*.md" # this will recursively look for finle that contain -linux- in the name and have extension .md
```
- we can also find by type such as `-type d` for directory `-type f` for regular files
- the -i flag is user for case insensitive

## grep
this command is use to find sepecific, text or pattern from the provided input

```bash
$ grep "devops" ./README.md
```
- use -i for case insensitive match
- we can use matchers such as *, ., ^ and $
- use -A for after, -B for before, -C for both before and after, the lines to show around the match in a file

## rm
remove files or non emplty directories
```bash
$ rm filename
$ rm -r mydir # the -r flag is use to remove non empty directories
$ rm -i filename # to do an interactive deletion
```

## rmdir
removes non empty directory
- p flag to remove parent and child directory
- v for verbose output

## head
show the first 10 lines of a file on std output
- use option -n to specify number of lines such as -n2
- use -c to specify the number of characters

## tail
same as head but it works with end of file and same options available as head

## chmod 
This command is use to alter permission of a file or a directory
```bash
$ chmod [ugoa][+-][rwx] filename
$ chmod u+x myscript.sh # give the user/owner the permission to execute the file
$ chmod g-w myscript.sh # removes write permission from the script for group
```
we can also use octal notations such as 755 or 777

## diff
this commnad is use to check diff between two files or directories
```bash
$ diff file1 file2
$ diff -r dir1 dir2 # -r is used when comparing two directories

```