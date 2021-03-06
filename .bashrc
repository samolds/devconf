alias rmallpyc="find . -name \"*.pyc\" -exec rm -rf {} \;"
alias rmallswp="find . -name \"*.swp\" -exec rm -rf {} \;"
alias rebash="source ~/.bash_profile"
alias ll="ls -lsah"
alias vimo="vim -O"

# extended regex, ignore binary, case insensitive, recurse dirs, line nums
alias grp="grep -EIirn --color --exclude-dir={pkg,bin,node_modules}"

# http://superuser.com/a/239995
export PS1='\w$ '
export HISTCONTROL=ignoreboth:erasedups

set -o vi
stty -ixon

export GOPATH="${HOME}/projects/gowork"

# Useful Reminders
# Copy my ssh public key to remote machine:
# cat ~/.ssh/id_rsa.pub | ssh user@123.45.56.78 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"

alias gitSubmoduleHardUpdate="git fetch && git reset --hard master && git clean -dffx && git submodule foreach git clean -dffx && git submodule foreach git reset --hard && git submodule sync && git submodule update --init --recursive"
alias gitMatchOrigin="git fetch origin && git reset --hard origin/master"

journal() {
  mkdir -p $HOME/projects/journal
  cd $HOME/projects/journal
  journalfile="`date +"%Y-%m-%d"`.md"
  if [ ! -f $journalfile ]; then
    printf "== `date +"%A %D"` ==\n\n\n" >> $journalfile
  else
    printf "\n---\n\n\n" >> $journalfile
  fi
  vim $journalfile
}

notes() {
  mkdir -p $HOME/projects/notes
  cd $HOME/projects/notes
  notesfile="`date +"%Y-%m-%d"`.md"
  if [ ! -f $notesfile ]; then
    printf "== `date +"%A %D"` ==\n\n\n" >> $notesfile
  else
    printf "\n---\n\n\n" >> $notesfile
  fi
  vim $notesfile
}
