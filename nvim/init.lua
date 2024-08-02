vim.cmd('source ~/dotfiles/nvim/init.vim')

vim.g.python3_host_prog = '~/dotfiles/.venv/bin/python'

local lspconfig = require('lspconfig')
lspconfig.ruff_lsp.setup{
    -- when I need custom ruff-lst settings, I'll add them here
}
