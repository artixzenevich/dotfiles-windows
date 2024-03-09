local keymap = vim.keymap
local fn = vim.fn

return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      keymap.set("i", "<C-g>", function()
        return fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      keymap.set("i", "<c-;>", function()
        return fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      keymap.set("i", "<c-,>", function()
        return fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      keymap.set("i", "<c-x>", function()
        return fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
}
