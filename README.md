Homewbrew formulae
==================

Custom [Homebrew tap].

[Homebrew tap]: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/brew-tap.md

Usage
-----

Tap this repository:

```sh
brew tap RobertAudi/formulae https://github.com/RobertAudi/homebrew-formulae.git
```

Install the packages it contains like any other Homebrew package:

```sh
brew install sparc
```

Formulae
--------

- [appswitch][]: Switch, hide, show, quit, kill or list macOS applications from the command line or scripts.
- [asprint][]: Command-line program for OS X that pretty-prints out contents of compiled AppleScript (`.scpt`) files using ANSI escape sequences
- [cnsc][]: Angular commits minus scope and stuff
- [git-branch-name][]: Optimally fast branch name command for Git
- [lc][]: A command line application which scans directories and identifies what software license things are under
- [lr][]: List files, recursively
- [necho][]: Minimal, sensible alternatives to `echo(1)`
- [nq][]: Unix command line queue utility
- [searchfs][]: Command line tool to quickly search by filename on entire APFS and HFS+ volumes using the file system catalog.
- [sparc][]: Sparklines for your shell ▄ ▇ ▂ ▁ ▅ ▃
- [tmuxifier][]: Powerful session, window & pane management for Tmux
- [xe][]: Simple `xargs` and apply replacement
- [xiny][]: A simple command line tool for converting between various units of measurement

[appswitch]: https://sabi.net/nriley/software/#appswitch
[asprint]: http://hasseg.org/asprint
[cnsc]: https://github.com/RobertAudi/cnsc
[git-branch-name]: https://github.com/itchyny/git-branch-name
[lc]: https://github.com/boyter/lc
[lr]: https://github.com/chneukirchen/lr
[necho]: https://github.com/chneukirchen/necho
[nq]: https://github.com/chneukirchen/nq
[searchfs]: https://sveinbjorn.org/searchfs
[sparc]: https://github.com/RobertAudi/sparc
[tmuxifier]: https://github.com/jimeh/tmuxifier
[xe]: https://github.com/chneukirchen/xe
[xiny]: https://xiny.sh/

### Customized formulae

These formulae are present in homebrew-core but I added them to this tap with customizations.

- [moreutils][]: Collection of tools that nobody wrote when UNIX was young. **Build options restored**

[moreutils]: https://joeyh.name/code/moreutils/

Development
-----------

Generate `sha256` hash of the installed binaries:

```sh
$ sha256sum <file>
```

Test the formula:

```sh
$ brew test --debug ./Formula/<formula>.rb
```
