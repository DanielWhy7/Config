local opt=vim.opt
opt.confirm=true
opt.cursorline=true
opt.expandtab=true
opt.shiftround=true
opt.shiftwidth=2
opt.tabstop=2
opt.fillchars={
  foldopen="",
  foldclose="",
  fold=" ",
  foldsep=" ",
  diff="╱",
  eob=" ",
}
opt.list=true
opt.mouse="a"
opt.number=true
opt.relativenumber=true
vim.cmd'colorscheme wildcharm'
