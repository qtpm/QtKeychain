#!/bin/sh

#if [ ! -e qtkeychain ]; then
#    git clone git@github.com:frankosterfeld/qtkeychain.git
#else 
#    pushd qtkeychain
#    git pull
#    popd
#fi

rm -rf src
mkdir -p src
cp qtkeychain/qkeychain_export.h src/
cp qtkeychain/keychain.h src/
cp qtkeychain/keychain.cpp src/
cp qtkeychain/keychain_p.h src/
cp qtkeychain/keychain_mac.cpp src/keychain_darwin.cpp
cp qtkeychain/keychain_unix.cpp src/keychain_linux.cpp
cp qtkeychain/keychain_win.cpp src/keychain_windows.cpp
cp qtkeychain/gnomekeyring.cpp src/gnomekeyring_linux.cpp
cp qtkeychain/gnomekeyring_p.h src/
cp qtkeychain/translations/* translations/
cp qtkeychain/ReadMe.txt ./OriginalReadme.txt
cp qtkeychain/ChangeLog ./
cp qtkeychain/testclient.cpp ./examples/
cp qtkeychain/org.kde.KWallet.xml ./
