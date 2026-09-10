vim.keymap.set(
  "n",
    "<leader>dg",
  function() vim.cmd "TermExec cmd='gradle bootRun'" end,
  { desc = "Spring Boot Run with gradle" }
