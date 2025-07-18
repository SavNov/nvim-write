return {
	"nomnivore/ollama.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	-- All the user commands added by the plugin
	cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },

	keys = {
		-- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
		{
			"<leader>oo",
			":<c-u>lua require('ollama').prompt()<cr>",
			desc = "ollama prompt",
			mode = { "n", "v" },
		},

		-- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
		{
			"<leader>oG",
			":<c-u>lua require('ollama').prompt('Generate_Prose')<cr>",
			desc = "ollama Generate Code",
			mode = { "n", "v" },
		},
	},

	---@type Ollama.Config
	opts = {
		model = "HammerAI/cydonia-v1.1:22b_q4_K_M",
		url = "http://127.0.0.1:11434",
		n_ctx = "4096",
		serve = {
			on_start = false,
			command = "ollama",
			args = { "serve" },
			stop_command = "pkill",
			stop_args = { "-SIGTERM", "ollama" },
		},
	},
}
