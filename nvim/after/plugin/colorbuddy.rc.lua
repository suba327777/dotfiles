local cb     = require("colorbuddy.init")

local Color  = cb.Color
local colors = cb.colors
local Group  = cb.Group
local styles = cb.styles

-- Color.new("white", "#ffffff")
-- Color.new("black", "#000000")

-- diagnostic colors
Color.new("diag_error", "#ff6b6b")
Color.new("diag_warn", "#f1c40f")
Color.new("diag_info", "#61afef")
Color.new("diag_hint", "#2ecc71")


-- -- base UI
Group.new("Normal", colors.white, colors.NONE, styles.NONE)
-- -- Group.new("CursorLine", colors.none, colors.none, styles.NONE)
Group.new("CursorLineNr", colors.diag_warn, colors.none, styles.NONE)
Group.new("Visual", colors.none, colors.none, styles.reverse)

-- short aliases
local cError = colors.diag_error
local cWarn  = colors.diag_warn
local cInfo  = colors.diag_info
local cHint  = colors.diag_hint

-- -- diagnostics
Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)

Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

Group.new("HoverBorder", cWarn, colors.none, styles.NONE)
