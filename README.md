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

- [asprint][]: Command-line program for OS X that pretty-prints out contents of compiled AppleScript (`.scpt`) files using ANSI escape sequences
- [cnsc][]: Angular commits minus scope and stuff
- [git-branch-name][]: Optimally fast branch name command for Git
- [lc][]: A command line application which scans directories and identifies what software license things are under
- [lr][]: List files, recursively
- [necho][]: Minimal, sensible alternatives to `echo(1)`
- [nq][]: Unix command line queue utility
- [osx-cpu-temp][]: Outputs current CPU temperature for OSX
- [pidpath][]: Get an executable's path from a pid
- [sparc][]: Sparklines for your shell ▄ ▇ ▂ ▁ ▅ ▃
- [tmuxifier][]: Powerful session, window & pane management for Tmux
- [xe][]: Simple `xargs` and apply replacement
- [xiny][]: A simple command line tool for converting between various units of measurement

[asprint]: http://hasseg.org/asprint
[cnsc]: https://github.com/RobertAudi/cnsc
[git-branch-name]: https://github.com/itchyny/git-branch-name
[lc]: https://github.com/boyter/lc
[lr]: https://github.com/chneukirchen/lr
[necho]: https://github.com/chneukirchen/necho
[nq]: https://github.com/chneukirchen/nq
[osx-cpu-temp]: https://github.com/lavoiesl/osx-cpu-temp
[pidpath]: https://github.com/jb55/pidpath
[sparc]: https://github.com/RobertAudi/sparc
[tmuxifier]: https://github.com/jimeh/tmuxifier
[xe]: https://github.com/chneukirchen/xe
[xiny]: https://xiny.sh/

Development
-----------

Generate `sha256` hash of the installed binaries:

```sh
$ sha256sum <file>
```
