require("toggleterm").setup {
  -- Tombol default untuk membuka terminal
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float", -- bisa juga "float" atau "vertical"

  -- Konfigurasi tambahan kalau mau floating terminal
  float_opts = {
    border = "curved",
    winblend = 3,
  },
}

