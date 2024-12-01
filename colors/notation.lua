local palette = require("palette")
local highlight = require("highlight")
local mappings = require("mappings")

local function get_color(color_name)
	local color_list = palette[color_name]
	local index = vim.o.background == "dark" and 1 or 2
	return color_list[index] or color_list[1]
end

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.background = vim.o.background or "dark"
vim.g.colors_name = vim.o.background == "dark" and "notation-blackboard" or "notation-ballpoint"

for group, property in pairs(highlight) do
	local hl = {}
	for key, value in pairs(property) do
		hl[key] = type(value) == "string" and get_color(value) or value
	end
	vim.api.nvim_set_hl(0, group, hl)
end
vim.api.nvim_set_hl(0, "Normal", {
	fg = get_color("fg"),
	bg = get_color("bg")
})

for custom_group, target_group_list in pairs(mappings) do
	for _, target_group in ipairs(target_group_list) do
		vim.api.nvim_set_hl(0, target_group, { link = custom_group })
	end
end
