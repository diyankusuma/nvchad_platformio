require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>gs", function()
  vim.api.nvim_set_current_dir("/mnt/diyan/Skripsi_Project/Skripsi_Lulus/")
  print("Changed directory to Skripsi Project")
end, { desc = "CD to Skripsi folder" })

map("n", "<leader>gn", function()
  vim.api.nvim_set_current_dir("~/.config/nvim/")
  print("Changed directory to nvim Project")
end, { desc = "CD to nvim folder" })

map("n", "<leader>gh", function()
  vim.api.nvim_set_current_dir("~/.config/hypr/")
  print("Changed directory to hyprland Project")
end, { desc = "CD to hyprland folder" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- mouse users + nvimtree users!
vim.keymap.set({ "n", "v" }, "<RightMouse>", function()
  require('menu.utils').delete_old_menus()

  vim.cmd.exec '"normal! \\<RightMouse>"'

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end, {})
