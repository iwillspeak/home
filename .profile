# Add applications to the path here
PATH=/usr/local/bin:$PATH             # Local bin (brew)
PATH=~/.cargo/bin:$PATH               # Cargo installed binaries
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

# I'm not hoarding these, honest..
export LLVM_SYS_39_PREFIX=/usr/local/opt/llvm\@3.9
export LLVM_SYS_60_PREFIX=/usr/local/opt/llvm
