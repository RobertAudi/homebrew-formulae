Homewbrew formulae
==================

Custom [Homebrew tap].

[Homebrew tap]: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/brew-tap.md

Usage
-----

Tap this repository:

```sh
brew tap RobertAudi/formulae https://0x49.0x2a.xyz/RobertAudi/homebrew-formulae.git
```

Install the packages it contains like any other Homebrew package:

```sh
brew install sparc
```

Development
-----------

Generate `sha256` hash:

```sh
$ sha256sum Formula/<formula>.rb
```
