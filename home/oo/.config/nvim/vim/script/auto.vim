" NEOVIM config, a text editor based on vim.


autocmd BufWritePre * let save_pos = getpos(".") |
      \ %s/\s\+$//e |
      \ call setpos(".", save_pos)

autocmd BufWritePre *.md let save_pos = getpos(".") |
      \ %s/$/  /e |
      \ %s/^\s\+$//e |
      \ call setpos(".", save_pos)
