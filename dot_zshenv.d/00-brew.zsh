if [[ "`uname`" == "Darwin" ]]; then
  if [ -f /opt/homebrew/bin/brew ]; then
    eval $(/opt/homebrew/bin/brew shellenv)
  fi
fi

if [[ "`uname`" == "Linux" ]]; then
  if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  fi
fi
