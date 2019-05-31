HOMEBREW_PREFIX=$(brew --prefix)
if type brew >/dev/null 2>&1; then
  for COMPLETION in "$HOMEBREW_PREFIX"/etc/bash_completion.d/*
  do
    # shellcheck source=/dev/null
    [ -f "$COMPLETION" ] && . "$COMPLETION"
  done
  if [ -f "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ];
  then
    # shellcheck source=/dev/null
    . "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
fi
