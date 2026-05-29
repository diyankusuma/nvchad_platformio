require("hlchunk").setup({
  chunk = {
    enable = true,
    notify = false,
    use_treesitter = true,
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "╭",
      left_bottom = "╰",
      right_arrow = ">",
    },
    style = {
      { fg = "#8FABD4" },
    },
  },
})

