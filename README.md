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

Session #3 vi editor  
- HOMEWORK: Work through this tutorial http://ryanstutorials.net/linuxtutorial/vi.php  
- Create a file with vi and put a bunch of text in it about how wonderful your teacher is.  Get in an out of insert mode, add content in the middle, delete content, fix mistatkes. We'll read these in the next class.   
- After this class you should know how to do the following with vi:  
  - Navigation: j,k,l,h  
  - Insert mode: i, o, a (the tutorial does not cover all these but try them!)  
  - Deleting content: x, dd  
  - save and quit: wq  

Session #4 BASH scripts
- HOMEWORK: Do lessons 1, 2 and 3 from http://ryanstutorials.net/bash-scripting-tutorial/
-   On lesson 3 you should stop when you get to the 'Reading from STDin' section  
 

