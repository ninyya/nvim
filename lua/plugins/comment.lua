return {
  "numToStr/Comment.nvim",
  opts = {
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
      ---Line-comment toggle keymap
      line = "<leader>--",
      ---Block-comment toggle keymap
      block = "<leader>-*",
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
      ---Line-comment keymap
      line = "<leader>--",
      ---Block-comment keymap
      block = "<leader>-*",
    },
    ---LHS of extra mappings
    extra = {
      ---Add comment on the line above
      above = "<leader>-O",
      ---Add comment on the line below
      below = "<leader>-o",
      ---Add comment at the end of line
      eol = "<leader>-A",
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
      --- Toggle/Operator mappings
      basic = true,
      ---Extra mappings; above/below/eol
      extra = true,
    },
  },
  lazy = false,
}
