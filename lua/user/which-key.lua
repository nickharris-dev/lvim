local kind = require("user.kind")

local wk = lvim.builtin.which_key

wk.mappings["h"] = {}

wk.mappings["r"] = {
	"<cmd>lua vim.lsp.buf.rename()<CR>",
	"Rename Symbol",
}

-- Extend Search
wk.mappings["sw"] = {
	"<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
	" " .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor",
}

wk.mappings["t"] = {
	name = "Telescope",
	p = { ":Telescope projects<cr>", "Projects" }, -- requires telescope-project.nvim plugin
	r = { ":Telescope resume<cr>", "Resume" },
}
