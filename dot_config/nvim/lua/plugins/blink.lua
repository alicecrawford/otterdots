return { -- override blink.cmp plugin
  "Saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Up>"] = { "hide", "fallback" },
      ["<Down>"] = { "hide", "fallback" },
    },
  },
}
