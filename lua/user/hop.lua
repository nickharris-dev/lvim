local ok, hop = pcall(require, "hop")
if not ok then
	return
end

hop.setup({
	direction = "both",
	jump_on_sole_occurrence = true,
	uppercase_labels = true,
})

lvim.keys.normal_mode["f"] = "<cmd>lua require'hop'.hint_char1()<cr>"
vim.api.nvim_set_keymap("o", "f", "<cmd>lua require'hop'.hint_char1({  inclusive_jump = true })<cr>", {})

vim.api.nvim_set_keymap(
	"",
	"t",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR,  hint_offset = -1 })<cr>",
	{}
)
vim.api.nvim_set_keymap(
	"",
	"T",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,  hint_offset = 1 })<cr>",
	{}
)

vim.api.nvim_set_keymap("n", "gn", "<cmd>lua require'hop'.hint_lines({})<cr>", {})
