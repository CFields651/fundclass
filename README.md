# fundamentals of computer programming class  

Session #1 Getting set up   
After this class you should be able to:
- ssh to your Amazon EC2 Red Hat Linux instance; don't lose your ssh key!
- access your github software repository at https://github.com; remember the content can be seen by anybody!
- be able to git clone this repo after setting up your ssh key in github: git clone git@github.com:CFields651/fundclass.git
- register for openweathermap.org api
- call the openweathermap api for current weather data for our location:  
curl -s "http://api.openweathermap.org/data/2.5/weather?zip=55427,us&units=imperial&APPID=< your api key here > 

Session #2 BASH command line from codeacademy  
- HOMEWORK: Do the first three sessions of this codeacademy tutorial: https://www.codecademy.com/learn/learn-the-command-line
- After this class you should have basic knowledge of:  
  - Navigation: pwd, ls, cd, cd .., mkdir, touch  
  - Manipulation: ls -alt, cat, cp, mv, rm, rm -r  
  - Redirection: > (write), >> (append), | (pipe), sort, uniq, grep, grep -R, sed 's/text to find/text to replace it with/g' filename.txt
  - from me: don't forget the 'cd' simply takes you back to your 'home' directory

Session #3 vi editor 09/08  
- HOMEWORK: Work through this tutorial http://ryanstutorials.net/linuxtutorial/vi.php  
  - See the file 'vi_practice' in this repo.  From your Linux instance in the 'fundclass' directory:
    - 'git pull'
    - Edit the file 'vi_practice' with vi, following the instructions at the top to replace missing words, remove duplicate lines and complete the missing words.  
- After this class you should know how to do the following with vi:  
  - Navigation: j,k,l,h  
  - Insert mode: i, o, a (the tutorial does not cover all these but try them!)  
  - Deleting content: x, dd  
  - save and quit: wq  

Session #4 BASH scripts 09/22   
- HOMEWORK: Do lessons 1, 2 and 3 from http://ryanstutorials.net/bash-scripting-tutorial/  
- On lesson 2 you should stop when you get to the 'Exporting Variables' section  
- On lesson 3 you should stop when you get to the 'Reading from STDin' section   
- After this class you should be able to:  
  - execute a script with './'  
  - read a variable passed from the command line with $1 
  - populate a variable with command substitution: myvar=$( ls )    
  - prompt a user for input with "read -p 'question:' answer"  
 
Session #5 if/then/else  09/29  
- HOMEWORK: Do lession 5 'if statements' from http://ryanstutorials.net/bash-scripting-tutorial/; Stop when you get to the section on 'case statements'  
- After this class you should know what the following means and how to write your own  
$ pi=3.14  
$ if [ $pi != 3.14 ]; then echo "pi is wrong"; else echo "pi is right"; fi  

Session #6 loops 10/06
- HOMEWORK: Do the 'while' loop and 'for' loop parts of lesson 6 on 'loops'  
- After this class you should be able to use a 'while' loop or a 'for' loop in a script or on the cmdline:
while true; do echo "Hello World"; done  
for x in {1..5}; do echo "Hello World $x"; done  


Supplemental  
-  To install jq:  
  -   wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  
  -   sudo rpm -Uvh epel-release-latest-7*.rpm  
