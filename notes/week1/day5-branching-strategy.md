# Branching strategy (workflow)

 - Each day's work will be done is a separate new branch created from the main branch
 - Naming convention:  week1-day1-work
 - Try to add each task under a separate commit
 - Each commit message should contain a subject starting with the subject heading
- - add
- - refactor
- - update
- - lint
- Push local branch to remote keeping the same name
- Create a pull request and add description as the tasks accomplished in that day
- Review and approval of PR
- Merge it and delete remote branch (local too optionally)

## naming convention for branches that target a issue logged on github or gitlab
- fix/104-login-timeout
- bugfix/issue-104-session-expiry
use the format category/issue-number-short-discription

## Quick Fix
- create a branch fix/define-the-fix
- commit with a subject and heading "fix"
