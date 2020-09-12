vim_from_git_repo_dir=${0:A:h}
source ~/.vg_alias
vg () {source ${vim_from_git_repo_dir}/vim-from-git-repo.zsh "$@"}
vinit () {${vim_from_git_repo_dir}/vinit-alias.zsh "$@"; source ~/.vg_alias}
