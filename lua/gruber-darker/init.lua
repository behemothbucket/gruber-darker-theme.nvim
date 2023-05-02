local M = {}

local p = require('gruber-darker.palette')

local highlight_groups = {
  --Main
  Normal                      = { bg = p.gruber_darker_bg, fg = p.gruber_darker_fg },
  Bold                        = { bold = true },
  Italic                      = { italic = true },
  Underlined                  = { underline = true },
  Visual                      = { bg = p.gruber_darker_bg_p3, fg = p.gruber_darker_fg },
  Directory                   = { fg = p.gruber_darker_quartz, bold = true },
  IncSearch                   = { fg = p.gruber_darker_fg_1, bg = p.gruber_darker_niagara_m1 },
  Search                      = { link = "IncSearch" },
  Substitute                  = { link = "IncSearch" },
  MatchParen                  = { fg = "none", bg = p.gruber_darker_bg_p4 },
  ModeMsg                     = { link = "Normal" },
  MoreMsg                     = { link = "Normal" },
  WarningMsg                  = { fg = p.gruber_darker_yellow },
  FloatBorder                 = { fg = p.gruber_darker_grey_custom, bg = "none" },
  NonText                     = { link = "Normal" },
  LineNr                      = { bg = p.gruber_darker_bg, fg = p.gruber_darker_grey_custom },
  LineNrAbove                 = { link = "LineNr" },
  LineNrBelow                 = { link = "LineNr" },
  CursorLineNr                = { fg = p.gruber_darker_yellow, bg = p.gruber_darker_bg },
  StatusLine                  = { fg = p.gruber_darker_quartz, bg = p.gruber_darker_bg_p1 },
  StatusLineNC                = { link = "StatusLine" },
  WinSeparator                = { fg = p.gruber_darker_grey_custom, bg = "none" },
  SignColumn                  = { bg = p.gruber_darker_bg },
  Colorcolumn                 = { link = "StatusLine" },
  TabLineFill                 = { fg = "none", bg = "none" },
  TabLine                     = { fg = "none", bg = "none" },
  TabLineSel                  = { fg = "none", bg = "none" },
  Pmenu                       = { link = "Normal" },
  PmenuSel                    = { bg = p.gruber_darker_niagara_m2 },
  PmenuThumb                  = { bg = p.gruber_darker_bg_p3 },
  PmenuSbar                   = { link = "PmenuThumb" },
  Conceal                     = { link = "Operator" },
  Title                       = { link = "Normal" },
  Question                    = { link = "Normal" },
  WildMenu                    = { link = "Pmenu" },
  Folded                      = { fg = p.gruber_darker_grey_custom },
  FoldColumn                  = { link = "Folded" },
  Error                       = { fg = p.gruber_darker_red },
  ErrorMsg                    = { link = "Error" },
  -- Spelling
  SpellBad                    = { underline = true },
  SpellLocal                  = { underline = true },
  SpellCap                    = { underline = true },
  SpellRare                   = { underline = true },
  -- Syntax
  Boolean                     = { link = "String" },
  Character                   = { link = "Normal" },
  Comment                     = { fg = p.gruber_darker_grey_custom, italic = true },
  Conditional                 = { link = "Keyword" },
  Constant                    = { link = "Type" },
  Define                      = { link = "Keyword" },
  Delimiter                   = { link = "Special" },
  Float                       = { link = "Number" },
  Function                    = { fg = p.gruber_darker_niagara },
  Identifier                  = { fg = p.gruber_darker_fg_1 },
  Include                     = { link = "PreProc" },
  Keyword                     = { p.gruber_darker_yellow, bold = true },
  Label                       = { link = "String" },
  Number                      = { link = "Identifier" },
  Operator                    = { link = "Variable" },
  PreProc                     = { fg = p.gruber_darker_quartz },
  Repeat                      = { link = "Keyword" },
  Special                     = { link = "Keyword" },
  SpecialChar                 = { link = "String" },
  SpecialComment              = { link = "SpecialChar" },
  SpecialKey                  = { fg = p.gruber_darker_grey_custom, bg = p.gruber_darker_bg },
  Statement                   = { link = "Type" },
  StorageClass                = { link = "Keyword" },
  String                      = { fg = p.gruber_darker_green },
  Structure                   = { link = "Type" },
  Tag                         = { link = "SpecialChar" },
  Todo                        = { fg = p.todo_fg, bg = p.todo_bg },
  Type                        = { fg = p.gruber_darker_quartz },
  Typedef                     = { link = "Type" },
  ["@text.todo"]              = { fg = "#4BA8FF", bg = "#0b1e33" },
  ["@text.note"]              = { fg = "#FF57FF", bg = "#1b0e23" },
  ["@text.warning"]           = { fg = "#FF9900", bg = "#392a13" },
  ["@text.danger"]            = { fg = "#FF8B64", bg = "#391a13" },
  ["@text.uri"]               = { fg = p.gruber_darker_niagara, underline = true },
  ["@unchecked_list_item"]    = { link = "Normal" },
  ["@checked_list_item"]      = { fg = p.gruber_darker_grey_custom, strikethrough = true },
  ["@text.todo.unchecked"]    = { link = "@unchecked_list_item" },
  ["@text.todo.checked"]      = { link = "@checked_list_item" },
  ["@keyword"]                = { link = "Keyword" },
  ["@function"]               = { link = "Function" },
  ["@method"]                 = { link = "Function" },
  ["@field"]                  = { link = "Identifier" },
  ["@constructor"]            = { link = "Function" },
  ["@repeat"]                 = { link = "Repeat" },
  ["@label"]                  = { link = "String" },
  ["@variable"]               = { link = "Variable" },
  ["@type"]                   = { link = "Type" },
  ["@type.builtin"]           = { link = "Keyword" },
  ["@constant"]               = { link = "Type" },
  ["@variable.builtin"]       = { link = "Type" },
  ["@operator"]               = { link = "Variable" },
  ["@punctuation.special"]    = { link = "SpecialChar" },
  ["@punctuation.bracket"]    = { link = "Normal" },
  ["@conditional"]            = { link = "Conditional" },
  ["@exception"]              = { link = "Exception" },
  -- Diff
  DiffAdd                     = { fg = "none", bg = p.gruber_darker_green_custom_m1 },
  DiffAdded                   = { fg = p.gruber_darker_green_custom, bg = "none" },
  DiffChange                  = { fg = "none", bg = p.gruber_darker_yellow_custom_m1 },
  DiffChanged                 = { fg = p.gruber_darker_yellow_custom, bg = "none" },
  DiffDelete                  = { fg = "none", bg = p.gruber_darker_red_custom_m1 },
  DiffRemoved                 = { fg = p.gruber_darker_red_custom, bg = "none" },
  DiffText                    = { fg = p.gruber_darker_green_custom, bg = "none", bold = true },
  DiffLine                    = { fg = p.gruber_darker_quartz },
  -- Telescope
  TelescopeSelection          = { bg = p.gruber_darker_bg_p1 },
  TelescopeSelectionSelection = { link = "TelescopeSelection" },
  TelescopeMatching           = { fg = p.gruber_darker_white, bold = true },
  --Git
  GitSignsAdd                 = { fg = p.gruber_darker_green_green, bg = "none" },
  GitSignsChange              = { fg = p.gruber_darker_yellow, bg = "none" },
  GitSignsDelete              = { fg = p.gruber_darker_red, bg = "none" },
  --Diagnostic
  DiagnosticSignError         = { fg = p.error_fg, bg = "none" },
  DiagnosticSignWarn          = { fg = p.warn_fg, bg = "none" },
  DiagnosticSignHint          = { fg = p.hint_fg, bg = "none" },
  DiagnosticSignInfo          = { fg = p.info_fg, bg = "none" },
  DiagnosticError             = { link = "DiagnosticSignError" },
  DiagnosticWarn              = { link = "DiagnosticSignWarn" },
  DiagnosticHint              = { link = "DiagnosticSignHint" },
  DiagnosticInfo              = { link = "DiagnosticSignInfo" },
  ["@css.property_name"]      = { fg = p.gruber_darker_quartz },
  ["@c.primitive_type"]       = { link = "@type" },
  ["@c.function_identifier"]  = { link = "@variable" },

  --Scheme icon
  DevIconScheme               = { fg = p.gruber_darker_red },
  --Oil
  OilDir                      = { link = "Directory" },
  --Mason
  MasonHeader                 = { link = "StatusLine" },
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
