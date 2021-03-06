alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# vim: filetype=sh

alias kupo="cd $KUPO_HOME"
alias dots="cd $DOTTIE_HOME"

# Convenient stuff
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias l="ls -Gal"
alias ls="ls -G"
alias ll="ls -Gal"
alias empties="find . -empty -type d -maxdepth 2"

tableflip() {
    echo "（╯°□°）╯ ┻━┻";
  }

  alias pg="ps ax | grep -v grep | grep -i "
  alias ip="ifconfig | grep 'inet '"

  function profile {
    $EDITOR ~/.bash_profile && source ~/.bash_profile
  }

  function aliases {
    # $EDITOR ~/.aliases && source ~/.aliases
      $EDITOR $DOTTIE_HOME/bash/aliases && source ~/.bash_profile
    }

    alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
    alias f='find . -iname'
    alias gr='grep -r' # Recursive grep
    alias ddmail='echo \"116 New Montgomery Suite 400, SF, CA 94105\"'
    alias podshit='rm -rf pods; pod install'

    # Shows most used commands, from: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
    alias profileme="history | awk '{print \$4}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

    # Git
    alias ch="git diff --ignore-space-at-eol | $EDITOR"
    alias chc="git diff --cached --ignore-space-at-eol | $EDITOR"
    alias current_branch="git symbolic-ref HEAD | cut -d / -f 3"
    alias gaa="git add --all && git status"
    alias gadd="git add --all && git status"
    alias gap="git add --patch"
    alias ga="git add"
    alias gb='git branch -v'
    alias gbr="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname)' | cut -d / -f 3-"
    alias gca='git commit -v --all'
    alias gcam='git commit --amend'
    alias gcb='git checkout -b'
    alias gco='git checkout'
    alias gcf="git checkout -f"
    alias gch="git log ORIG_HEAD.. --stat --no-merges"
    alias gci='git commit -v'
    alias gcia='git commit -v --all'
    alias gclean="git clean -dff && git submodule foreach git clean -dff"
    alias gcp="git checkout --patch"
    alias gcv='git commit -v'
    alias gd='git diff'
    alias gsf='git status | fpp'
    alias gdc='git diff --cached | $EDITOR'
    alias gdh='git diff HEAD | $EDITOR'
    alias gdm='git diff origin/master | $EDITOR'
    alias gfd='git push -f origin head:canary'
    alias git-user="$EDITOR ~/.gitconfig"
    alias gl="git log --date=local"
    alias gmm="git merge master"
    alias gps="git pull && git submodule sync && git submodule update --init --recursive"
    alias grc="git rebase --continue"
    alias grim="git rebase --interactive master"
    alias grm="git status | grep 'deleted:' | sed -e 's/^.*deleted: *//' -e 's/^/\"/g' -e 's/$/\"/g' | xargs -n1 git rm"
    alias gs='git status'
    alias gss='git status --short --branch'
    alias gu="$EDITOR ~/.gitconfig"
    alias gum="echo 'Resetting master to the latest origin/master...' && git fetch && git update-ref refs/heads/master origin/master"
    alias ungreen="git log --abbrev-commit --reverse --pretty=format:'%C(yellow)%h%Creset %C(bold)%s%Creset %an' origin/ci-master-distributed-latest..origin/master"

    # Xcode
    alias dxdd='echo "Deleting `cd ~/Library/Developer/Xcode; pwd`/DerivedData"; rm -rf ~/Library/Developer/Xcode/DerivedData'

    # Ruby
    function be {
      bundle check || bundle install
        bundle exec $@
      }

      alias beer="be rake"
      alias bees="be rspec"

      # Postgres
      alias pgtail="tail -f /usr/local/var/postgres/server.log"
      alias pgconf="vim /usr/local/var/postgres/postgresql.conf"

      # Redis
      alias redtail="redis-cli monitor"

      # HTTP Performance
      alias perf='curl -o /dev/null  -s -w "%{time_connect} + %{time_starttransfer} = %{time_total}\n"'
      alias sniff='curl -w "@$DOTTIE_HOME/bash/sniff.txt" -o /dev/null -s'
      alias loaf='wrk -t8 -c100 -d30S --timeout 2000'

      # [] Square
      alias rtd="git fetch && git log --abbrev-commit --no-merges --reverse --pretty=format:'%C(yellow)%h%Creset %C(bold)%s%C(green) %an' origin/hoist/sjc1b/production..origin/deployable"
      alias sjcrtd=rtd

      # DD DoorDash
      alias abv="source venv/bin/activate" # activate python virtual env
      alias doorstep="cd $DOORDASH_HOME/doorstep-django"
      alias dapple="cd $DOORDASH_HOME/doordash-consumer-ios"
      alias dies="run index-stores -m1 && run update-store-statuses -m1" # index elastic search on stores in market 1

      alias leggo="cd /Users/lloydlucin/Desktop/doordash-consumer-ios/DoordashConsumerApp"
