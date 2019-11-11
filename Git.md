- `git rm --cached filename` let git stop follow the `filename` 
- `git reset` rm last commit
- `git branch foo` add a new time place named `foo` 
```
----------------- master ---------------
          |
          |------ foo ------------------ 
```
- `git checkout foo` change to the new time line `foo` 

- `:r !ls` in vim to read current dir filename list to current file.

- `git merge foo` in branch  master, to let foo in master
- `git branch -d foo` delete the branch foo.

if it will lose some modify, git will tell you to make sure
- `git branch -D foo` to ignore it

- `git remote add origin https://github.com/rayfengleixing/***` 
- `git push --set-upstream-to=origin/master master` 

- `git ocnfig credential.helper store` before `git push` , git can remember who you are, you will not be write name and passwd again.


