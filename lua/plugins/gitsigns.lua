return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = {hl = 'GitGutterAdd', text = '+'},
          change = {hl = 'GitGutterChange', text = '~'},
          delete = {hl = 'GitGutterDelete', text = '_'},
          topdelete = {hl = 'GitGutterDelete', text = '‾'},
          changedelete = {hl = 'GitGutterChangeDelete', text = '~'},
        },
        watch_gitdir = {
          interval = 1000,
          follow_files = true
        },
        current_line_blame = true,
        sign_priority = 6,
        update_debounce = 200,
        status_formatter = nil, -- Use default
      })
    end,
  }
}

