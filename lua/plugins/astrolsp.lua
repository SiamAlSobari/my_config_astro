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
          "css",
          "html",
          "vue",
        },
      },
      timeout_ms = 1000,
    },
    servers = {
      "rust_analyzer",
      "tsserver", -- buat JS/TS/React
      "tailwindcss", -- 👉 tambahin ini
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
            completeFunctionCalls = true,
          },
        },
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "relative",
            jsxAttributeCompletionStyle = "auto",
          },
        },
      },
      tailwindcss = {
        filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue" },
        settings = {
          tailwindCSS = {
            lint = {
              cssConflict = "warning",
              invalidApply = "error",
              invalidScreen = "error",
              invalidVariant = "error",
              invalidConfigPath = "error",
            },
            validate = true,
          },
        },
      },
    },
    handlers = {
      rust_analyzer = function(_, opts) require("lspconfig").rust_analyzer.setup(opts) end,
      tsserver = function(_, opts) require("lspconfig").tsserver.setup(opts) end,
      tailwindcss = function(_, opts) require("lspconfig").tailwindcss.setup(opts) end, -- 👉 tambahin handler ini
    },
  },
}
