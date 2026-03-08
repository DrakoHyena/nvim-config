require("drako.remap")
require("drako.lazy_init")

-- telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>saf', builtin.find_files, { desc = 'Telescope files search' })
vim.keymap.set('n', '<leader>sgf', builtin.git_files, { desc = 'Telescope git files search' })
vim.keymap.set('n', '<leader>slg', builtin.live_grep, { desc = 'Telescope grep search' })

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Harpoon add file" })
vim.keymap.set("n", "<leader>q", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = "Harpoon toggle menu" })
vim.keymap.set("n", "<leader>hn", function() harpoon:list():prev() end, { desc = "Harpoon navigate next entry" })
vim.keymap.set("n", "<leader>hp", function() harpoon:list():next() end, { desc = "Harpoon navigate previous entry" })

-- Treesitter
-- See ./plugins/treesitter.lua for config

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Theme/Colors
vim.cmd('colorscheme industry')

-- Misc Editor Settings
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.timeoutlen = 250
