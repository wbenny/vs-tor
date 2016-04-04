# Tor solution for Visual Studio 2015

Everything you need for compiling [tor][tor-link] in Visual Studio 2015.

### Requirements
* Visual Studio 2015
* [Git for Windows][git-link]

### Installation
Just run **bootstrap.sh** script from the Git Bash. This script will clone **tor** and all its dependencies into the local directory. The script will also automatically checkout to the branches which the Visual Studio projects has been built for:

* **tor**: tor-0.2.7.6
* **openssl**: OpenSSL_1_0_1s
* **zlib**: v1.2.8
* **libevent**: release-2.1.5-beta

After the clone, the **bootstrap.sh** script will apply the patch from following location: **vs2015/tor/tor\_win32\_patch.diff**. Apart from fixing the **tor** configuration headers for  VS2015, this patch also includes fix for building in x64 configuration.

The solution is set up so everything is statically linked into the final executable binary, but nothing prevents you in changing **Configuration Type** of the libraries to the **DLL**. It should build without any problems.

  [tor-link]: <https://www.torproject.org/>
  [git-link]: <https://git-scm.com/download/win>
