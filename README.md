# Sumneko Robo Blast 2
This is a friendly repositiory that focus on giving some kind of support for SRB2 via [Sumneko](https://github.com/sumneko/)'s [Lua-Language-Server](https://github.com/sumneko/lua-language-server/) extension.

- Take note that this is made by ***hand***, with has a result of taking big amounts of time to make.
- This can be used on any text editor that supports the LSP (**L**anguage **S**erver **P**rotocol) environment. ([VSCode](https://code.visualstudio.com/), [Sublime Text](https://www.sublimetext.com/), [NeoVim](https://neovim.io/), etc...)

## What does this include?
* Functions, a lot of them!
* Classes? What are these..?
* Constants.
* Pain and suffering.

# Known issues
* Not everything is here, and everything may be outdated with the [SRB2Wiki](https://wiki.srb2.org/wiki/) information.
* Pseudovariables [`$`] are not in vanilla Lua, and they will produce tons of errors if you use it most of the time.

# Settings?
I recommend these settings in `"Lua.diagnostics.disable"` for a "good" experience:
> * `lowercase-global`: Why does this exist?
> * `undefined-global`: Since this repository is unfinished, of course.
> * `undefined-field`: Some fields for userdata may be missing.
> * `cast-local-type`, `param-type-mismatch` and `assign-type-mismatch`: Weirdness.