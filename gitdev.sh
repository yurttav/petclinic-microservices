if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    echo "This script need 2 parameters"
    echo "First one should be in single quotes '' which is for git m message"
    echo "Second one is for branchname"
elif [ $# -ne 2 ]
then
    echo "Invalid parameter count"
    echo "This script need 2 parameters"
    echo "First one should be in single quotes '' which is for git m message"
    echo "Second one is for branchname"
else 
    git add .
    git commit -m "$1"
    git push -u origin $2
    git checkout dev
    git merge $2
    git push origin dev
fi
