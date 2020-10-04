Project 2 is where we will be exploring some basic commands and low-level scripting skills 
with Git bash and the text editor nano.
I followed along with the provide guide in the instructions to the best of my ability.
The first few steps were familiarizing the user with definitions and basics.
Step 4 is when I first used the text editor nano. 
It took some getting used to, but I think I have a decent handle of it.
Utilizing nano for script execution seems pretty straight forward.

Hello-World
This was the most basic bash shell script, when executed it displayed "Hello World"

Backup
This one gave me issues and I'm still not sure it is working as it is supposed to.
I couldn't figure out the path for my computer, but when I execute the script it 
seems to display what it should.
After each new script we used, it added onto the Backup.sh and starting off wrong
was tough.
Adding total_files and total_directories to backup.sh doesn't quite work.
wc -1 is not a command for Git Bash. 
I used the windows equivalent "find /c /v", at least I think it is.
When executing after that change it started displaying what seemed like every file on my computer.
So I went back and changed it to wc -1 even though that doesn't work.
Since this project had us continually updating the Backup.sh, mine never functioned like it should.

Variables(Welcome)
This script set three variables: greeting, user, and day.
Then I used those variables in two command lines to display two lines.
I also stepped through how to set variables directly via Git Bash.
I used the provided example of a=4, b=4, and then adding the two with [$a + $b]

Input
THe examples of cat > file1.txt and cat < file1.txt was an pretty fun part of 
the project to step through. It was another way to familiarize myself with Git Bash.

Function
A way of combining different lines of command under one command. 
In this example it was to display user name and home directory.

Comparison
Comparing strings and numbers to determine if they are equal or not.
nnnDisplays 0 for TRUE and 1 for FALSE.

Parameters
Utilizing positional parameters and inputs to create an output upon execution.

For/While/Until Loops
I had no issues with these since they were simple loops.

My overall issues with this project was the confusion around the Backup.sh
Since I never got that to work right away, the additional changes were futile.
At a certain point I stopped editing the backup.sh because the new scripts I learned
weren't able to be fully realized via the backup script. 
I'm hoping that after this project I will be able to figure it out because it is 
simply not happening right now. 
I believe the biggest issues is trying to figure out how to work Git Bash via a Linux guide.
