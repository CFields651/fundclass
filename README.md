
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
- Also go through lesson 7 on Functions but stop when you get to variable scope.  

- After this class you should be able to use a 'while' loop or a 'for' loop in a script or on the cmdline:
while true; do echo "Hello World"; done  
for x in {1..5}; do echo "Hello World $x"; done  

Function myfunc { echo "Hello" }  
myfunc  

Sesson #7 practice
- HOMEWORK: Write a script that returns the proper federal tax bracket when the user enters their federal adjusted gross income. See this web site: on http://www.bankrate.com/finance/taxes/tax-brackets.aspx.
Suggestions:
  - Do ask your parents to explain tax brackets if you need help with the concept
  - Use the 'read -p' to ask the user to enter their 'Federal Adjusted Gross Income.'
  - Use if/then logic to find the range from the bankrate website where the inputed income fits. Presume this is a 'single' filer.
  - Use the echo statement to output the tax bracket (like 10, 15, 25, 28, 33, 35 or 39.6)
  - Call a function named 'nextBracket' that will be used to calculate how much more income would be required to reach the next tax         bracket. Just leave it empty for now; we'll work on it in class.   

Session #8 JSON data and the jq JSON processor  
- HOMEWORK: Try the following with the jq JSON processor that we installed in the last class.  Each of you should have a file with JSON weather data in /tmp.  If not, run your weather script again with './yourWeatherScript.sh >/tmp/weather.json' or copy the one in this repo.  
  - cat /tmp/yourWeatherFilenameHere.json | jq '.'  
  - cat /tmp/yourWeatherFilenameHere.json | jq '.main'  
  - cat /tmp/yourWeatherFilenameHere.json | jq '.main.temp'  
- Quiz: Based on your observed results from the above queries, what query would you use to return the name of the city?  What query would you use to return the name of the country? Come to class with a solution to show me.  Lastly, what time was sunrise on the day your data your data was collected?  Hint: see http://www.epochconverter.com/.    
  - Lastly, try adding a loop to yourWeatherScript.sh in order to collection wheater data once a minute for 10 minutes.  We will work on this inclass but I want you to try it on your own first and have something to show me when class starts.   

Session #9 Variables and the read statement  
- HOMEWORK: understand how to populate variables from data in files and the resutls of command line operations:
  - Understand what this does (we did it in our weatherapi.sh script): 'read weatherapi_key <<< $(cat weatherapi_key)'   
  - Understand what this does (we did it in our weatherapi.sh script):  
    read date temp humidity <<< $(cat weather.json  | jq '.dt,.main.temp,.main.humidity')
  - Given your understanding fo the read statement, show me a bash command that will put your name into a variable called 'myname.'  
  - Show me a command that puts the value of the current date and time into a variable called 'currenttime.'  Hint: the value of the current date and time is returned by the bash 'date' command.  
  - Show me a command that puts the wind speed and direction ('deg') into the variables 'windspeed' and 'winddirection.'  Hint: this will look just like the date+temp+humidity command above.  
  - Do this from your git repo, and follow this sequence to push it where I can see it:  
  - git add .  
  - git commit -m 'some comment'  
  - git push 

Session #10 
 - HOMEWORK: the weatherapi.sh script in my repo has some issues:
   - change the 'date' variable to 'epoch'
   - do not record the seconds for the time of the weather sample
   - the /tmp/weather_data.csv is in the wrong path; change it to write to tmp in your home dir
   - take the sample every 60 minutes, not 60 seconds 
   - change the collection of parameter to cmdline rather than using 'read' interactivley  
   - use this to execute it when you are not logged in:  
       nohup ./weatherapi.sh  7 N >~/tmp/weatherapi.out 2>&1 &  

Session #11   
 - HOMEWORK: Start running your weatherapi.sh script to start collecting data using the 'nohup' command a above  
   - write a function that calculates the average of the temperature of your weather data:  
     - do a 'git pull' from your 'fundclass' repo. Copy the 'weather_functions.sh' script to your git repo  
     - weather_functions.sh has enough to get you started on your assignment.  Add your work it it.  Be sure to look at 'examples.sh' to recall what a function looks like.  

Session #12  
 - HOMEWORK: Write an additional function called 'maxmin' in the weather_functions.sh script that calculates the highest and lowest temperature recorded.  
 - Addtionally, and consider this a 'quiz', write a separte script called 'calc_avg.sh' that asks for three numbers interactively (use the 'read' statement) and calculates the average and echo's it to the screen.  
   - Extra credit: Let the user enter as many numbers as they want and when they stop entering numbers then calculate the average.    
 
Supplemental  
-  To install jq:  
  -   wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  
  -   sudo rpm -Uvh epel-release-latest-7*.rpm  
