-- Base16 Theme: Snazzy
-- http://chriskempson.com/projects/base16/
-- Theme author: Chawye Hsu (https://github.com/chawyehsu) based on Hyper Snazzy Theme (https://github.com/sindresorhus/hyper-snazzy)
-- Template Repository: https://github.com/rgieseke/base16-textadept
-- Template adapted from Textadept's default templates
-- Copyright 2007-2020 Mitchell mitchell.att.foicica.com. MIT licensed.

local view, colors, styles = view, lexer.colors, lexer.styles

-- Base16 colors
colors.base00 = 0x362a28
colors.base01 = 0x3e3534
colors.base02 = 0x4f4543
colors.base03 = 0x7e7878
colors.base04 = 0xa9a5a5
colors.base05 = 0xe5e4e2
colors.base06 = 0xebf0ef
colors.base07 = 0xf0f1f1
colors.base08 = 0x575cff
colors.base09 = 0x439fff
colors.base0A = 0x9df9f3
colors.base0B = 0x8ef75a
colors.base0C = 0xfeed9a
colors.base0D = 0xffc757
colors.base0E = 0xc16aff
colors.base0F = 0x3c64b2

-- Default font.
if not font then
  font = WIN32 and 'Courier New' or OSX and 'Monaco' or
    'Bitstream Vera Sans Mono'
end
if not size then size = not OSX and 10 or 12 end

-- Predefined styles.
styles.default = {
  font = font, size = size, fore = colors.base05, back = colors.base00
}
styles.line_number = {fore = colors.base04, back = colors.base00}
--styles.control_char =
styles.indent_guide = {fore = colors.base03}
styles.call_tip = {fore = colors.base04, back = colors.base01}
styles.fold_display_text = {fore = colors.base01}

-- Token styles.
styles.class = {fore = colors.base0A}
styles.comment = {fore = colors.base03}
styles.constant = {fore = colors.base09}
styles.embedded = {fore = colors.base0F, back = colors.base01}
styles.error = {fore = colors.base08, italics = true}
styles['function'] = {fore = colors.base0D}
styles.identifier = {}
styles.keyword = {fore = colors.base0E}
styles.label = {fore = colors.base08}
styles.number = {fore = colors.base09}
styles.operator = {fore = colors.base05}
styles.preprocessor = {fore = colors.base0B}
styles.regex = {fore = colors.base0C}
styles.string = {fore = colors.base0B}
styles.type = {fore = colors.base0A}
styles.variable = {fore = colors.base08}
styles.whitespace = {}

-- Multiple Selection and Virtual Space
--view.additional_sel_alpha =
--view.additional_sel_fore =
--view.additional_sel_back =
--view.additional_caret_fore =

-- Caret and Selection Styles.
view:set_sel_fore(true, colors.base06)
view:set_sel_back(true, colors.base02)
--view.sel_alpha =
view.caret_fore = colors.base05
view.caret_line_back = colors.base01
--view.caret_line_back_alpha =

-- Fold Margin.
view:set_fold_margin_color(true, colors.base00)
view:set_fold_margin_hi_color(true, colors.base00)

-- Markers.
--view.marker_fore[textadept.bookmarks.MARK_BOOKMARK] = colors.base00
view.marker_back[textadept.bookmarks.MARK_BOOKMARK] = colors.base0B
--view.marker_fore[textadept.run.MARK_WARNING] = colors.base00
view.marker_back[textadept.run.MARK_WARNING] = colors.base0E
--view.marker_fore[textadept.run.MARK_ERROR] = colors.base00
view.marker_back[textadept.run.MARK_ERROR] = colors.base08
for i = view.MARKNUM_FOLDEREND, view.MARKNUM_FOLDEROPEN do -- fold margin
  view.marker_fore[i] = colors.base00
  view.marker_back[i] = colors.base03
  view.marker_back_selected[i] = colors.base02
end

-- Indicators.
view.indic_fore[ui.find.INDIC_FIND] = colors.base09
view.indic_alpha[ui.find.INDIC_FIND] = 255
view.indic_fore[textadept.editing.INDIC_BRACEMATCH] = colors.base06
view.indic_fore[textadept.editing.INDIC_HIGHLIGHT] = colors.base07
view.indic_alpha[textadept.editing.INDIC_HIGHLIGHT] = 64
view.indic_fore[textadept.snippets.INDIC_PLACEHOLDER] = colors.base04

-- Call tips.
view.call_tip_fore_hlt = colors.base06

-- Long Lines.
view.edge_color = colors.base02

-- Add red, green, and yellow for diff lexer.
colors.red = colors.base08
colors.green = colors.base0B
colors.yellow = colors.base0E
