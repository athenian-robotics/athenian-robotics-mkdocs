# OSX Setup

## One-time Steps

Install the following pieces of software: 

### [XCode](http://developer.apple.com/xcode/)

### [Java 8](https://java.com/en/download/)

### [Homebrew](http://brew.sh)

The Homebrew homepage is [here](http://brew.sh).

Install *brew* on OSX with:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Upgrade installed packages with:
```bash
brew update
brew upgrade
```

Keep your brew-installed apps up to date with: 
```bash
brew list
```

Check the health of your `brew` configuration with:
```bash
brew doctor
```

Cleanup old files with:
```bash
brew prune
```

### [Python 2](https://www.python.org)
```bash
brew install python
```

### [Python 3](https://www.python.org)
```bash
brew install python3
```

### [pip](https://en.wikipedia.org/wiki/Pip_(package_manager))
```bash
sudo easy_install pip
```

### [GitHub Desktop](https://desktop.github.com)

### [maven](http://maven.apache.org)
```bash
brew install maven
```

### [gradle](http://maven.apache.org)
```bash
brew install gradle
```

### [httpie](https://github.com/jkbrzt/httpie)
```bash
brew install httpie
```

## Vim Setup

Create a *.vimrc* file containing this:
```bash
set ts=4 showmatch
set ruler laststatus=2 title hlsearch
syntax on
let python_highlight_all = 1
```

## Flush DNS cache
```bash
sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder
```

## Overview of OSX Applications

[https://github.com/jaywcjlove/awesome-mac](https://github.com/jaywcjlove/awesome-mac)