-- NVIM config,


local spec = {

  { '*',         { root_markers = { '.git' } } },
  { 'vim_ls',    { cmd = { 'vim-language-server', '--stdio' }, filetypes = { 'vim' } } },
  { 'lua_ls',    { cmd = { 'lua-language-server', }, filetypes = { 'lua' } } },
  { 'bash_ls',   { cmd = { 'bash-language-server', 'start' }, filetypes = { 'sh' } } },
  { 'python_ls', { cmd = { 'pyright-langserver', '--stdio' }, filetypes = { 'python' } } },
  { 'json_ls',   { cmd = { 'vscode-json-language-server', '--stdio' }, filetypes = { 'json' } } },
  { 'rust_ls',   { cmd = { 'rust-analyzer' }, filetypes = { 'rust' } } },
  { 'cpp_ls',    { cmd = { 'clangd' }, filetypes = { 'c', 'cpp' } } },
  { 'html_ls',   { cmd = { 'vscode-html-language-server', '--stdio' }, filetypes = { 'html' } } },
  { 'css_ls',    { cmd = { 'vscode-css-language-server', '--stdio' }, filetypes = { 'css', 'scss', 'less' } } },
  { 'ts_ls',     { cmd = { 'typescript-language-server', '--stdio' }, filetypes = { 'javascript', 'typescript' } } },
  { 'asm_ls',    { cmd = { 'asm-lsp' }, filetypes = { 'asm' } } },

}

spec[3][2].settings = {
  Lua = {
    root_markers = { '.git', 'init.lua', '.lua' },
    runtime = { version = "LuaJIT" },
    diagnostics = { globals = { "vim" } },
    hint = { enable = true },
  }
}


return spec
