# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/bjorn/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# alias
alias bashme="vim ~/.zshrc"
alias bashreload="source ~/.zshrc"

# git
gt() {
  if [[ $1 == "a" ]] then;
    command git add -A
  elif [[ $1 == "b" ]] then;
    command git switch $2
  elif [[ $1 == "c" ]] then;
    command git commit
  elif [[ $1 == "wip" ]] then;
    command git add -A && git commit -m wip
  elif [[ $1 == "unwip" ]] then;
    command git reset head^1
  elif [[ $1 == "rebase" ]] then;
    command git checkout $2 && git pull && git checkout -i && git rebase -i $2 $3
  else
    command git status
  fi
}

# ssh
switchssh() {
  cd ~/.ssh && mkdir t && mv id_rsa t && mv id_rsa.pub t
  mv ./swap/id_rsa ./ && mv ./swap/id_rsa.pub ./ && rm -rf swap
  mv t swap && cd ~/www && ls
}

# repos
www() {
  cd $HOME/www/$1 ; ls
}

# beatly
gobeatly() {
  www beatly/beatly-app && pnpm install && pnpm dev
}

# påmind
gopamind() {
  ttab -d ~/www/pamind/backend/Pamind.WebApi dotnet run
  www pamind/webclients/kundwebb && yarn && yarn start
}

# helicon
gohelicon() {
  www helicon
}

gohell() {
  ttab -d ~/www/hell/frontend "npm run dev"
  cd $HOME/www/hell/backend ; bash start.sh
}
