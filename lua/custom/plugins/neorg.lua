return {
	{
		"rebelot/kanagawa.nvim", -- neorg needs a colorscheme with treesitter support
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
			highlight = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	{
		"nvim-neorg/neorg",
		lazy = false,
		version = "*",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.concealer"] = {},
					["core.completion"] = {},
					["core.export.markdown"] = {},
					["core.latex.renderer"] = {},
					["core.summary"] = {},
					["core.integrations.nvim-cmp"] = {},
					--["core.fs"] = {},
					["core.dirman"] = {
						config = {
							workspaces = {
								MoG = "~/MoG/",
								ITApplications = "~/School/IT-Applications/",
								Lab = "~/School/Natural Science Lab/",
							},
							default_workspace = "MoG",
						},
					},
				},
			})

			vim.wo.foldlevel = 99
			vim.wo.conceallevel = 2
		end,
	},
}
