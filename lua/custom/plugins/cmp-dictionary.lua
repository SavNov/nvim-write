return {
	require("cmp_dictionary").setup({
		paths = { "/usr/share/dict/words", "~/.local/share/healthdict" },
		exact_length = 2,
	}),
}
