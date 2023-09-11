" Name:       rasmus.vim
" Version:    0.0.1
" Maintainer: Cian Callaghan

hi clear

if exists("syntax on")
	syntax reset
endif

let colors_name = "rasmus"

let g:rasmus_monochrome = get(g:, "rasmus_monochrome", 0)

if g:rasmus_monochrome == 1
	" Basic
	let s:bg             = { "gui": "#1a1a19", "cterm": "0" }
	let s:fg             = { "gui": "#d1d1d1", "cterm": "188" }
	" Normal
	let s:black          = { "gui": "#333332", "cterm": "0" }
	let s:red            = { "gui": "#c5c5c5", "cterm": "251" }
	let s:green          = { "gui": "#d0d0d0", "cterm": "252" }
	let s:yellow         = { "gui": "#dedede", "cterm": "253" }
	let s:blue           = { "gui": "#b3b3b3", "cterm": "249" }
	let s:magenta        = { "gui": "#bcbcbc", "cterm": "250" }
	let s:cyan           = { "gui": "#b3b3b3", "cterm": "249" }
	let s:white          = { "gui": "#d1d1d1", "cterm": "252" }
	" Bright
	let s:bright_black   = { "gui": "#4c4c4b", "cterm": "239" }
	let s:bright_red     = { "gui": "#d2d2d2", "cterm": "253" }
	let s:bright_green   = { "gui": "#e9e9e9", "cterm": "254" }
	let s:bright_yellow  = { "gui": "#f7f7f7", "cterm": "231" }
	let s:bright_blue    = { "gui": "#cccccc", "cterm": "251" }
	let s:bright_magenta = { "gui": "#d5d5d5", "cterm": "253" }
	let s:bright_cyan    = { "gui": "#cccccc", "cterm": "251" }
	let s:bright_white   = { "gui": "#eaeaea", "cterm": "255" }
else
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
endif
" Greys
let s:grey01         = { "gui": "#222221", "cterm": "234" }
let s:grey02         = { "gui": "#2a2a29", "cterm": "235" }
let s:grey03         = { "gui": "#323231", "cterm": "236" }
let s:grey04         = { "gui": "#3a3a39", "cterm": "237" }
let s:grey05         = { "gui": "#6a6a69", "cterm": "242" }
let s:grey06         = { "gui": "#767675", "cterm": "243" }
let s:grey07         = { "gui": "#b6b6b5", "cterm": "250" }
" Special
let s:none           = { "gui": "NONE",      "cterm": "NONE" }

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

