local main = {
  gruber_darker_fg          = "#e4e4ef",
  gruber_darker_fg_1        = "#f4f4ff",
  gruber_darker_fg_2        = "#f5f5f5",
  gruber_darker_white       = "#ffffff",
  gruber_darker_black       = "#000000",
  gruber_darker_bg_m1       = "#101010",
  gruber_darker_bg          = "#181818",
  gruber_darker_bg_p1       = "#282828",
  gruber_darker_bg_p2       = "#453d41",
  gruber_darker_bg_p3       = "#484848",
  gruber_darker_bg_p4       = "#52494e",
  gruber_darker_red_m1      = "#c73c3f",
  gruber_darker_red         = "#f43841",
  gruber_darker_red_p1      = "#ff4f58",
  gruber_darker_green       = "#73c936",
  gruber_darker_yellow      = "#ffdd33",
  gruber_darker_brown       = "#cc8c3c",
  gruber_darker_quartz      = "#95a99f",
  gruber_darker_niagara_m2  = "#303540",
  gruber_darker_niagara_m1  = "#565f73",
  gruber_darker_niagara     = "#96a6c8",
  gruber_darker_wisteria    = "#9e95c7",
  gruber_darker_grey_custom = "#7a7a7a",
}

local text = {
  todo_fg = "#4ba8ff",
  todo_bg = "#0b1e33",
  note_fg = "#ff57fF",
  note_bg = "#1b0e23",
  warning_fg = "#ff9900",
  warning_bg = "#392a13",
  danger_fg = "#ff8b64",
  danger_bg = "#391a13",
  uri_fg = main.gruber_darker_niagara,
  uri_bg = "NONE",
}

local diff = {
  add_fg = "NONE",
  add_bg = "#0a2517",
  added_fg = "#369432",
  added_bg = "NONE",
  change_fg = "NONE",
  change_bg = text.warning_bg,
  changed_fg = "#afa100",
  changed_bg = "NONE",
  delete_fg = "NONE",
  delete_bg = text.danger_bg,
  removed_fg = "#960019",
  removef_bg = "NONE",
  text_fg = text.diff_added_fg,
  text_bg = text.diff_added_bg,
  line_fg = main.gruber_darker_quartz,
}

local diagnostic = {
  error_fg = main.gruber_darker_red,
  error_bg = "NONE",
  warn_fg = main.gruber_darker_yellow,
  warn_bg = "NONE",
  hint_fg = "#7a7a7a",
  hint_bg = "NONE",
  info_fg = text.todo_fg,
  info_bg = "NONE",
}

local git = {
  sign_add_fg = main.gruber_darker_green,
  sign_add_bg = "NONE",
  sign_change_fg = main.gruber_darker_yellow,
  sign_change_bg = "NONE",
  sign_delete_fg = main.gruber_darker_red,
  sign_delete_bg = "NONE",
}

local telescope = {
  selection_bg = "#262626",
  matching_fg = main.gruber_darker_white,
}

return {
  main,
  text,
  diff,
  diagnostic,
  git,
  telescope,
}
