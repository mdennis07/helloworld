#! /bin/bash
 
# Main function
fn_gitCommitMessage(){
    
    #Function to split the Commit message into PR request ID, Story ID, 
    strCommitMessage=$1
    IFS=':'
    read -a strMessage <<< "$strCommitMessage"
    
    
    if [[ $string == *"Git Revision"* ]]; then
        prID="None";
        storyID=${strMessage[0]};
        update=${strMessage[1]};
    else
        prID=${strMessage[0]};
        storyID=${strMessage[1]};
        update=${strMessage[2]};
    fi
    echo "$prID $storyID $update"
    
}

###
# Main body of script starts here
###

echo "Start of the script..."

for i in $(git log --after="2021-08-10 00:00" --before="2021-08-16 23:59" --pretty=format:"%H~%ad~%an~%s");
    do
        IFS='~'
        #Read the split words into an array based on ~ delimiter
        read -a strCommit <<< "$i"
        commitID=${strCommit[0]}
        commitDate=${strCommit[1]}
        commitAuthor=${strCommit[2]}
        commitMessage=${strCommit[3]}
        
        #Call function to split the commit message; standardized : as the delimited
        #fn_gitCommitMessage $commitMessage
        
        
        read $commitPRID $commitStoryID $commitUpdate < <(fn_gitCommitMessage $commitMessage) 
        echo commitID
        echo commitDate
        echo commitAuthor
        echo $commitPRID
        echo $commitStoryID
        echo $commitUpdate
        
        
    done
