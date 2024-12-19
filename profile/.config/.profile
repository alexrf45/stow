export PATH="$PATH:$HOME/.local/bin:$HOME/.pulumi/bin:$HOME/.cargo/bin/:$HOME/.npm-global/bin"

export EDITOR=nvim
export TERM='xterm-256color'
export VISUAL=nvim

#RUST
export RUSTUP_HOME="$HOME/.rustup"
export CARGO_HOME="$HOME/.cargo"

#aws-cli ENV
export AWS_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_PAGER=
export AWS_CLI_AUTO_PROMPT=on-partial
export GPG_TTY=$(tty)

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#d0d0d0,bg:-1,bg+:#262626
  --color=hl:#5fb079,hl+:#43fb00,info:#afaf87,marker:#87ff00
  --color=prompt:#06fd34,spinner:#f2ff5e,pointer:#fbfbfb,header:#87afaf
  --color=border:#28fe03,preview-fg:#f1f8f2,label:#aeaeae,query:#e97b7b
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'

# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='..'

# Options to fzf command
export FZF_COMPLETION_OPTS='--border --info=inline'

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
  cd) fzf --preview 'tree -C {} | head -200' "$@" ;;
  export | unset) fzf --preview "eval 'echo \$'{}" "$@" ;;
  ssh) fzf --preview 'dig {}' "$@" ;;
  *) fzf --preview 'bat -n --color=always {}' "$@" ;;
  esac
}

# SSHEXEC=$(which ssh)
# ssh() {
#   if [ -n "$TMUX" ]; then
#     title="Remote Host: $*"
#     if [ "$1" = -t ]; then
#       title="$2"
#       shift 2
#     fi
#     tmux new-window -n "$title" "$SSHEXEC $@"
#   else
#     $SSHEXEC $@
#   fi
# }

. "$HOME/.cargo/env"
