git add .
git commit -m '$1'
git push -u origin $2
git checkout dev
git merge $2
git push origin dev