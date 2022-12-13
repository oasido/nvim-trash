import("better_escape", function(betterEscape)
	betterEscape.setup({
		mapping = { "jk", "jj" },
		timeout = vim.o.timeoutlen,
		clear_empty_lines = false,
		keys = "<Esc>",
	})
end)
