require("auto-save").setup({
  enabled = true, 
  -- Trigger saat keluar Insert mode, saat teks berubah di Normal/Insert mode
  trigger_events = { "InsertLeave", "TextChanged", "TextChangedI" }, 
  
  debounce_delay = 1000, -- Delay 1 detik supaya tidak terlalu membebani disk

  condition = function(buf)
    local fn = vim.fn
    local utils = require("auto-save.utils.data")

    -- Cek apakah buffer bisa dimodifikasi & bukan tipe file spesial (seperti NvimTree)
    if fn.getbufvar(buf, "&modifiable") == 1 and
       utils.not_in(fn.getbufvar(buf, "&filetype"), { "neo-tree", "NvimTree", "TelescopePrompt" }) then
      return true 
    end
    return false 
  end,
  write_all_buffers = false, -- Hanya simpan file yang sedang aktif dikerjakan
  
  execution_message = {
    message = function()
      return "💾 AutoSave: " .. vim.fn.strftime("%H:%M:%S")
    end,
    dim = 0.18,
    cleaning_interval = 1000,
  },
})
