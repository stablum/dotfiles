# Setup fzf
# ---------
if [[ ! "$PATH" == */home/francesco/.fzf/bin* ]]; then
  export PATH="$PATH:/home/francesco/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/francesco/.fzf/man* && -d "/home/francesco/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/francesco/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/francesco/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/francesco/.fzf/shell/key-bindings.bash"

