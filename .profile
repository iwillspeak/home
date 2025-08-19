# Add applications to the path here
function maybe_add_path() {
   pathItem=$1
   if [ -d $1 ]
   then
      PATH="${pathItem}:${PATH}"
   fi
}

maybe_add_path /opt/homebrew/bin         # Brew Bin
maybe_add_path /usr/local/bin            # Local bin (brew)
maybe_add_path ~/.cargo/bin              # Cargo installed binaries
maybe_add_path ~/.dotnet/tools           # dotnet global tools
maybe_add_path ~/go/bin                  # Go binaries
maybe_add_path /usr/local/opt/ruby/bin   # Ruby gem executeables
maybe_add_path ~/bin                     # user programs
maybe_add_path ~/.bin                    # user programs

export PATH

# Update ls and friends to use coloured output
CLICOLOR=YES
export CLICOLOR

# Set the editor for applications that respect this. Use `which` because git
# messes with the path before calling $EDITOR.
EDITOR="`which emacs` +1:0"
export EDITOR

# Git just likes to be different
GIT_EDITOR="${EDITOR} -nw"
export GIT_EDITOR

# GCP credentials symlink
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/GcpCredentials/default.json

# I'm not hoarding these, honest..
export LLVM_SYS_90_PREFIX=/usr/local/opt/llvm\@9
export LLVM_SYS_100_PREFIX=/usr/local/opt/llvm

export LLVM_CONFIG_PATH=${LLVM_SYS_100_PREFIX}/bin/llvm-config

# Source all files in $HOME/.env/
if [ -d "$HOME/.env" ]; then
   for env_file in "$HOME/.env/"*; do
      [ -f "$env_file" ] && . "$env_file"
   done
fi

### Added by Cargo ####
if [ -f "$HOME/.cargo/env" ]
then
   . "$HOME/.cargo/env"
fi

### Added by Gcloud ####

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.bash.inc' ]; then . '$HOME/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.bash.inc' ]; then . '$HOME/google-cloud-sdk/completion.bash.inc'; fi
