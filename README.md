# personal-bash-scripts
A list of personal bash scripts i use to make working on my wsl ubuntu easier.

## Introduction

So After being introduced to the UNIX shell and ultimately to bash, I realised that I could harness this power to automate some of the things i do on my ubuntu machine, or even make regular tasks faster. So as part of the learning curve in shells and bash scripting i have come up with some simple bash scripts to help me and anyone interested to use too.

Some of the things I came up with are:
- freader
- fsize
- push-commit
- open
- xplor
- ps-cm

## Freader

As part of the assignments given to me in my learning of bash scripting. I was required to write a script to read all files and other directories nested in a particular directory. print out these other directories. These is exactly what this shell script does.

It is expected to take one command line arguement which is the main directory to check. and it will output something like this

#### Output

Identified path /home/mrphayo

/home/mrphayo/bin

/home/mrphayo/cprojects

/home/mrphayo/docker-test-run

/home/mrphayo/exercism

/home/mrphayo/flask

/home/mrphayo/get-pip

/home/mrphayo/pyprojects

/home/mrphayo/secret

/home/mrphayo/shell

There are 11 folders, 0 files and 0 invalid paths in this directory


## Fsize

This simply prints the size of a particular directory and recursively all other files and directories inside that directory. It ends with the size of the initial directory. Also part of the assignment.

It also take a command line arguement which is the directory to check. It is Ideal to only check small directoris as large directory will take time to complete.

### Output

0       /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin/.git/refs/heads

0       /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin/.git/refs/tags

0       /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin/.git/refs

40K     /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin/.git

0       /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin/static

0       /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin/templates

40K     /home/mrphayo/pyprojects/decagon/squad-twin/squad-twin

17M     /home/mrphayo/pyprojects/decagon/squad-twin

17M     /home/mrphayo/pyprojects/decagon

17M     /home/mrphayo/pyprojects/

NB: This output is truncated.


## push-commit

Having found out that in some projects I work on, especially, Creating a mock up from a design, I consistently have to stage ALL recent changes, commit and push to my working branch, which is I find very stressful because it alsways breakes up my mojo. That stressfulness was wha beget push commit. so with one command i am able to do all that.

### How it works

When the keyword push-commit is typed, the script checks if the current directory contains a valid github repository by looking for the .git folder. if it does not. the program exits and informs the user that the directory is not a valid repo.

If it does exit. The program warns the user that it will stage ALL untracked files, commit it and push it to reomte branch equal to the current working branch used locally (basically doing only a 'git push'). By proceeding th user agrees to take the risk.

Then it request for a commit message from the user and executes this commands in that order.

git add .

git commit -m "--comit-message-goes-here"

git push

NB: the user will have to input their git credentials (https or ssh) and all other git dependencies, They also see the out put.

#### Advice use with caution


## Open

This script simply opens a directory on explorer.

I used the WSL for my ubuntu and  many times i wish to view the directory on windows explorer. i could type explorer.exe or all the likes but alternatively i could just type 'open' !! cool right?? And that is exactly what i did with this script.

the source code >> "cmd.exe /c start ."

#### Its too complicated i know ☺☺🤣🤣


## xplor

This is the script i wrote to allow users download my open script and use it asap.

It downloads the open.sh file from my repo and saves it in their bin directory (It creates the ~/bin directory if it is not already there).

It also add the bin PATH to thir .bash_profile and skips if it is not already there.

Finally it reloades the profile so that the user can start using it immediatelly.

##### Check source code for more insight
###### To use this script run this command... curl https://raw.githubusercontent.com/phayo/personal-bash-scripts/master/xplor | bash
###### Please copy from curl till bash, dont just click the link!!!


## ps-cm


This is the script to download push-commit and makes it immediately available to use by the user, it works exactly like the xplor above execpt for changes in the files it needs to download.

### One Again Use with CAUTION


## ALL SCRIPTS ARE IN VERSION 0.0.0.0.0 
