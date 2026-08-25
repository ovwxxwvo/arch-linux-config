-- NVIM config,


local lsp = {

vim_ls  = { cmd = { "vim-language-server",         "--stdio" }, filetypes = { "vim"                     } },
lua_ls  = { cmd = { "lua-language-server",                   }, filetypes = { "lua"                     } },
bash_ls = { cmd = { "bash-language-server",        "start"   }, filetypes = { "sh",                     } },
py_ls   = { cmd = { "pyright-langserver",          "--stdio" }, filetypes = { "python"                  } },
json_ls = { cmd = { "vscode-json-language-server", "--stdio" }, filetypes = { "json"                    } },
html_ls = { cmd = { "vscode-html-language-server", "--stdio" }, filetypes = { "html"                    } },
css_ls  = { cmd = { "vscode-css-language-server",  "--stdio" }, filetypes = { "css","scss","less"       } },
ts_ls   = { cmd = { "typescript-language-server",  "--stdio" }, filetypes = { "javascript","typescript" } },
rust_ls = { cmd = { "rust-analyzer",                         }, filetypes = { "rust"                    } },
cpp_ls  = { cmd = { "clangd",                                }, filetypes = { "c", "cpp"                } },
asm_ls  = { cmd = { "asm-lsp",                               }, filetypes = { "asm"                     } },

}

lsp.lua_ls.root_markers  = { ".git", "init.lua", }
lsp.rust_ls.root_markers = { "Cargo.toml", ".git", }

lsp.lua_ls.settings = {
  Lua = {
    hint        = { enable  = true },
    runtime     = { version = "LuaJIT" },
    diagnostics = { globals = { "vim" } },
  } }
lsp.rust_ls.settings = {
  ["rust-analyzer"] = { cargo = {
    procMacro = { enable = true },
    buildScripts = { enable = true },
    extraEnv = { MESON_BUILD_ROOT = "/home/program/gitclone/camp/qemu-camp-2026-exper-ovwxxwvo/build" },
    -- extraEnv = { MESON_BUILD_ROOT = "../build" },
  } } }

return lsp
