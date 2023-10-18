-- Base16 Theme: Black Metal (Burzum)
-- http://chriskempson.com/projects/base16/
-- Theme author: metalelf0 (https://github.com/metalelf0)
-- Template Repository: https://github.com/rgieseke/base16-textadept
-- Template adapted from Textadept's default themes
-- Copyright 2007-2023 Mitchell mitchell.att.foicica.com. MIT licensed.

local view, colors, styles = view, view.colors, view.styles

-- Base16 colors
colors.base00 = 0x000000
colors.base01 = 0x121212
colors.base02 = 0x222222
colors.base03 = 0x333333
colors.base04 = 0x999999
colors.base05 = 0xc1c1c1
colors.base06 = 0x999999
colors.base07 = 0xc1c1c1
colors.base08 = 0x87875f
colors.base09 = 0xaaaaaa
colors.base0A = 0xaabb99
colors.base0B = 0xcceedd
colors.base0C = 0xaaaaaa
colors.base0D = 0x888888
colors.base0E = 0x999999
colors.base0F = 0x444444

-- Default font.
if not font then font = WIN32 and 'Consolas' or OSX and 'Monaco' or 'Monospace' end
if not size then size = not OSX and 10 or 12 end

-- Predefined styles.
styles[view.STYLE_DEFAULT] = {
  font = font, size = size, fore = colors.base05, back = colors.base00
}
styles[view.STYLE_LINENUMBER] = {fore = colors.base03, back = colors.base01}
styles[view.STYLE_BRACELIGHT] = {fore = colors.base0E, bold = true}
styles[view.STYLE_BRACEBAD] = {fore = colors.base08}
-- styles[view.STYLE_CONTROLCHAR] = {}
styles[view.STYLE_INDENTGUIDE] = {fore = colors.base03}
styles[view.STYLE_CALLTIP] = {fore = colors.base04, back = colors.base01}
styles[view.STYLE_FOLDDISPLAYTEXT] = {fore = colors.base01, back = colors.base03}

-- Tag styles.
styles[lexer.ANNOTATION] = {fore = colors.base08}
styles[lexer.ATTRIBUTE] = {fore = colors.base0A}
styles[lexer.BOLD] = {bold = true}
styles[lexer.CLASS] = {fore = colors.base0A}
styles[lexer.CODE] = {eol_filled = true}
styles[lexer.COMMENT] = {fore = colors.base03}
styles[lexer.CONSTANT] = {fore = colors.base09}
-- styles[lexer.CONSTANT_BUILTIN] = {}
styles[lexer.EMBEDDED] = {fore = colors.base0F, back = colors.base01}
styles[lexer.ERROR] = {fore = colors.base08}
-- styles[lexer.FUNCTION] = {}
styles[lexer.FUNCTION_BUILTIN] = {fore = colors.base0D}
-- styles[lexer.FUNCTION_METHOD] = {}
styles[lexer.HEADING] = {bold = true}
-- styles[lexer.IDENTIFIER] = {}
styles[lexer.ITALIC] = {italic = true}
styles[lexer.KEYWORD] = {fore = colors.base0E}
styles[lexer.LABEL] = {fore = colors.base08}
styles[lexer.LINK] = {underline = true}
-- styles[lexer.LIST] = {}
styles[lexer.NUMBER] = {fore = colors.base09}
styles[lexer.OPERATOR] = {fore = colors.base05}
styles[lexer.PREPROCESSOR] = {fore = colors.base0B}
styles[lexer.REFERENCE] = {underline = true}
styles[lexer.REGEX] = {fore = colors.base0C}
styles[lexer.STRING] = {fore = colors.base0B}
styles[lexer.TAG] = {}
styles[lexer.TYPE] = {fore = colors.base0A}
styles[lexer.UNDERLINE] = {underline = true}
-- styles[lexer.VARIABLE] = {}
styles[lexer.VARIABLE_BUILTIN] = {fore = colors.base08}
-- styles[lexer.WHITESPACE] = {}

-- CSS.
styles.property = styles[lexer.ATTRIBUTE]
-- styles.pseudoclass = {}
-- styles.pseudoelement = {}
-- Diff.
styles.addition = {fore = colors.base0B}
styles.deletion = {fore = colors.base08}
styles.change = {fore = colors.base0E}
-- HTML.
styles.tag_unknown = styles.tag .. {italic = true}
styles.attribute_unknown = styles.attribute .. {italic = true}
-- Latex, TeX, and Texinfo.
styles.command = styles[lexer.KEYWORD]
styles.command_section = styles[lexer.HEADING]
styles.environment = styles[lexer.TYPE]
styles.environment_math = styles[lexer.NUMBER]
-- Makefile.
-- styles.target = {}
-- Markdown.
-- styles.hr = {}
-- Python.
styles.keyword_soft = {}
-- XML.
-- styles.cdata = {}
-- YAML.
styles.error_indent = {back = colors.base08}

-- Element colors.
-- view.element_color[view.ELEMENT_SELECTION_TEXT] =
view.element_color[view.ELEMENT_SELECTION_BACK] = colors.base02
-- view.element_color[view.ELEMENT_SELECTION_ADDITIONAL_TEXT] =
view.element_color[view.ELEMENT_SELECTION_ADDITIONAL_BACK] = colors.base03
-- view.element_color[view.ELEMENT_SELECTION_SECONDARY_TEXT] =
view.element_color[view.ELEMENT_SELECTION_SECONDARY_BACK] = colors.base03
-- view.element_color[view.ELEMENT_SELECTION_INACTIVE_TEXT] =
view.element_color[view.ELEMENT_SELECTION_INACTIVE_BACK] = colors.base02
view.element_color[view.ELEMENT_CARET] = colors.base05
-- view.element_color[view.ELEMENT_CARET_ADDITIONAL] =
if view ~= ui.command_entry then
	view.element_color[view.ELEMENT_CARET_LINE_BACK] = colors.base03 | 0x60000000
end
view.caret_line_layer = view.LAYER_UNDER_TEXT

-- Fold Margin.
view:set_fold_margin_color(true, colors.base00)
view:set_fold_margin_hi_color(true, colors.base00)

-- Markers.
-- view.marker_fore[textadept.bookmarks.MARK_BOOKMARK] = colors.base01
view.marker_back[textadept.bookmarks.MARK_BOOKMARK] = colors.base0D
-- view.marker_fore[textadept.run.MARK_WARNING] =
view.marker_back[textadept.run.MARK_WARNING] = colors.base0E
-- view.marker_fore[textadept.run.MARK_ERROR] =
view.marker_back[textadept.run.MARK_ERROR] = colors.base08
for i = buffer.MARKNUM_FOLDEREND, buffer.MARKNUM_FOLDEROPEN do -- fold margin
  view.marker_fore[i] = colors.base00
  view.marker_back[i] = colors.base02
  view.marker_back_selected[i] = colors.base03
end

-- Indicators.
view.indic_fore[ui.find.INDIC_FIND] = colors.base0E
view.indic_alpha[ui.find.INDIC_FIND] = 0x80
view.indic_fore[textadept.editing.INDIC_HIGHLIGHT] = colors.base09
view.indic_alpha[textadept.editing.INDIC_HIGHLIGHT] = 0x80
view.indic_fore[textadept.snippets.INDIC_PLACEHOLDER] = colors.base03
view.indic_fore[textadept.run.INDIC_WARNING] = colors.base0E
view.indic_fore[textadept.run.INDIC_ERROR] = colors.base08

-- Call tips.
view.call_tip_fore_hlt = colors.base06

-- Long Lines.
view.edge_color = colors.base02

-- Find & replace pane entries.
ui.find.entry_font = font .. ' ' .. size
