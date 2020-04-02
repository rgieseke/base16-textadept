## Themes for the [Textadept](http://foicica.com/textadept/) editor

### Installation

Clone the repository:

    cd ~/.textadept
    git clone https://github.com/rgieseke/textadept-themes.git themes

Set a theme by putting the following in your `~/.textadept/init.lua`, e.g. for
Solarized Light:

```lua
    buffer:set_theme(not CURSES and 'base16-solarized-light' or 'term')
```

### Preferences

The themes can be modified, as an example to make the fold margin stand out
more in a dark theme you could add

```lua
buffer:set_fold_margin_colour(true, buffer.property_int['color.base01'])
buffer:set_fold_margin_hi_colour(true, buffer.property_int['color.base02'])
```

to your `properties.lua` and make the line numbers brighter add

```lua
if not CURSES then
  ui.set_theme('base16-twilight-dark', {
    ['style.linenumber'] = 'fore:%(color.base07),back:%(color.base02)',
  })
end
```

to your `init.lua`.

### Base16 Themes

Build with Base16 Builder: <https://github.com/chriskempson/base16-builder>

Base16: <https://github.com/chriskempson/base16>

(Partial) Preview: <http://chriskempson.github.io/base16/>
