## [Base16](https://github.com/chriskempson/base16) themes for the [Textadept](https://orbitalquark.github.io/textadept/) editor

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

This repo tracks the latest Textadept 12 alpha changes.


To build or develop locally (e.g. with the Typescript Builder)
```shell
npm install base16-builder-typescript
npx base16-builder update
cp -r templates/ sources/templates/textadept/
npx base16-builder build --template textadept
# Simplify directory structure for this repo
mv themes/textadept/themes/*.lua themes
rm -r themes/textadept
```

### Base16 Themes

Base16: <https://github.com/chriskempson/base16>
