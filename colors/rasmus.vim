" Name:       rasmus.vim
" Version:    0.0.1
" Maintainer: Cian Callaghan

hi clear

if exists("syntax on")
	syntax reset
endif

let g:colors_name="rasmus"

" Basic
let s:bg             = { "gui": "#1a1a19", "cterm": "0" }
let s:fg             = { "gui": "#d1d1d1", "cterm": "188" } 
" Normal
let s:black          = { "gui": "#333332", "cterm": "0" }
let s:red            = { "gui": "#ff968c", "cterm": "210" }
let s:green          = { "gui": "#61957f", "cterm": "79" }
let s:yellow         = { "gui": "#ffc591", "cterm": "209" }
let s:blue           = { "gui": "#8db4d4", "cterm": "111" }
let s:magenta        = { "gui": "#de9bc8", "cterm": "176" }
let s:cyan           = { "gui": "#7bb099", "cterm": "122" }
let s:white          = { "gui": "#d1d1d1", "cterm": "188" }
" Bright
let s:bright_black   = { "gui": "#4c4c4b", "cterm": "0" }
let s:bright_red     = { "gui": "#ffafa5", "cterm": "210" }
let s:bright_green   = { "gui": "#7aae98", "cterm": "79" }
let s:bright_yellow  = { "gui": "#ffdeaa", "cterm": "209" }
let s:bright_blue    = { "gui": "#a6cded", "cterm": "111" }
let s:bright_magenta = { "gui": "#f7b4e1", "cterm": "176" }
let s:bright_cyan    = { "gui": "#94c9b2", "cterm": "122" }
let s:bright_white   = { "gui": "#eaeaea", "cterm": "188" }
" Greys
let s:grey01         = { "gui": "#222221", "cterm": "234" }
let s:grey02         = { "gui": "#2a2a29", "cterm": "235" }
let s:grey03         = { "gui": "#323231", "cterm": "236" }
let s:grey04         = { "gui": "#3a3a39", "cterm": "237" }
let s:grey05         = { "gui": "#6a6a69", "cterm": "242" }
let s:grey06         = { "gui": "#767675", "cterm": "243" }
let s:grey07         = { "gui": "#b6b6b5", "cterm": "250" }

" Utility function: https://github.com/noahfrederick/vim-hemisu
function! s:h(group, style)
	execute "highlight" a:group
	\ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
	\ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
	\ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
	\ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
	\ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
	\ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
	\ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",     {"fg": s:fg, "bg": s:bg})
