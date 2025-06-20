##Individual Summative Lab
#Task 1
The first task dealt with setting up the project and it's file structure and include all necessary files.

I used these steps to set up the project
I created a script create_environment.sh
When the user runs it, it prompts them to enter their names.
Then it will create a directory submission_reminder_{user_name} and replace user_name with the actual name a user used.
Then by using mkdir commands, it creates the following folder following this tree structure
submission_reminder_{user_name}
├─ app
│  └─ reminder.sh
├─ modules
│  └─ functions.sh
├─ assets
│  └─ submissions.tx
├─ config
│  └─ config.env
└─ startup.sh
I used cat command to create all the files we needed; reminder.sh, functions.sh, submissions.txt, config.env and startup.sh files.
In submissions.txt, I manually add 5 more users to make enhance the testing experience.
In the middle of the script, I add a lot of echo statements to update the user on each step, what's going on.
After, I made sure that the script runs the chmod +x command to give all *.sh files executable permissions.
How to use
All you have to do is run ./create_environment.sh at the root of the project.

#Task 2
I created a script copilot_shell_script.sh that lets the user quickly update the assignment name and re-runs it with the new configuration.

Steps the script follows
Checks if the config file submission_reminder_{user_name}/config/config.env exists
Shows the user the current assignment name from the config file
Prompts the user to enter a new assignment name
Updates the ASSIGNMENT value in the config file using the sed command
Displays the updated configuration to confirm changes
Automatically restarts the application by running startup.sh
Input validation: The script checks that the config file exists and ensures the new assignment name is not empty before making any changes.
How to use
Make sure you're in the directory that contains the submission_reminder_{user_name} folder
Run the script: ./copilot_shell_script.sh
Enter the new assignment name when prompted
The application will restart automatically with your new assignment
#Task 3
This task was all about trying to use best git workflow practices.

I did all the raw work on feat/setup branch
Made sure that the project will have the required file structure
I was committing after doing a major task
After, I'm going to raise a PR from this feat/setup branch to main and merge it
