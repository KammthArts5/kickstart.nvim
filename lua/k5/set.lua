vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Configuration spécifique à Netrw via autocmd
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  callback = function()
    -- Assurez-vous que les numéros de ligne relatifs sont activés pour les buffers netrw
    vim.opt_local.relativenumber = true
    vim.opt_local.number = true
  end,
})
