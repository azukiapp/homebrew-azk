# Homebrew azk

A repository with all formulas related to install [azk][azk].

## Requirements

* [Homebrew][homebrew]

## Installation

Azk requires [VirtualBox][virtualbox_dl], using [Homebrew Cask][homebrew_cask]? It makes installing VirtualBox super easy!

```sh
brew install caskroom/cask/brew-cask
brew cask install virtualbox --appdir=/Applications
```

And now tap and this repository:

```sh
brew install azukiapp/azk/azk
```

## Uninstall tap

```sh
rm -rf /usr/local/Library/Taps/azukiapp-azk
brew cleanup -s --force
brew prune
```

## License

"Azuki", "Azk" and the Azuki logo are copyright (c) 2013-2014 Azuki Serviços de Internet LTDA.

Azk source code is released under Apache 2 License.

Check LEGAL and LICENSE files for more information.

[azk]: http://azk.io
[homebrew]: http://brew.sh
[virtualbox_dl]: http://www.vagrantup.com/downloads.html
[homebrew_cask]: https://github.com/phinze/homebrew-cask
