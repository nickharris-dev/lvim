local ok, zenMode = pcall(require, "zen-mode")
if not ok then
	return
end

zenmode.setup({})
