local M = {}

local p = require('gruber-darker.palette')

local highlight_groups = {
  --Main
  Normal                     = { fg = p.gruber_darker_fg, bg = p.gruber_darker_bg },
  NormalNC                   = { link = "Normal" },
  MsgArea                    = { fg = p.gruber_darker_grey_custom, bg = p.gruber_darker_bg },
  NormalFloat                = { link = "Normal" },
  Bold                       = { bold = true },
  Italic                     = { italic = true },
  Underlined                 = { underline = true },
  Visual                     = { bg = p.gruber_darker_bg_p3, fg = p.gruber_darker_fg },
  Directory                  = { fg = p.gruber_darker_quartz, bold = true },
  IncSearch                  = { fg = p.gruber_darker_fg_1, bg = p.gruber_darker_niagara_m1 },
  Search                     = { link = "IncSearch" },
  Substitute                 = { link = "IncSearch" },
  MatchParen                 = { fg = "NONE", bg = p.gruber_darker_bg_p4 },
  ModeMsg                    = { link = "Normal" },
  MoreMsg                    = { link = "Normal" },
  WarningMsg                 = { fg = p.gruber_darker_yellow },
  FloatBorder                = { fg = p.gruber_darker_grey_custom, bg = "NONE" },
  NonText                    = { fg = p.grey, bg = p.gruber_darker_bg },
  LineNr                     = { bg = p.gruber_darker_bg, fg = p.gruber_darker_grey_custom },
  LineNrAbove                = { link = "LineNr" },
  LineNrBelow                = { link = "LineNr" },
  CursorLine                 = { fg = "NONE", bg = "NONE" },
  CursorLineNr               = { fg = p.gruber_darker_yellow, bg = p.gruber_darker_bg },
  StatusLine                 = { fg = p.gruber_darker_quartz, bg = p.gruber_darker_bg_p1 },
  WinSeparator               = { fg = p.gruber_darker_grey_custom, bg = "NONE" },
  SignColumn                 = { bg = p.gruber_darker_bg },
  Colorcolumn                = { link = "StatusLine" },
  TabLineFill                = { fg = "NONE", bg = "NONE" },
  TabLine                    = { fg = "NONE", bg = "NONE" },
  TabLineSel                 = { fg = "NONE", bg = "NONE" },
  Pmenu                      = { link = "Normal" },
  PmenuSel                   = { bg = p.gruber_darker_bg_p3 },
  PmenuThumb                 = { bg = p.gruber_darker_grey_custom },
  PmenuSbar                  = { bg = p.gruber_darker_bg_p1 },
  Conceal                    = { link = "Operator" },
  Title                      = { link = "Normal" },
  Question                   = { link = "Normal" },
  WildMenu                   = { link = "Pmenu" },
  Folded                     = { fg = p.gruber_darker_grey_custom },
  FoldColumn                 = { link = "Folded" },
  Error                      = { fg = p.gruber_darker_red },
  ErrorMsg                   = { link = "Error" },
  -- Spelling
  SpellBad                   = { underline = true },
  SpellLocal                 = { underline = true },
  SpellCap                   = { underline = true },
  SpellRare                  = { underline = true },
  -- Syntax
  Boolean                    = { link = "String" },
  Character                  = { link = "Normal" },
  Comment                    = { fg = p.gruber_darker_grey_custom },
  Conditional                = { link = "Keyword" },
  Constant                   = { link = "Type" },
  Define                     = { link = "Keyword" },
  Delimiter                  = { fg = p.gruber_darker_grey_custom },
  Float                      = { link = "Number" },
  Function                   = { fg = p.gruber_darker_niagara },
  Identifier                 = { fg = p.gruber_darker_fg_1 },
  Include                    = { link = "PreProc" },
  Keyword                    = { fg = p.gruber_darker_yellow, bold = true },
  Label                      = { link = "String" },
  Number                     = { link = "Identifier" },
  Operator                   = { fg = p.gruber_darker_grey_fg },
  PreProc                    = { fg = p.gruber_darker_quartz },
  Repeat                     = { link = "Keyword" },
  Special                    = { link = "Keyword" },
  SpecialChar                = { link = "String" },
  SpecialComment             = { link = "SpecialChar" },
  SpecialKey                 = { fg = p.gruber_darker_grey_custom, bg = p.gruber_darker_bg },
  Statement                  = { link = "Type" },
  StorageClass               = { link = "Keyword" },
  String                     = { fg = p.gruber_darker_green },
  Structure                  = { link = "Type" },
  Variable                   = { fg = p.gruber_darker_fg_1 },
  Tag                        = { link = "SpecialChar" },
  Todo                       = { fg = p.todo_fg, bg = p.todo_bg },
  Type                       = { fg = p.gruber_darker_quartz },
  Typedef                    = { link = "Type" },
  ["@text.todo"]             = { fg = p.todo_fg, bg = p.todo_bg },
  ["@text.note"]             = { fg = p.note_fg, bg = p.note_bg },
  ["@text.warning"]          = { fg = p.warning_fg, bg = p.gruber_darker_yellow_custom_m1 },
  ["@text.danger"]           = { fg = p.danger_fg, bg = p.gruber_darker_red_custom_m1 },
  ["@text.uri"]              = { fg = p.gruber_darker_niagara, underline = true },
  ["@unchecked_list_item"]   = { link = "normal" },
  ["@checked_list_item"]     = { fg = p.gruber_darker_grey_custom, strikethrough = true },
  ["@text.todo.unchecked"]   = { link = "@unchecked_list_item" },
  ["@text.todo.checked"]     = { link = "@checked_list_item" },
  ["@keyword"]               = { link = "Keyword" },
  ["@function"]              = { link = "Function" },
  ["@method"]                = { link = "Function" },
  ["@field"]                 = { link = "Identifier" },
  ["@constructor"]           = { link = "Function" },
  ["@repeat"]                = { link = "Repeat" },
  ["@label"]                 = { link = "String" },
  ["@variable"]              = { link = "Variable" },
  ["@type"]                  = { link = "Type" },
  ["@type.builtin"]          = { link = "Keyword" },
  ["@constant"]              = { link = "Type" },
  ["@variable.builtin"]      = { link = "Type" },
  ["@operator"]              = { fg = p.gruber_darker_grey_custom },
  ["@punctuation.special"]   = { link = "Specialchar" },
  ["@punctuation.bracket"]   = { link = "Normal" },
  ["@conditional"]           = { link = "Conditional" },
  ["@exception"]             = { link = "Exception" },
  -- Diff
  DiffAdd                    = { fg = "NONE", bg = p.gruber_darker_green_custom_m1 },
  DiffAdded                  = { fg = p.gruber_darker_green_custom, bg = "NONE" },
  DiffChange                 = { fg = "NONE", bg = p.gruber_darker_yellow_custom_m1 },
  DiffChanged                = { fg = p.gruber_darker_yellow_custom, bg = "NONE" },
  DiffDelete                 = { fg = "NONE", bg = p.gruber_darker_red_custom_m1 },
  DiffRemoved                = { fg = p.gruber_darker_red_custom, bg = "NONE" },
  DiffText                   = { fg = p.gruber_darker_green_custom, bg = "NONE", bold = true },
  -- Telescope
  TelescopeSelection         = { bg = p.gruber_darker_bg_p1 },
  TelescopeSelectionCaret    = { link = "TelescopeSelection" },
  TelescopeMatching          = { fg = p.gruber_darker_white, bold = true },
  --Git
  GitSignsAdd                = { fg = p.gruber_darker_green, bg = "NONE" },
  GitSignsChange             = { fg = p.gruber_darker_yellow, bg = "NONE" },
  GitSignsDelete             = { fg = p.gruber_darker_red, bg = "NONE" },
  --Diagnostic
  DiagnosticSignError        = { fg = p.gruber_darker_red_custom, bg = "NONE" },
  DiagnosticSignWarn         = { fg = p.gruber_darker_yellow, bg = "NONE" },
  DiagnosticSignHint         = { fg = p.gruber_darker_grey_custom, bg = "NONE" },
  DiagnosticSignInfo         = { fg = p.todo_fg, bg = "NONE" },
  DiagnosticError            = { link = "DiagnosticSignError" },
  DiagnosticWarn             = { link = "DiagnosticSignWarn" },
  DiagnosticHint             = { link = "DiagnosticSignHint" },
  DiagnosticInfo             = { link = "DiagnosticSignInfo" },
  --Languages
  ["@css.property_name"]     = { fg = p.gruber_darker_quartz },
  ["@c.primitive_type"]      = { link = "@type" },
  ["@c.function_identifier"] = { link = "@variable" },
  ["@js.template_string"]    = { link = "@variable" },
  --Scheme icon
  DevIconScheme              = { fg = p.gruber_darker_red },
  --Oil
  OilDir                     = { link = "Directory" },
  --Mason
  MasonHeader                = { link = "StatusLine" },
}

function M.setup()
  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'gruber-darker'

  local hi = vim.api.nvim_set_hl

  for name, style in pairs(highlight_groups) do hi(0, name, style) end
end

return M
