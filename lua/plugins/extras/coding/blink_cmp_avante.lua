return {
  {
    "saghen/blink.cmp",
    dependencies = {
      "Kaiser-Yang/blink-cmp-avante",
      -- ... Other dependencies
    },
    opts = {
      sources = {
        -- Add 'avante' to the list
        default = { "avante", "lsp", "path", "luasnip", "buffer" },
        providers = {
          kind_icons = {
            AvanteCmd = "",
            AvanteMention = "",
          },
          avante = {
            module = "blink-cmp-avante",
            name = "Avante",
            opts = {
              -- options for blink-cmp-avante
            },
            command = {
              get_kind_name = function(_)
                return "AvanteCmd"
              end,
            },
            mention = {
              get_kind_name = function(_)
                return "AvanteMention"
              end,
            },
          },
        },
      },
    },
  },
}
