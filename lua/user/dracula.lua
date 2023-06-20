local colorscheme = "dracula"

local status_ok, dracula = pcall(require, colorscheme)
if not status_ok then
	return
end

dracula.setup({
	show_end_of_buffer = false,
	transparent_bg = true,
})

lvim.autocommands = {
	{
		{ "ColorScheme" },
		{
			pattern = "*",
			callback = function()
				vim.api.nvim_set_hl(0, "Visual", { bg = "#A4FFFF", fg = "#000000" })
			end,
		},
	},
}

local _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
