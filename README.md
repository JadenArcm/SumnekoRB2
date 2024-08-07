* Archived since this was kind of a pain to make (and update) and pretty much no one (expect me) used it

<h1 align="center"> Sumneko Robo Blast 2</h1>

This is a friendly repositiory that focus on giving some kind of support for SRB2 via [Sumneko](https://github.com/sumneko/)'s [Lua-Language-Server](https://github.com/sumneko/lua-language-server/) extension.

- Take note that this is made by ***hand***, with has a result of taking big amounts of time to make.
- This can be used on any text editor that supports the [Language Server Protocol](https://microsoft.github.io/language-server-protocol/) environment. ([VSCode](https://code.visualstudio.com/), [Sublime Text](https://www.sublimetext.com/), [NeoVim](https://neovim.io/), ...)

<br>
<h2 align="center"> What is inside?</h2>

> * Functions, a lot of them!
> * Classes? What are these..?
> * Constants.
> * Pain and suffering.

<br>
<h1 align="center"> Known issues</h1>

* Not everything is here, and everything may be outdated with the [SRB2 Wiki](https://wiki.srb2.org/wiki/) information.
* Pseudovariables (`$`) are not in vanilla Lua, and they will produce tons of errors if you use it most of the time.

<br>
<h1 align="center"> Recommended Settings</h1>

These settings should be in `Lua.diagnostics.disable` for a "good" experience, if you want.
> * `lowercase-global`: Why does this exist?
> * `undefined-global`: Since this repository is unfinished, of course.
> * `undefined-field`: Some fields for userdata may be missing.
> * `cast-local-type`, `param-type-mismatch` and `assign-type-mismatch`: I love a integer not matching a integer multiplied by **`65535`**.
