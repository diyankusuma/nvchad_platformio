require "nvchad.options"
vim.opt.shell = "/usr/bin/fish"

vim.api.nvim_create_user_command("GitSync", function()
  vim.ui.input({ prompt = "Pesan Commit: " }, function(input)
    -- Gunakan pesan default jika input dibiarkan kosong
    local msg = input
    if not msg or msg == "" then
      msg = "Update otomatis dari Neovim"
    end
    
    -- Escape karakter untuk keamanan command line
    msg = msg:gsub("'", "'\\''")
    
    local cmd = string.format("git add . && git commit -m '%s' && git push", msg)
    print("Sedang mengunggah ke GitHub...")
    
    -- Menjalankan perintah Git di background
    local result = vim.fn.system(cmd)
    
    if vim.v.shell_error == 0 then
      print("Git Push berhasil!")
    else
      print("Gagal sinkronisasi:\n" .. result)
    end
  end)
end, { desc = "Otomasi Git Add, Commit, dan Push" })

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
