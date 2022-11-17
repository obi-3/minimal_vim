--- Options ---
-- Unload -- 
vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu   = 1
vim.g.did_indent_on             = 1
vim.g.loaded_2html_plugin       = 1
vim.g.loaded_getscript          = 1
vim.g.loaded_getscriptPlugin    = 1
vim.g.loaded_gzip               = 1
vim.g.loaded_logiPat            = 1
vim.g.loaded_logipat            = 1
vim.g.loaded_man                = 1
vim.g.loaded_matchit            = 1
vim.g.loaded_matchparen         = 1
vim.g.loaded_netrw              = 1
vim.g.loaded_netrwFileHandlers  = 1
vim.g.loaded_netrwPlugin        = 1
vim.g.loaded_netrwSettings      = 1
vim.g.loaded_remote_plugins     = 1
vim.g.loaded_rrhelper           = 1
vim.g.loaded_shada_plugin       = 1
vim.g.loaded_spellfile_plugin   = 1
vim.g.loaded_sql_completion     = 1
vim.g.loaded_tar                = 1
vim.g.loaded_tarPlugin          = 1
vim.g.loaded_tutor_mode_plugin  = 1
vim.g.loaded_vimball            = 1
vim.g.loaded_vimballPlugin      = 1
vim.g.loaded_zip                = 1
vim.g.loaded_zipPlugin          = 1
vim.g.skip_loading_mswin        = 1
vim.g.vimsyn_embed              = 1

-- Base --
vim.cmd("syntax on")
vim.o.encoding = "utf-8"
vim.o.history = 1000
vim.o.clipboard = "unnamedplus"
vim.o.errorbells = false
vim.o.visualbells = false
vim.o.backspace = "indent,eol,start"
vim.o.virtauledit = "block"
vim.o.formatoptions = vim.o.formatoptions .. "m" -- 整形オプション，マルチバイト系を追加
-- File --
vim.o.swapfile = false
vim.o.backup = false
vim.o.hidden = true
vim.o.autoread = true
-- vim.o.undofile = true
-- vim.opt.undodir = os.getenv("HOME") .. '/.local/share/nvim/undo'
-- Display --
vim.o.title = true
vim.o.termguicolors = true
vim.o.number = false
vim.o.cmdheight = 0
vim.o.showmode = false
vim.o.showmatch = true
vim.o.matchtime = 1
vim.o.showcmd = true
vim.o.laststatus = 1
vim.o.wildmenu = true
vim.o.wildmode = "list:longest,full"
-- Tab & Indent -- 
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 0
vim.o.expandtab = true -- expand tab to spaces
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.wrap = true
vim.o.linebreak = true
vim.o.showbreak = "+ "
vim.o.breakindent = true
-- Search --
vim.o.wrapscan = true -- 最後まで検索したら先頭へ戻る
vim.o.ignorecase = true -- 大文字小文字無視
vim.o.smartcase = true -- 大文字ではじめたら大文字小文字無視しない
vim.o.incsearch = true -- インクリメンタルサーチ
vim.o.hlsearch = true -- 検索文字をハイライト

--- Commands ---
vim.cmd([[
    command -count=4 Tab call Tab(<count>)
    function Tab(count)
        execute 'set shiftwidth=' . a:count
        execute 'set tabstop=' . a:count
    endfunction
]])
--- Mappings --- 
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "
-- Normal mode -- 
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("n", "s", "<Nop>", opts)
keymap("n", "s/", ":%s/", opts)
keymap("n", "<Esc><Esc>", ":noh<Cr>", opts)
keymap("n", "<Leader>j", ":bprev<Cr>", opts)
keymap("n", "<Leader>k", ":bnext<Cr>", opts)
--keymap("n", "<Leader>e", "<Cmd>E<Cr>", opts)
keymap("n", "<Leader>d", ":bwipe<Cr>", opts)
--keymap("n", "<Leader>c", "<Cmd>e $MYVIMRC<Cr>", opts)
keymap("n", "<Leader>n", ":set number<Cr>", opts)
keymap("n", "<Leader>N", ":set nonumber<Cr>", opts)
keymap("n", "<Leader>2", ":Tab 2<Cr>", opts)
keymap("n", "<Leader>4", ":Tab 4<Cr>", opts)
-- Insert mode -- 
keymap("i", "<C-k>", "<C-o>D", { noremap=true }) -- カーソルから右を全て削除
keymap("i", "<C-j>", "<C-o>o", { noremap=true }) -- 改行
keymap("i", "<C-y>", "<C-o>p", { noremap=true }) -- paste
keymap("i", "<C-b>", "<left>", { noremap=true })
keymap("i", "<C-f>", "<right>", { noremap=true })
-- Visual mode -- 
keymap("v", "j", "gj", opts)
keymap("v", "k", "gk", opts)
-- Command mode -- 
keymap("c", "<C-b>", "<left>", { noremap=true })
keymap("c", "<C-f>", "<right>", { noremap=true })