call s:h("Normal",                    {"fg": s:fg, "bg": s:bg})
call s:h("NormalNC",                  {"fg": s:fg, "bg": s:bg})
call s:h("SignColumn",                {"fg": s:fg, "bg": s:bg})
call s:h("EndOfBuffer",               {"fg": s:grey03})
call s:h("NormalFloat",               {"fg": s:fg, "bg": s:grey02})
call s:h("FloatBorder",               {"fg": s:blue, "bg": s:grey02})
call s:h("ColorColumn",               {"fg": s:none, "bg": s:grey01})
call s:h("Conceal",                   {"fg": s:grey05})
call s:h("Cursor",                    {"fg": s:cyan, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("CursorIM",                  {"fg": s:cyan, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("Directory",                 {"fg": s:blue, "bg": s:none, "gui": "bold", "cterm": "bold"})
call s:h("DiffAdd",                   {"fg": s:bright_green, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("DiffChange",                {"fg": s:bright_blue, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("DiffDelete",                {"fg": s:bright_red, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("DiffText",                  {"fg": s:fg, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("ErrorMsg",                  {"fg": s:red})
call s:h("Folded",                    {"fg": s:grey05, "bg": s:none, "gui": "italic", "cterm": "italic"})
call s:h("FoldColumn",                {"fg": s:blue})
call s:h("IncSearch",                 {"gui": "reverse", "cterm": "reverse"})
call s:h("LineNr",                    {"fg": s:grey05})
call s:h("CursorLineNr",              {"fg": s:grey07})
call s:h("MatchParen",                {"fg": s:yellow, "gui": "bold", "cterm": "bold"})
call s:h("ModeMsg",                   {"fg": s:cyan, "gui": "bold", "cterm": "bold"})
call s:h("MoreMsg",                   {"fg": s:cyan, "gui": "bold", "cterm": "bold"})
call s:h("NonText",                   {"fg": s:grey03})
call s:h("Pmenu",                     {"fg": s:grey07, "bg": s:grey02})
call s:h("PmenuSel",                  {"fg": s:bg, "bg": s:grey06})
call s:h("PmenuSbar",                 {"fg": s:fg, "bg": s:grey02})
call s:h("PmenuThumb",                {"fg": s:fg, "bg": s:grey05})
call s:h("Question",                  {"fg": s:green, "gui": "bold", "cterm": "bold"})
call s:h("QuickFixLine",              {"fg": s:blue, "bg": s:grey01, "gui": "bold,italic", "cterm": "bold,italic"})
call s:h("qfLineNr",                  {"fg": s:blue, "bg": s:grey01})
call s:h("Search",                    {"gui": "reverse", "cterm": "reverse"})
call s:h("SpecialKey",                {"fg": s:grey03})
call s:h("SpellBad",                  {"fg": s:red, "bg": s:none, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("SpellCap",                  {"fg": s:blue, "bg": s:none, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("SpellLocal",                {"fg": s:cyan, "bg": s:none, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("SpellRare",                 {"fg": s:cyan, "bg": s:none, "gui": "italic,undercurl", "cterm": "italic,underline"})
call s:h("StatusLine",                {"fg": s:grey07, "bg": s:grey01})
call s:h("StatusLineNC",              {"fg": s:grey06, "bg": s:grey01})
call s:h("StatusLineTerm",            {"fg": s:grey07, "bg": s:grey01})
call s:h("StatusLineTermNC",          {"fg": s:grey07, "bg": s:grey01})
call s:h("TabLineFill",               {"fg": s:grey05, "bg": s:grey01})
call s:h("TablineSel",                {"fg": s:bg, "bg": s:grey07})
call s:h("Tabline",                   {"fg": s:grey05})
call s:h("Title",                     {"fg": s:cyan, "bg": s:none, "gui": "bold", "cterm": "bold"})
call s:h("Visual",                    {"fg": s:none, "bg": s:grey03})
call s:h("VisualNOS",                 {"fg": s:none, "bg": s:grey03})
call s:h("WarningMsg",                {"fg": s:yellow, "gui": "bold", "cterm": "bold"})
call s:h("WildMenu",                  {"fg": s:bg, "bg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("CursorColumn",              {"fg": s:none, "bg": s:grey02})
call s:h("CursorLine",                {"fg": s:none, "bg": s:grey01})
call s:h("ToolbarLine",               {"fg": s:fg, "bg": s:grey01})
call s:h("ToolbarButton",             {"fg": s:fg, "bg": s:none, "gui": "bold", "cterm": "bold"})
call s:h("NormalMode",                {"fg": s:cyan, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("InsertMode",                {"fg": s:green, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("VisualMode",                {"fg": s:cyan, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("VertSplit",                 {"fg": s:grey02})
call s:h("CommandMode",               {"fg": s:grey05, "bg": s:none, "gui": "reverse", "cterm": "reverse"})
call s:h("Warnings",                  {"fg": s:yellow})
call s:h("healthError",               {"fg": s:red})
call s:h("healthSuccess",             {"fg": s:green})
call s:h("healthWarning",             {"fg": s:yellow})
" Common
call s:h("Type",                      {"fg": s:cyan})
call s:h("StorageClass",              {"fg": s:cyan})
call s:h("Structure",                 {"fg": s:fg})
call s:h("Constant",                  {"fg": s:cyan})
call s:h("Comment",                   {"fg": s:grey05, "bg": s:none, "gui": "italic", "cterm": "italic"})
call s:h("Conditional",               {"fg": s:blue, "bg": s:none})
call s:h("Keyword",                   {"fg": s:blue, "bg": s:none})
call s:h("Repeat",                    {"fg": s:blue, "bg": s:none})
call s:h("Boolean",                   {"fg": s:cyan, "bg": s:none})
call s:h("Function",                  {"fg": s:blue, "bg": s:none})
call s:h("Identifier",                {"fg": s:blue, "bg": s:none})
call s:h("String",                    {"fg": s:cyan, "bg": s:none})
call s:h("Character",                 {"fg": s:cyan})
call s:h("Number",                    {"fg": s:cyan})
call s:h("Float",                     {"fg": s:cyan})
call s:h("Statement",                 {"fg": s:blue})
call s:h("Label",                     {"fg": s:cyan})
call s:h("Operator",                  {"fg": s:yellow})
call s:h("Exception",                 {"fg": s:yellow})
call s:h("PreProc",                   {"fg": s:red})
call s:h("Include",                   {"fg": s:blue})
call s:h("Define",                    {"fg": s:cyan})
call s:h("Macro",                     {"fg": s:blue})
call s:h("Typedef",                   {"fg": s:cyan})
call s:h("PreCondit",                 {"fg": s:cyan})
call s:h("Special",                   {"fg": s:blue, "bg": s:none, "gui": "italic", "cterm": "italic"})
call s:h("SpecialChar",               {"fg": s:cyan})
call s:h("Tag",                       {"fg": s:yellow})
call s:h("Delimiter",                 {"fg": s:grey07})
call s:h("SpecialComment",            {"fg": s:blue})
call s:h("Debug",                     {"fg": s:red})
call s:h("Underlined",                {"fg": s:cyan, "bg": s:none, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",                    {"fg": s:grey07})
call s:h("Error",                     {"fg": s:red, "bg": s:none, "gui": "bold,underline", "cterm": "bold,underline"})
call s:h("Todo",                      {"fg": s:cyan, "bg": s:none, "gui": "bold,underline", "cterm": "bold,underline"})
" HTML
call s:h("htmlArg",                   {"fg": s:fg, "gui": "italic", "cterm": "italic"})
call s:h("htmlBold",                  {"fg": s:fg, "bg": s:none, "gui": "bold", "cterm": "bold"})
call s:h("htmlEndTag",                {"fg": s:fg})
call s:h("htmlStyle",                 {"fg": s:cyan, "bg": s:none, "gui": "italic", "cterm": "italic"})
call s:h("htmlLink",                  {"fg": s:cyan, "gui": "underline", "cterm": "underline"})
call s:h("htmlSpecialChar",           {"fg": s:yellow})
call s:h("htmlSpecialTagName",        {"fg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("htmlTag",                   {"fg": s:fg})
call s:h("htmlTagN",                  {"fg": s:yellow})
call s:h("htmlTagName",               {"fg": s:yellow})
call s:h("htmlTitle",                 {"fg": s:fg})
call s:h("htmlH1",                    {"fg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("htmlH2",                    {"fg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("htmlH3",                    {"fg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("htmlH4",                    {"fg": s:blue, "gui": "bold", "cterm": "bold"})
call s:h("htmlH5",                    {"fg": s:blue, "gui": "bold", "cterm": "bold"})
" Markdown
call s:h("markdownH1",                {"fg": s:bright_white, "gui": "bold", "cterm": "bold"})
call s:h("markdownH2",                {"fg": s:bright_white, "gui": "bold", "cterm": "bold"})
call s:h("markdownH3",                {"fg": s:bright_white, "gui": "bold", "cterm": "bold"})
call s:h("markdownH4",                {"fg": s:bright_white, "gui": "bold", "cterm": "bold"})
call s:h("markdownH5",                {"fg": s:bright_white, "gui": "bold", "cterm": "bold"})
call s:h("markdownH6",                {"fg": s:bright_white, "gui": "bold", "cterm": "bold"})
call s:h("markdownHeadingDelimiter",  {"fg": s:grey05})
call s:h("markdownHeadingRule",       {"fg": s:grey05})
call s:h("markdownId",                {"fg": s:cyan})
call s:h("markdownIdDeclaration",     {"fg": s:blue})
call s:h("markdownIdDelimiter",       {"fg": s:cyan})
call s:h("markdownLinkDelimiter",     {"fg": s:grey05})
call s:h("markdownLinkText",          {"fg": s:bright_white, "gui": "italic", "cterm": "italic"})
call s:h("markdownListMarker",        {"fg": s:yellow})
call s:h("markdownOrderedListMarker", {"fg": s:yellow})
call s:h("markdownRule",              {"fg": s:grey05})
call s:h("markdownUrl",               {"fg": s:grey06, "bg": s:none})
call s:h("markdownBlockquote",        {"fg": s:grey07})
call s:h("markdownBold",              {"fg": s:fg, "bg": s:none, "gui": "bold", "cterm": "bold"})
call s:h("markdownItalic",            {"fg": s:fg, "bg": s:none, "gui": "italic", "cterm": "italic"})
call s:h("markdownCode",              {"fg": s:fg, "bg": s:grey02})
call s:h("markdownCodeBlock",         {"fg": s:fg, "bg": s:grey02})
call s:h("markdownCodeDelimiter",     {"fg": s:fg, "bg": s:grey02})
