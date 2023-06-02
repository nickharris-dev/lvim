local kind = require("user.kind")
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  api.events.subscribe(api.events.Event.FileCreated, function(file)
    vim.cmd("edit " .. file.fname)
  end)

  vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close Directory")
  vim.keymap.set("n", "v", api.node.open.vertical, opts "Open: Vertical Split")
  vim.keymap.del("n", "<C-k>", { buffer = bufnr })
  vim.keymap.set("n", "<S-k>", api.node.open.preview, opts "Open Preview")
end

lvim.builtin.nvimtree.setup.on_attach = my_on_attach

lvim.builtin.nvimtree.setup.view.centralize_selection = true
lvim.builtin.nvimtree.setup.view.adaptive_size = true
lvim.builtin.nvimtree.setup.filters.dotfiles = true
lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
 lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.open = kind.nvim_tree_icons.folder.open
 lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.default = kind.nvim_tree_icons.folder.default
 lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.empty = kind.nvim_tree_icons.folder.empy
