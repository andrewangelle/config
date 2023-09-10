require('config.remap')
require('config.set')
require('config.filetype')
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Tree viewer setup 
require('nvim-tree').setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  
  update_focused_file = {
    enable = true, 
    update_cwd = true, 
    ignore_list = {}
  },  
  
  system_open = {
    cmd = nil,
    args = {}
  },
  
  view = {
    width = 25,
    side = 'left',
  },

  renderer = {
    indent_markers = {
      enable = true
    }
  }
})


-- Auto open tree view on load
local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


-- Theme setup
require('onedark').setup {
  style = 'dark',
}
require('onedark').load()

-- For auto completing html and jsx tags
require('nvim-ts-autotag').setup()

