vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true

-- indentation settings
vim.opt.tabstop = 2        -- Number of spaces tabs count for
vim.opt.shiftwidth = 2     -- Number of spaces used for each step of (auto)indent
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.smartindent = true -- Auto-indent new lines
vim.opt.autoindent = true  -- Copy indent from current line when starting a new one

-- keymaps

--commands
vim.api.nvim_create_user_command('NvimConfig', 'cd ~/.config/nvim', {})
vim.api.nvim_create_user_command('ZelConfig', 'cd ~/.config/zellij', {})
vim.api.nvim_create_user_command('AlaConfig', 'cd ~/.config/alacritty', {})
vim.api.nvim_create_user_command('CodiumConfig', 'cd ~/.config/VSCodium', {})
vim.api.nvim_create_user_command('CodeConfig', 'cd ~/.config/Code', {})


vim.api.nvim_create_user_command('Projects', 'cd ~/Documents', {})

require("config.lazy")
