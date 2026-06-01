## Base16 themes for the [Textadept](https://orbitalquark.github.io/textadept/) editor

### Installation

Clone the repository, e.g.:

    cd ~/.textadept/themes
    git clone https://github.com/rgieseke/base16-textadept.git

Copy or symlink all or some themes into `.textadept/themes`

Set a theme by putting the following in your `~/.textadept/init.lua`, e.g. for
Solarized Light:

```lua
    view:set_theme(UI ~= 'terminal' and 'base16-solarized-light' or 'term')
```

This repo tracks the latest Textadept 13 changes.

The themes and tools from [Tinted Theming](https://github.com/tinted-theming/) are used.

Preview: <https://tinted-theming.github.io/tinted-gallery/>

To build or develop locally (using [`tinted-builder-rust`](https://github.com/tinted-theming/tinted-builder-rust)):


Sync the schemes:

```shell
tinted-builder-rust sync
```



To generate the themes from `default.mustache`:

```
tinted-builder-rust build base16/templates/textadept
```

If this repo is in `.textadept/themes/base16-textadept` one can symlink the themes so Textadept can find them:

```shell
ln -s base16-textadept/base16/templates/textadept/themes/base16*.lua .
```

### Base16 Themes

Tinted Theming: <https://github.com/tinted-theming/>
Base16: <https://github.com/chriskempson/base16>
