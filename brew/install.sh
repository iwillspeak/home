#! /usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}

if ! which brew > /dev/null 2>&1
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle

ln -sh /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
ln -sh /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/