call s:h("NormalNC",   {"fg": s:fg, "bg": s:bg})
call s:h("SignColumn", {"fg": s:fg, "bg": s:bg})
call s:h("EndOfBuffer", {"fg": s:grey03})
call s:h("NormalFloat", {"fg": s:fg, "bg": s:grey02})
call s:h("FloatBorder", {"fg": s:blue, "bg": s:grey02})
call s:h("ColorColumn", {"fg": s:grey01, "bg": s:grey01})
call s:h("Conceal", {"fg": s:grey05})
call s:h("Cursor", {"fg": s:cyan, "bg": s:bg, "gui": "reverse", "cterm": "reverse"})
call s:h("CursorIM", {"fg": s:cyan, "bg": s:bg, "gui": "reverse", "cterm": "reverse"})
call s:h("Directory", {"fg": s:blue, "bg": s:bg, "gui": "bold", "cterm": "bold"})
call s:h("DiffAdd", {"fg": s:bright_green, "bg": s:bg, "gui": "reverse", "cterm": "reverse"})
call s:h("DiffChange", {"fg": s:bright_blue, "bg": s:bg, "gui": "reverse", "cterm": "reverse"})
call s:h("DiffDelete", {"fg": s:bright_red, "bg": s:bg, "gui": "reverse", "cterm": "reverse"})
call s:h("DiffText", {"fg": s:fg, "bg": s:bg, "gui": "reverse", "cterm": "reverse"})
call s:h("ErrorMsg", {"fg": s:red})
call s:h("Folded", {"fg": s:grey05, "bg": s:bg, "gui": "italic", "cterm": "italic"})
call s:h("FoldColumn", {"fg": s:blue})
call s:h("IncSearch", {"gui": "reverse", "cterm": "reverse"})
call s:h("LineNr", {"fg": s:grey05})
call s:h("CursorLineNr", {"fg": s:grey07})
call s:h("MatchParen", {"fg": s:yellow, "gui": "bold", "cterm": "bold"})
call s:h("ModeMsg", {"fg": s:cyan, "gui": "bold", "cterm": "bold"})
call s:h("MoreMsg", {"fg": s:cyan, "gui": "bold", "cterm": "bold"})
call s:h("NonText", {"fg": s:grey03})
call s:h("Pmenu", {"fg": s:grey07, "bg": s:grey02})
call s:h("PmenuSel", {"fg": s:bg, "bg": s:grey06})
call s:h("PmenuSbar", {"fg": s:fg, "bg": s:grey02})
call s:h("PmenuThumb", {"fg": s:fg, "bg": s:grey05})
call s:h("Question", {"fg": s:green, "gui": "bold", "cterm": "bold"})
call s:h("QuickFixLine", {"fg": s:blue, "bg": s:grey01, "gui": "bold,italic", "cterm": "bold,italic"})
call s:h("qfLineNr", {"fg": s:blue, "bg": s:grey01})
call s:h("Search", {"gui": "reverse", "cterm": "reverse"})
call s:h("SpecialKey", {"fg": s:grey03})
call s:h("SpellBad", {"fg": s:red, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("SpellCap", {"fg": s:blue, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("SpellLocal", {"fg": s:cyan, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("SpellRare", {"fg": s:cyan, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("StatusLine", {"fg": s:grey07, "bg": s:grey01})
call s:h("StatusLineNC", {"fg": s:grey06, "bg": s:grey01})
call s:h("StatusLineTerm", {"fg": s:grey07, "bg": s:grey01})
call s:h("StatusLineTermNC", {"fg": s:grey07, "bg": s:grey01})
call s:h("TabLineFill", {"fg": s:grey05, "bg": s:grey01})
call s:h("TablineSel", {"fg": s:bg, "bg": s:grey07})
call s:h("Tabline", {"fg": s:grey05})
call s:h("Title", {"fg": s:cyan, "gui": "bold", "cterm": "bold"})
call s:h("Visual", {"bg": s:grey03})
call s:h("VisualNOS", {"bg": s:grey03})
call s:h("WarningMsg", {"fg": s:yellow, "gui": "bold", "cterm": "bold"})
call s:h("WildMenu", {"fg": s:bg, "bg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("CursorColumn", {"bg": s:grey02})
call s:h("CursorLine", {"bg": s:grey01})
call s:h("ToolbarLine", {"fg": s:fg, "bg": s:grey01})
call s:h("ToolbarButton", {"fg": s:fg, "gui": "bold", "cterm": "bold"})
call s:h("NormalMode", {"fg": s:cyan, "gui": "reverse", "cterm": "reverse"})
call s:h("InsertMode", {"fg": s:green, "gui": "reverse", "cterm": "reverse"})
call s:h("VisualMode", {"fg": s:cyan, "gui": "reverse", "cterm": "reverse"})
call s:h("VertSplit", {"fg": s:grey02})
call s:h("CommandMode", {"fg": s:grey05, "gui": "reverse", "cterm": "reverse"})
call s:h("Warnings", {"fg": s:yellow})
call s:h("healthError", {"fg": s:red})
call s:h("healthSuccess", {"fg": s:green})
call s:h("healthWarning", {"fg": s:yellow})
" Common
call s:h("Type", {"fg": s:cyan})
call s:h("StorageClass", {"fg": s:cyan})
call s:h("Structure", {"fg": s:fg})
call s:h("Constant", {"fg": s:cyan})
call s:h("Comment", {"fg": s:grey05, "gui": "italic", "cterm": "italic"})
call s:h("Conditional", {"fg": s:blue})
call s:h("Keyword", {"fg": s:blue})
call s:h("Repeat", {"fg": s:blue})
call s:h("Boolean", {"fg": s:cyan})
call s:h("Function", {"fg": s:blue})
call s:h("Identifier", {"fg": s:blue})
call s:h("String", {"fg": s:cyan})
call s:h("Character", {"fg": s:cyan})
call s:h("Number", {"fg": s:cyan})
call s:h("Float", {"fg": s:cyan})
call s:h("Statement", {"fg": s:blue})
call s:h("Label", {"fg": s:cyan})
call s:h("Operator", {"fg": s:yellow})
call s:h("Exception", {"fg": s:yellow})
call s:h("PreProc", {"fg": s:red})
call s:h("Include", {"fg": s:blue})
call s:h("Define", {"fg": s:cyan})
call s:h("Macro", {"fg": s:blue})
call s:h("Typedef", {"fg": s:cyan})
call s:h("PreCondit", {"fg": s:cyan})
call s:h("Special", {"fg": s:blue, "gui": "italic", "cterm": "italic"})
call s:h("Debug", {"fg": s:red})
call s:h("Underlined", {"fg": s:cyan, "gui": "underline", "cterm": "underline"})
call s:h("Ignore", {"fg": s:grey07})
call s:h("Error", {"fg": s:red, "gui": "bold,underline", "cterm": "bold,underline"})
call s:h("Todo", {"fg": s:cyan, "gui": "bold,underline", "cterm": "bold,underline"})
