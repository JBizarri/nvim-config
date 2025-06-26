return {
  'chrisgrieser/nvim-spider',
  lazy = false,
  config = function()
    require('spider').setup { skipInsignificantPunctuation = false }
    vim.keymap.set('n', 'c<leader>w', "c<cmd>lua require('spider').motion('e')<CR>", { desc = 'Next subword' })
    vim.keymap.set({ 'n', 'o', 'x' }, '<leader>w', "<cmd>lua require('spider').motion('w')<CR>", { desc = 'Next subword' })
    vim.keymap.set({ 'n', 'o', 'x' }, '<leader>e', "<cmd>lua require('spider').motion('e')<CR>", { desc = 'Next end of subword' })
    vim.keymap.set({ 'n', 'o', 'x' }, '<leader>b', "<cmd>lua require('spider').motion('b')<CR>", { desc = 'Prev word' })
  end,
}
