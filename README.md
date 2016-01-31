# dropboxer
Notre Dame CSE 20212 script for submitting homework done on the school afs space

To run: put in the folder on your system (on the student machines, support for remote copy has not been added yet) which is one level above the folders you do your lab in (eg, in the folder that contains lab0, lab1, lab2, etc.)

Run with the command:

  bash dropboxer.sh example

where example is the name of the lab you are submitting.  eg. 
  ```bash dropboxer.sh lab0 ```
will submit the first week's prelab.  Note that the folder you would like to submit must actually be in the same folder as dropboxer.sh .  

# additional comments
Note if you answer no to any of the questions, the program will not completethe transfer.  
Right now, it just copies over, creating the folder if it does not exist, and creates a symlinked folder in your own directory that will lead to your dropbox.  Soon to be added is a feature to delete the contents of the dropbox, and to manage backups.  However, that is still to come as of yet.  
