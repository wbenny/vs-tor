#!/bin/bash

#
# OpenSSL Visual Studio project based on:
# https://famellee.wordpress.com/2013/01/30/build-openssl-with-visual-studio-without-perl/
#

# https://www.openssl.org/source/openssl-1.0.1s.tar.gz
# http://zlib.net/zlib-1.2.8.tar.gz
# https://github.com/libevent/libevent/archive/release-2.1.5-beta.tar.gz
# https://www.torproject.org/dist/tor-0.2.7.6.tar.gz

git clone https://github.com/openssl/openssl.git --branch OpenSSL_1_0_1s
git clone https://github.com/madler/zlib.git --branch v1.2.8
git clone https://github.com/libevent/libevent.git --branch release-2.1.5-beta
git clone https://github.com/torproject/tor --branch tor-0.2.7.6

git apply --whitespace=nowarn --directory=tor vs2015/tor/tor_win32_patch.diff
