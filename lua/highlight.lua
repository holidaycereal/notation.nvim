return {
	text = { fg = "fg" },
	non_text = { fg = "grey_4" },

	-- Syntax
	keywords = { fg = "blue" },
	directives = { fg = "blue" },
	modules = { fg = "fg" },
	types = { fg = "magenta" },
	constants = { fg = "orange" },
	values = { fg = "orange" },
	strings = { fg = "green" },
	variables = { fg = "fg" },
	variables_builtin = { fg = "fg", italic = true },
	functions = { fg = "fg" },
	operators = { fg = "fg" },
	punctuation = { fg = "fg" },
	comments = { fg = "grey_5" },
	annotations = { fg = "red" },

	markup_bold = { bold = true },
	markup_italic = { italic = true },
	markup_underline = { underline = true },
	markup_list = { fg = "blue" },
	markup_headings = { fg = "blue", bold = true },
	markup_raw = { fg = "green" },
	markup_links = { underline = true },
	xml_attributes = { fg = "fg" },
	xml_tags = { fg = "blue" },
	xml_delimiters = { fg = "grey_4" },

	-- User interface
	bad = { fg = "bright_red", bold = true },
	warning = { fg = "bright_orange", bold = true },
	ok = { fg = "bright_green", bold = true },
	other = { fg = "cyan", bold = true },
	message = { fg = "fg" },
	diff_add = { bg = "dim_green" },
	diff_change = { bg = "dim_cyan" },
	diff_remove = { bg = "dim_red" },
	visual_mode = { bg = "dim_blue_2" },
	search_results = { bg = "dim_blue_2" },
	search_current = { bg = "dim_blue" },
	alt_bg = { bg = "grey_1" },
	line_nr = { fg = "grey_3" },
	cursor_line_nr = { fg = "grey_4", bg = "grey_1" },
	active = { reverse = true },
	inactive = { fg = "grey_5", bg = "grey_2" },
	p_menu = { fg = "grey_2", bg = "grey_5" },
	p_menu_sel = { fg = "bg", bg = "grey_4" },
}
