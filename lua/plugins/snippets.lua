return {
        "L3MON4D3/LuaSnip",
        config = function(plugin, opts)
          require("luasnip.loaders.from_vscode").lazy_load {
            paths = { "~/.config/kvim/snippets" },
          }
        end,
      }
