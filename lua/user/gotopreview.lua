local ok, gtp = pcall(require, "goto-preview")
if not ok then
  return
end

gtp.setup({
})

vim.api.nvim_set_keymap("n", "gd", "<cmd>lua require('goto-preview').goto_preview_definition()<cr>", {})
vim.api.nvim_set_keymap("n", "gt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>", {})
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>", {})
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua require('goto-preview').goto_preview_declaration()<cr>", {})
vim.api.nvim_set_keymap("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<cr>", {})
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua require('goto-preview').goto_preview_references()<cr>", {})
