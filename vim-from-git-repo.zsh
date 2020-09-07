#!/bin/zsh

git_repo_dir=''

findGitRepoDir() {
  p=`/usr/bin/realpath $@`
  while [[ ! -z ${p} ]]; do
    p=${p%/*}
    if [ -d ${p}"/.git" ];
    then
      git_repo_dir=$p
      return
    fi
  done
}

findGitRepoDir $1
if [[ ! -z "${git_repo_dir}" ]];
then
  cd ${git_repo_dir}
fi
vim $1
