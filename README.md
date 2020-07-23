## [Base16](http://chriskempson.com/projects/base16/) Themes for the [Textadept](http://foicica.com/textadept/) editor

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

This repo tracks the latest changes in TA 11 alpha development.
Textadept 10.8 users need `buffer:set_theme` and this commit: https://github.com/rgieseke/base16-textadept/tree/54d635482a3445fb47c2771e7e80a096321e8589


To build or develop locally (e.g. with the Typescript Builder)
```shell
npm install base16-builder-typescript
./node_modules/.bin/base16-builder update
cp -r templates/ sources/templates/textadept/
./node_modules/.bin/base16-builder build --template textadept
# Simplify directory structure for this repo
mv themes/textadept/themes/*.lua themes
rm -r themes/textadept
```

### Base16 Themes

Base16: <https://github.com/chriskempson/base16>
