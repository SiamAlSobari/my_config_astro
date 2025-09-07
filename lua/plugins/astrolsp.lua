-- ~/.config/nvim/lua/plugins/astrolsp.lua
if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      codelens = true,
      inlay_hints = true,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {
          "rust",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
        },
      },
      timeout_ms = 1000,
    },
    servers = {
      "rust_analyzer",
      "tsserver", -- tambahkan untuk JS/TS/React
    },
    config = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
            diagnostics = { enable = true },
            inlayHints = { enable = true },
          },
        },
      },
      tsserver = {
        settings = {
          completions = {
            completeFunctionCalls = true, -- auto lengkapi fn() langsung dengan ()
          },
        },
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "relative", -- impor relatif
            jsxAttributeCompletionStyle = "auto", -- buat React props completion
          },
        },
      },
    },
    handlers = {
      rust_analyzer = function(_, opts) require("lspconfig").rust_analyzer.setup(opts) end,
      tsserver = function(_, opts) require("lspconfig").tsserver.setup(opts) end,
    },
  },
}
