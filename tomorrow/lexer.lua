-- Copyright 2007-2011 Mitchell mitchell<att>caladbolg.net. See LICENSE.
-- Tomorrow editor theme for Textadept.
--
-- Port of Chris Kempson's Tomorrow theme
-- (https://github.com/ChrisKempson/Tomorrow-Theme)
-- for Textadept by Robert Gieseke

-- Please note this theme is in a separate Lua state than Textadept's main one.
-- This means the global variables like 'buffer', 'view', and 'gui' are not
-- available here. Only the variables in the 'lexer' module are.

local l, color, style = lexer, lexer.color, lexer.style

l.colors = {
  background = color('ff', 'ff', 'ff'),
  current_line = color('ef', 'ef', 'ef'),
  selection = color('d6', 'd6', 'd6'),
  foreground = color('4d', '4d', '4c'),
  comment = color('8e', '90', '8c'),
  red = color('c8', '28', '29'),
  orange = color('f5', '87', '1f'),
  yellow = color('ea', 'b7', '00'),
  green = color('71', '8c', '00'),
  aqua = color('3e', '99', '9f'),
  blue = color('42', '71', 'ae'),
  purple = color('89', '59', 'a8'),
}

l.style_nothing    = style {                                    }
l.style_class      = style { fore = l.colors.yellow             }
l.style_comment    = style { fore = l.colors.comment            }
l.style_constant   = style { fore = l.colors.orange             }
l.style_definition = style { fore = l.colors.yellow             }
l.style_error      = style { fore = l.colors.red, italic = true }
l.style_function   = style { fore = l.colors.blue               }
l.style_keyword    = style { fore = l.colors.purple             }
l.style_label      = style { fore = l.colors.orange             }
l.style_number     = style { fore = l.colors.orange             }
l.style_operator   = style { fore = l.colors.aqua               }
l.style_regex      = style { fore = l.colors.red                }
l.style_string     = style { fore = l.colors.green              }
l.style_preproc    = style { fore = l.colors.purple             }
l.style_tag        = style { fore = l.colors.purple             }
l.style_type       = style { fore = l.colors.red                }
l.style_variable   = style { fore = l.colors.red                }
l.style_whitespace = style {                                    }
l.style_embedded   = l.style_tag..{ back = l.colors.background  }
l.style_identifier = l.style_nothing

-- Default styles.
local font_face = '!Bitstream Vera Sans Mono'
local font_size = 10
if WIN32 then
  font_face = '!Courier New'
elseif OSX then
  font_face = '!Monaco'
  font_size = 12
end
l.style_default = style {
  font = font_face,
  size = font_size,
  fore = l.colors.foreground,
  back = l.colors.background
}
l.style_line_number = style { fore = l.colors.comment, back = l.colors.background }
l.style_bracelight = style { fore = l.colors.blue }
l.style_bracebad = style { fore = l.colors.red }
l.style_controlchar = l.style_nothing
l.style_indentguide = style {
  fore = l.colors.foreground, back = l.colors.background
}
l.style_calltip = style {
  fore = l.colors.foreground, back = l.colors.background
}
