local pok, platformio = pcall(require, 'platformio')
if pok then
  platformio.setup({
    lsp = 'clangd',
    menu_key = '<leader>p',
    menu_name = 'PlatformIO',

    menu_bindings = {
      { node = 'item', desc = '[L]ist terminals', shortcut = 'l', command = 'PioTermList' },
      {
        node = 'menu',
        desc = '[G]eneral',
        shortcut = 'g',
        items = {
          { node = 'item', desc = '[R]un Build', shortcut = 'r', command = 'Piocmdf run' },
          { node = 'item', desc = '[U]pload', shortcut = 'u', command = 'Piocmdf run -t upload' },
          { node = 'item', desc = '[M]onitor', shortcut = 'm', command = 'Piocmdh run -t monitor' },
          { node = 'item', desc = '[W]get conv.py', shortcut = 'w', command = 'terminal wget https://raw.githubusercontent.com/ironlungx/nvim-pio/main/conv.py'},
          { node = 'item', desc = '[I]nit + conv.py', shortcut = 'i', command = 'terminal pio init --ide vim && python3 conv.py && rm .ccls' },
        },
      },
    },
  })

  vim.keymap.set('n', '<leader>pb', '<cmd>Piocmdf run<CR>', { desc = 'PlatformIO Build' })
  vim.keymap.set('n', '<leader>pu', '<cmd>Piocmdf run -t upload<CR>', { desc = 'PlatformIO Upload' })
  vim.keymap.set('n', '<leader>pm', '<cmd>Piocmdh run -t monitor<CR>', { desc = 'PlatformIO Monitor' })
  vim.keymap.set('n', '<leader>pc', '<cmd>Piocmdf run -t clean<CR>', { desc = 'PlatformIO Clean' })
end

