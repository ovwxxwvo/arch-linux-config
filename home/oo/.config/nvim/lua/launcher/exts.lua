-- NVIM config,


local spec = {

  { exts = { 'vim', 'vimrc' },   runner = 'vim.sh', wrapper = 'exec.sh', },
  { exts = { 'sh', 'bsh' },      runner = 'bsh.sh', wrapper = 'term.sh', },
  { exts = { 'py', 'pyw' },      runner = 'pyt.sh', wrapper = 'term.sh', },
  { exts = { 'tmux', 'tmx' },    runner = 'tmx.sh', wrapper = 'exec.sh', },
  { exts = { 'dsh', 'bash' },    runner = 'dsh.sh', wrapper = 'term.sh', },
  { exts = { 'rs', '' },         runner = 'rst.sh', wrapper = 'term.sh', },
  { exts = { 'c', 'cpp' },       runner = 'cpp.sh', wrapper = 'term.sh', },
  { exts = { 'md', 'markdown' }, runner = 'md.sh',  wrapper = 'exec.sh', },

}
return spec
