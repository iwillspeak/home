# Add applications to the path here
PATH=/usr/local/bin:$PATH             # Local bin (brew)
PATH=~/.cargo/bin:$PATH               # Cargo installed binaries
PATH=~/.dotnet/tools:$PATH            # dotnet global tools
PATH=/usr/local/opt/ruby/bin:$PATH    # Ruby gem executeables
PATH=~/.bin:$PATH                     # user programs
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
. "$HOME/.cargo/env"
