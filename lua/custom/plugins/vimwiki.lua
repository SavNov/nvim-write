return {
	"vimwiki/vimwiki",
	config = function()
		vim.g.vimwiki_list = {
			{
				path = "~/School/Health-Fitness-and-Wellness/",
				syntax = "markdown",
				ext = ".md",
			},
			{
				path = "~/School/IT-Applications/",
				syntax = "markdown",
				ext = ".md",
			},
		}
		-- Normal mode: make <C-n> move left like h, etc.
		--vim.keymap.set("n", "<A-m>", "h", { noremap = true })
		--vim.keymap.set("n", "<A-n>", "j", { noremap = true })
		--vim.keymap.set("n", "<A-e>", "k", { noremap = true })
		--vim.keymap.set("n", "<A-i>", "l", { noremap = true })

		---- Visual mode too, for consistency
		--vim.keymap.set("v", "<A-m>", "h", { noremap = true })
		--vim.keymap.set("v", "<A-n>", "j", { noremap = true })
		--vim.keymap.set("v", "<A-e>", "k", { noremap = true })
		--vim.keymap.set("v", "<A-i>", "l", { noremap = true })
	end,
}
