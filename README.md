## Themes for the [Textadept](http://foicica.com/textadept/) editor

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

### Preferences

The themes can be modified, as an example to make the line numbers stand out
more add in  your `init.lua`:

```lua
if not CURSES then
  view:set_theme('base16-twilight', {
    ['style.linenumber'] = 'fore:%(color.base07),back:%(color.base02)',
  })
end
```

### Base16 Themes

Base16: <https://github.com/chriskempson/base16>
