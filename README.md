# git database sql sync

## About
This is a simple bash script that let you sync your local/remote SQL database with git.
**Currently it only work with MySQL**

The script launch hooks (precommit and postcommit) when you use GIT command (only from git client, IDEs like NetBeans ignore this).
This create a db.sql file and add for commit to the repo.

This is focused for BASH, you can adapt it for CMD (make a pull request if you wish!)

**You have to take care about data in the database, maybe you prefer make an script that empty some tables or something**

```You must document in your repo how to execute this script (you can copy "installing")```

## "Installing"
 - Copy directory "prepareGitSQL" to your project folder
 - Open ```terminal``` in Linux/Mac or ```Git Bash``` in Windows
## The first time / after clone
You have to do the next steps when you **install the script** and **every time you clone** the repo
 - Execute (from root git folder):
```bash
sh prepareGitSQL/prepare.sh
```
 - Edit the file: ```.git/hooks/db.conf``` with your DB settings
 - Syncronyze the current DB file to MySQL (only when you are cloning, the first time may be useless)
```
sh .git/hooks/post-merge
```

This is all!
Your database will be synchronyzed everywhere!

## Tasks to do
 - [ ] Ask for database information
 - [ ] Native support for CMD (prepare.cmd)
 
 
 **¡Fork me!**