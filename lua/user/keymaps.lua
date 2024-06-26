local kind = require("user.kind")

lvim.keys.normal_mode["<C-n>"] = "<cmd>nohlsearch<CR>"
lvim.keys.visual_mode["p"] = '"_dP'

-- Window management
-- -- Next/Previous Buffer
lvim.keys.normal_mode["˙"] = ":bprev<CR>"
lvim.keys.normal_mode["¬"] = ":bnext<CR>"
-- -- Move buffer to pane

-- Navigation
-- -- Next/Previous Change
lvim.keys.normal_mode["<S-h>"] = "g;"
lvim.keys.normal_mode["<S-l>"] = "g,"

-- Language Server Stuff (Go to definition etc)
lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " Find references",
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  -- ":lua vim.lsp.buf.definition()<cr>",
  ":lua require'telescope.builtin'.lsp_definitions()<cr>",
  kind.cmp_kind.Reference .. " Definitions",
}

lvim.lsp.buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition",
}

lvim.lsp.buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " Telescope Frecency",
}

-- Sorting
lvim.keys.normal_mode["go"] = "<Cmd>Sort<CR>"
lvim.keys.visual_mode["go"] = "<Esc><Cmd>Sort<CR>"
lvim.keys.normal_mode['go"'] = 'vi"<Cmd>Sort<CR>'
lvim.keys.visual_mode["go'"] = "vi'<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["go("] = "vi(<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["go)"] = "vi(<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["go["] = "vi[<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["go]"] = "vi[<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["go{"] = "vi{<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["go{"] = "vi{<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["gop"] = "vip<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["got"] = "vit<Esc><Cmd>Sort<CR>"
lvim.keys.visual_mode["gob"] = "vib<Esc><Cmd>Sort<CR>"
