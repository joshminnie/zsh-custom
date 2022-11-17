# Aliases for eChecks project
alias gup="OVERCOMMIT_DISABLE=1 git up"
alias ginit="git init;git add .;git commit -m 'Initial commit'"
alias rc="bundle exec rails c"

function rs {
  local port="$1"
  [[ -z "$port" ]] && port=3000
  if [[ !(( $+commands[passenger] )) ]]; then
    gem install passenger
  fi
  echo "Starting passenger on port $port..."
  passenger start -p "$port"
}

# Kills instances of passenger that are running.
function kp {
  print "Killing passenger instances..."
  kill $(ps -A | grep -m1 nginx | awk '{print $1}') >/dev/null 2>&1
  echo "Done!"
}
