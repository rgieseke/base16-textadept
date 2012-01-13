-- Copyright 2007-2011 Mitchell mitchell<att>caladbolg.net. See LICENSE.
-- Tomorrow Night Eighties editor theme for Textadept.
--
-- Port of Chris Kempson's Tomorrow theme
-- (https://github.com/ChrisKempson/Tomorrow-Theme)
-- for Textadept by Robert Gieseke

-- Please note this theme is in a separate Lua state than Textadept's main one.
-- This means the global variables like 'buffer', 'view', and 'gui' are not
-- available here. Only the variables in the 'lexer' module are.

local l, color, style = lexer, lexer.color, lexer.style

l.colors = {
  background   = color('2d', '2d', '2d'),
  current_line = color('39', '39', '39'),
  selection    = color('51', '51', '51'),
  foreground   = color('cc', 'cc', 'cc'),
  comment      = color('99', '99', '99'),
  red          = color('f2', '77', '7a'),
  orange       = color('f9', '91', '57'),
  yellow       = color('ff', 'cc', '66'),
  green        = color('99', 'cc', '99'),
  aqua         = color('66', 'cc', 'cc'),
  blue         = color('66', '99', 'cc'),
  purple       = color('cc', '99', 'cc'),
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
