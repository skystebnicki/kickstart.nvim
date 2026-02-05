# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A personalized fork of kickstart.nvim — a single-file Neovim configuration with modular plugin extensions. Targets latest stable and nightly Neovim (>= 0.10).

## Commands

- `:Lazy` — Open plugin manager UI
- `:Lazy update` — Update all plugins
- `:checkhealth` — Run health checks (verifies neovim version, git, make, unzip, rg)
- Format check: `stylua --check .` (runs in CI via GitHub Actions on PRs)
- Format fix: `stylua .`

## Architecture

**Entry point:** `init.lua` (~1048 lines) — handles everything: leader key setup, editor options, basic keymaps, autocommands, lazy.nvim bootstrap, and core plugin specs.

**Plugin loading order in lazy.setup():**
1. Core plugins defined inline in `init.lua` (LSP, telescope, treesitter, conform, which-key, etc.)
2. `{ import = 'custom.plugins' }` — user/custom plugin specs
3. `{ import = 'sky.plugins' }` — personal plugin specs

**After lazy.setup():** `require 'sky'` loads `lua/sky/init.lua` which applies transparency and custom remaps.

### Three plugin namespaces

| Directory | Purpose |
|---|---|
| `lua/kickstart/plugins/` | Kickstart example plugins (currently empty) |
| `lua/custom/plugins/` | Custom additions (formatting with prettier, telescope-file-browser) |
| `lua/sky/plugins/` | Personal plugins (autocomplete/blink.cmp, debug/dap, gitsigns, neo-tree, lint, autopairs, indent lines, tmux-navigator) |

Each plugin file returns a lazy.nvim spec table (or list of tables).

### Non-plugin modules

- `lua/sky/transparency.lua` — Sets transparent backgrounds across UI elements
- `lua/sky/remap.lua` — Tmux integration keymaps (`<C-f>` sessionizer, `<C-T>`/`<C-y>` splits)
- `lua/kickstart/health.lua` — `:checkhealth` implementation

## Key Conventions

- **Leader key:** Space
- **Keymap groups:** `<leader>s` = Search, `<leader>t` = Toggle, `<leader>h` = Git hunk, `gr*` = LSP go-to
- **Plugin manager:** lazy.nvim (auto-bootstrapped on first run)
- **Completion:** blink.cmp (not nvim-cmp)
- **LSP servers configured:** clangd, gopls, rust_analyzer, ts_ls, lua_ls
- **Colorscheme:** tokyonight-night with transparent backgrounds
- **Tmux integration:** vim-tmux-navigator replaces default `<C-w>` window nav

## Lua Style

Configured in `.stylua.toml`:
- 160 column width, 2-space indentation, single quotes preferred
- `call_parentheses = "None"` — use `require 'foo'` not `require('foo')`
