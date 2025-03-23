return {
	text = { "@property", "NormalNC", "NormalFloat", "FloatBorder", "Special", "SpecialChar", "FloatTitle", "FloatFooter", "@string.css", "@number.css", "@attribute.rust" },
	non_text = { "@conceal", "Conceal", "Ignore", "TabLineFill", "NonText", "SpecialKey", "Whitespace", "FoldColumn", "SignColumn", "CursorLineFold", "CursorLineSign", "EndOfBuffer" },

	-- Syntax
	keywords = { "Statement", "Conditional", "Repeat", "Keyword", "Exception", "@keyword", "@keyword.coroutine", "@keyword.function", "@keyword.operator", "@keyword.type", "@keyword.modifier", "@keyword.repeat", "@keyword.return", "@keyword.debug", "@keyword.exception", "@keyword.conditional", "@keyword.conditional.ternary", "@property.css" },
	directives = { "PreProc", "Include", "Define", "PreCondit", "@keyword.directive", "@keyword.directive.define", "@keyword.import" },
	modules = { "@module", "@module.builtin" },
	types = { "Type", "StorageClass", "Structure", "Typedef", "@type", "@type.builtin", "@type.definition", "@tag.css", "@constructor" },
	values = { "Number", "Float", "Boolean", "@constant.builtin", "@boolean", "@number", "@number.float" },
	constants = { "Constant", "@constant", "@constant.macro", "Macro", "@function.macro" },
	strings = { "String", "Character", "@string", "@character", "@string.documentation", "@string.regexp", "@string.escape", "@string.special", "@string.special.symbol", "@string.special.path", "@string.special.url" },
	variables = { "Identifier", "@variable", "@variable.parameter", "@variable.member" },
	variables_builtin = { "@variable.builtin", "@variable.parameter.builtin" },
	functions = { "Function", "@function", "@function.call", "@function.method", "@function.method.call", "@function.builtin" },
	operators = { "Operator", "@operator" },
	punctuation = { "Delimiter", "@punctuation", "@punctuation.delimiter", "@punctuation.bracket", "@punctuation.special" },
	comments = { "Comment", "SpecialComment", "@comment", "@comment.documentation", "DiagnosticUnnecessary", "Folded" },
	annotations = { "@attribute", "@attribute.builtin", "Label", "@label" },

	markup_bold = { "@markup.strong" },
	markup_italic = { "@markup.italic" },
	markup_strikethrough = { "@markup.strikethrough" },
	markup_underline = { "Underlined", "DiffText", "@markup.underline" },
	markup_list = { "@markup.list", "@markup.list.checked", "@markup.list.unchecked" },
	markup_headings = { "@markup.heading", "@markup.heading.1", "@markup.heading.2", "@markup.heading.3", "@markup.heading.4", "@markup.heading.5", "@markup.heading.6" },
	markup_raw = { "@markup.quote", "@markup.math", "@markup.raw", "@markup.raw.block", "@label.markdown" },
	markup_links = { "@markup.link", "@markup.link.label", "@markup.link.url" },
	xml_attributes = { "@tag.attribute" },
	xml_tags = { "@tag", "@tag.builtin" },
	xml_delimiters = { "@tag.delimiter", "@tag.delimiter.html" },

	-- User interface
	bad = { "Error", "DiagnosticError", "DiagnosticVirtualTextError", "DiagnosticFloatingError", "DiagnosticSignError", "ErrorMsg", "@comment.error", "@comment.warning" },
	warning = { "DiagnosticWarn", "DiagnosticVirtualTextWarn", "DiagnosticFloatingWarn", "DiagnosticSignWarn", "WarningMsg" },
	ok = { "DiagnosticOk", "DiagnosticVirtualTextOk", "DiagnosticFloatingOk", "DiagnosticSignOk" },
	other = { "Debug", "Todo", "Directory", "Tag", "@comment.todo", "@comment.note", "DiagnosticInfo", "DiagnosticHint" },
	message = { "ModeMsg", "MsgArea", "MoreMsg", "Question" },
	diff_add = { "DiffAdd", "Added" },
	diff_change = { "DiffChange", "Changed" },
	diff_remove = { "DiffDelete", "Removed" },
	visual_mode = { "Visual", "VisualNOS" },
	search_results = { "Search", "Substitute" },
	search_current = { "CurSearch", "IncSearch", "QuickFixLine", "SnippetTabstop", "MatchParen" },
	alt_bg = { "CursorLine", "CursorColumn", "ColorColumn" },
	line_nr = { "LineNr", "LineNrAbove", "LineNrBelow" },
	cursor_line_nr = { "CursorLineNr" },
	active = { "StatusLine", "TabLineSel", "WinBar" },
	inactive = { "StatusLineNC", "TabLine", "WinBarNC" },
	p_menu = { "Pmenu", "PmenuKind", "PmenuExtra", "WildMenu" },
	p_menu_sel = { "PmenuSel", "PmenuKindSel", "PmenuExtraSel", "PmenuThumb" },
}
