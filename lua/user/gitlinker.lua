local ok, gitlinker = pcall(require, "gitlinker")
if not ok then
	return
end

gitlinker.setup({
	mappings = nil,
})

vim.api.nvim_set_keymap("v", "<leader>gy", '<cmd>lua require"gitlinker".get_repo_url()<cr>', { silent = true })
