return {
  "zbirenbaum/copilot.lua",
  opts = {
    filetypes = {
      yaml = true,
      yml = true,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    hide_during_completion = true,
    debounce = 15,
    trigger_on_accept = true,
    keymap = {
      accept = "<C-l>",
      accept_word = true,
      accept_line = true,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
      toggle_auto_trigger = false,
    },
  },
}
