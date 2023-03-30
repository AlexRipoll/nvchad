local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "rust",
    "go",
    "solidity",
    "javascript",
    "typescript",
    "json",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "graphql",
    "bash",
    "dockerfile",
    "help",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "gopls",
    "rust-analyzer",
    "solang",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "yaml-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  defaults = {
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
      },
    },
    mappings = {
      i = {
        ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
        ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
        ["<C-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist, -- send selected to quickfixlist
      },
    },
    extensions_list = { "themes", "terms", "fzf" },
  },
}

return M
