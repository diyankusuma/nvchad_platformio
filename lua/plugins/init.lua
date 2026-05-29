return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

{
    'IogaMaster/neocord',
    event = "VeryLazy",
    config = function ()
      require "configs.discord"

    end,
},

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        require "configs.inline-diagnostics"
    end
  },

  { "nvzone/volt" , lazy = true },
  { "nvzone/menu" , lazy = true },

 {
    'akinsho/toggleterm.nvim',
    version = "*",
    event = "VeryLazy",
    config = function()
      require "configs.toggleterm"
    end,
  },


  {
    "anurag3301/nvim-platformio.lua",
    lazy = false,
    config = function()
      require "configs.platformio"
    end,
  },


  {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require "configs.chunk"
  end
  },


  {
	"Pocco81/auto-save.nvim",
  lazy = false,
	config = function()
		 require "configs.auto-save"
	end,
  },


  {
  "barrett-ruth/live-server.nvim",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = function()
    vim.g.live_server = {
      port = 5500,
      browser = "default",
      quiet = false,
      no_css_inject = false,
      open_browser = true,  -- buka browser otomatis
    }
  end,

},

 {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require "nvchad.configs.treesitter"
    end,
  }
 -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
