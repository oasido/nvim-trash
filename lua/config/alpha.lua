import({ "alpha", "alpha.themes.dashboard" }, function(modules)
	local alpha = modules.alpha
	local dashboard = modules["alpha.themes.dashboard"]

	dashboard.section.header.val = {
		[[                            d8b      888           ]],
		[[                            Y8P      888           ]],
		[[                                     888           ]],
		[[  .d88b.   8888b.  .d8888b  888  .d88888  .d88b.   ]],
		[[ d88""88b     "88b 88K      888 d88" 888 d88""88b  ]],
		[[ 888  888 .d888888 "Y8888b. 888 888  888 888  888  ]],
		[[ Y88..88P 888  888      X88 888 Y88b 888 Y88..88P  ]],
		[[  "Y88P"  "Y888888  88888P' 888  "Y88888  "Y88P"   ]],
	}

	dashboard.section.buttons.val = {
		dashboard.button(
			"f",
			"  Find file",
			"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>"
		),
		dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
		dashboard.button("p", "  Find project", ":Telescope project <CR>"),
		dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
		dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
		dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
		dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
	}

	local function footer()
		return "“Hoe gaat het?” – Ofek van Asido"
	end

	dashboard.section.footer.val = footer()

	dashboard.section.footer.opts.hl = "Type"
	dashboard.section.header.opts.hl = "Include"
	dashboard.section.buttons.opts.hl = "Keyword"

	dashboard.opts.opts.noautocmd = true
	alpha.setup(dashboard.opts)
end)
