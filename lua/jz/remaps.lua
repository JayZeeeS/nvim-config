-- Remap for Toggleterm
vim.keymap.set({ 'n', 't' }, '<F12>', "<cmd>ToggleTerm<CR>")

-- Leader Key remap
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Comment remaps


-- Remap for Neotree
vim.keymap.set('n', '<leader>ff', '<cmd>Neotree toggle reveal<CR>', { desc = '[t] Toggle filetree' })
vim.keymap.set('n', '<leader>ft', function()
    if vim.bo.filetype == "neo-tree" then
      vim.cmd.wincmd "p"
    else
      vim.cmd.Neotree "focus"
    end
  end,
  { desc = '[f] Alternate focus between filetree and buffer' })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- General remaps
vim.keymap.set('n', '<C-s>', function()
  vim.cmd("w")
end)

-- temp remap for custumization
vim.keymap.set('n', '<leader>C', function()
    vim.cmd("so")
  end,
  { desc = 'Sync configuration change' }
)
