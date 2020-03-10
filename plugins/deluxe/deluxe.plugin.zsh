# Aliases for eChecks project
alias gup="OVERCOMMIT_DISABLE=1 git up"
alias ginit="git init;git add .;git commit -m 'Initial commit'"
alias dj="bin/delayed_job"
alias rc="bundle exec rails c"
alias bup="bin/bup"

rs() {
  local port="$1"
  [[ -z "$port" ]] && port=3000
  if (( $+commands[passenger] )); then
    echo "Starting passenger on port $port..."
    passenger start -p "$port"
  else
    print -P '%F{yellow}'
    cat <<-'EOF'
  You need to install the passenger gem before you can run this command.

  gem install passenger
EOF
    print -P '%f'
  fi
}

alias kp="kill $(ps -A | grep -m1 nginx | awk '{print $1}')"
