1 gitutils folder contains git related utilities
  1 gitpb.sh 
    2 Does the following
      git push -u origin current_git_branch_name
      AND
      git push origin current_git_branch_name:current_git_branch_name_backup
      (So this will push the current commit to two branches.
      One with the same name as the current branch, the other branch with _backup appended to the current branch name)
    3 Why to do this?
         So that the commit sha hashes are preserved in the face of code being rebased.
         The sha hashes can be cherry picked or they can also be reverted.
    4 Warning: If you have solved merge (or rebase) conflicts and are gonna push then 
         beware of using commits from the backup branch because the backup branch may re-introduce previous conflicts.
2 emacs folder currently holds emacs config files for Mac OS X and Ubuntu Linux.