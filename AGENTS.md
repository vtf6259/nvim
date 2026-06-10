# Neovim Config

## Structure
- `init.lua` — entrypoint (requires config modules, sets colorscheme/options)
- `lua/config/` — setup modules (lazy, lsp, neotree)
- `lua/plugins/` — one file per plugin spec (lazy.nvim format)
- `lua/keybinds.lua` — custom keymaps

## Plugin manager
lazy.nvim — add a new plugin by creating `lua/plugins/<name>.lua` returning a spec table. Run `:Lazy` to install/update.

## Key conventions
- Colorscheme: `tokyonight-storm` (set in `init.lua`)
- Tabs: 4-space, no expandtab (`set autoindent noexpandtab tabstop=4 shiftwidth=4`)
- Neo-tree shows dotfiles + gitignored files (`hide_dotfiles=false, hide_gitignored=false`)
- LSP uses Nvim 0.11+ API: `vim.lsp.config()` + `vim.lsp.enable()`, not `require('lspconfig')[...]`
- Mason auto-installs: `lua_ls`, `pyright`, `ts_ls`, `rust_analyzer`, `gopls`
- nvim-cmp sources: nvim_lsp, luasnip, buffer, path

## Commands
- `:Mason` — browse/install LSP servers, linters, formatters
- `:LspInfo` — active LSP clients
- `:Neotree` — file explorer
- `:SudaWrite` — write files with sudo via suda.vim

## Important
- Do not add or modify git remotes unless the user explicitly asks.
- Do not include remote information in AGENTS.md or any other file unless the user requests it.
