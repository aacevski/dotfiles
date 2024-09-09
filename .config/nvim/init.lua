require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  { 'LazyVim/LazyVim', import = 'lazyvim.plugins' },
  { import = 'lazyvim.plugins.extras.dap.core' },
  { import = 'lazyvim.plugins.extras.editor.aerial' },
  { import = 'lazyvim.plugins.extras.editor.harpoon2' },
  { import = 'lazyvim.plugins.extras.editor.navic' },
  { import = 'lazyvim.plugins.extras.editor.telescope' },
  { import = 'lazyvim.plugins.extras.formatting.prettier' },
  { import = 'lazyvim.plugins.extras.lang.astro' },
  { import = 'lazyvim.plugins.extras.lang.docker' },
  { import = 'lazyvim.plugins.extras.lang.go' },
  { import = 'lazyvim.plugins.extras.lang.json' },
  { import = 'lazyvim.plugins.extras.lang.markdown' },
  { import = 'lazyvim.plugins.extras.lang.prisma' },
  { import = 'lazyvim.plugins.extras.lang.python' },
  { import = 'lazyvim.plugins.extras.lang.tailwind' },
  { import = 'lazyvim.plugins.extras.lang.typescript' },
  { import = 'lazyvim.plugins.extras.lang.yaml' },
  { import = 'lazyvim.plugins.extras.linting.eslint' },
  { import = 'lazyvim.plugins.extras.test.core' },
  { import = 'lazyvim.plugins.extras.ui.treesitter-context' },
  { import = 'lazyvim.plugins.extras.util.dot' },
  { import = 'lazyvim.plugins.extras.util.mini-hipatterns' },
  { import = 'lazyvim.plugins.extras.vscode' },
  { import = 'plugins' },
}
