return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      local jdtls = require "jdtls"
      opts.settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-21",
                path = "/usr/lib/jvm/java-1.21.0-openjdk-amd64/",
              },
              {
                name = "JavaSE-25",
                path = "/usr/lib/jvm/java-1.25.0-openjdk-amd64/",
              },
            },
          },
        },
      }

      opts.on_attach = function(_, bufnr)
        local map = vim.keymap.set

        -- testes (DAP)
        map("n", "<leader>df", function() jdtls.test_class() end, {
          buffer = bufnr,
          desc = "Test class",
        })
        map("n", "<leader>dn", function() jdtls.test_nearest_method() end, {
          buffer = bufnr,
          desc = "Test nearest method",
        })
      end

      return opts
    end,
  },
}
