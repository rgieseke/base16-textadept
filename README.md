## Base16 themes for the [Textadept](https://orbitalquark.github.io/textadept/) editor

### Installation

Clone the repository, e.g.:

    cd ~/.textadept/themes
    git clone https://github.com/rgieseke/base16-textadept.git

Copy or symlink all or some themes into `.textadept/themes`

Set a theme by putting the following in your `~/.textadept/init.lua`, e.g. for
Solarized Light:

```lua
    view:set_theme(not CURSES and 'base16-solarized-light' or 'term')
```

This repo tracks the latest Textadept 12 changes.

The themes and tools from [Tinted Theming](https://github.com/tinted-theming/) are used.

Preview: <https://tinted-theming.github.io/tinted-gallery/>

To build or develop locally (Using [`base16-builder-node`](https://github.com/tinted-theming/base16-builder-node)):

```shell
npm install base16-builder-node
```

Clone (or update) the schemes:

```shell
cd base16
git clone https://github.com/tinted-theming/base16-schemes.git schemes
```

To generate the themes from `default.mustache`:

```
npx base16 build base16 --prefix base16-
```

If this repo is in `.textadept/themes/base16-textadept` one can symlink the themes so Textadept can find them:

```shell
ln -s base16-textadept/base16/templates/textadept/themes/base16*.lua .
```

### Base16 Themes

Tinted Theming: <https://github.com/tinted-theming/>
Base16: <https://github.com/chriskempson/base16>
