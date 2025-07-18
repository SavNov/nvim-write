vim.api.nvim_create_autocmd("FileType", {
	pattern = "vimwiki",
	callback = function()
		vim.opt_local.syntax = "pandoc"
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "wiki",
	callback = function()
		vim.opt_local.syntax = "pandoc"
	end,
})
