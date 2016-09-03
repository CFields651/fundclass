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
  - See the file 'vi_practice' in this repo.  From your Linux instance:
    - git clone git@github.com:CFields651/fundclass.git (if that gives an 'already exists' error try 'git pull' instead)
    - Edit the file 'vi_practice' with vi, following the instructions at the top to replace missing words, remove duplicate lines and complete the missing words.  
    - If you have trouble with 'gitting' the file please let me know.  I'll give you a hand.   
- After this class you should know how to do the following with vi:  
  - Navigation: j,k,l,h  
  - Insert mode: i, o, a (the tutorial does not cover all these but try them!)  
  - Deleting content: x, dd  
  - save and quit: wq  

Session #4 BASH scripts
- HOMEWORK: Do lessons 1, 2 and 3 from http://ryanstutorials.net/bash-scripting-tutorial/
-   On lesson 3 you should stop when you get to the 'Reading from STDin' section  
 

