let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd D:/repos/nlw_spacetime/web
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +13 src/app/page.tsx
badd +19 D:/repos/nlw_spacetime/server/src/server.ts
badd +3 src/app/memories/new/page.tsx
badd +5 src/components/EmptyMemories.tsx
badd +26 src/components/Hero.tsx
badd +29 src/components/MediaPicker.tsx
badd +61 src/components/NewMemoryForm.tsx
badd +4 src/lib/api.ts
badd +44 D:/repos/nlw_spacetime/server/src/routes/upload.ts
badd +486 node_modules/axios/index.d.ts
badd +1 D:/repos/nlw_spacetime/server/src/./routes/auth.ts
badd +4 d:/repos/nlw_spacetime/server/node_modules/@fastify/cors/types/index.d.ts
badd +52 src/app/layout.tsx
badd +5 next.config.js
badd +17 src/components/Profile.tsx
badd +0 D:/repos/nlw_spacetime/server/src/routes/memories.ts
badd +0 tailwind.config.js
badd +41 src/app/memories/[id]/page.tsx
badd +14 d:/repos/nlw_spacetime/web/node_modules/next/dist/client/script.d.ts
argglobal
%argdel
$argadd src/app/page.tsx
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/app/memories/[id]/page.tsx
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 94 + 95) / 190)
exe '2resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 94 + 95) / 190)
exe '3resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 95 + 95) / 190)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 95 + 95) / 190)
argglobal
balt d:/repos/nlw_spacetime/web/node_modules/next/dist/client/script.d.ts
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((2 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 038|
wincmd w
argglobal
if bufexists(fnamemodify("src/app/page.tsx", ":p")) | buffer src/app/page.tsx | else | edit src/app/page.tsx | endif
if &buftype ==# 'terminal'
  silent file src/app/page.tsx
endif
balt src/components/NewMemoryForm.tsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 41 - ((18 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 41
normal! 033|
wincmd w
argglobal
if bufexists(fnamemodify("tailwind.config.js", ":p")) | buffer tailwind.config.js | else | edit tailwind.config.js | endif
if &buftype ==# 'terminal'
  silent file tailwind.config.js
endif
balt src/app/layout.tsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 20 - ((19 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 035|
wincmd w
argglobal
if bufexists(fnamemodify("src/app/layout.tsx", ":p")) | buffer src/app/layout.tsx | else | edit src/app/layout.tsx | endif
if &buftype ==# 'terminal'
  silent file src/app/layout.tsx
endif
balt src/components/Profile.tsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 52 - ((14 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 52
normal! 062|
wincmd w
exe '1resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 94 + 95) / 190)
exe '2resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 94 + 95) / 190)
exe '3resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 95 + 95) / 190)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 95 + 95) / 190)
tabnext
edit D:/repos/nlw_spacetime/server/src/routes/memories.ts
argglobal
balt D:/repos/nlw_spacetime/server/src/routes/upload.ts
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 53 - ((30 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 53
normal! 06|
if exists(':tcd') == 2 | tcd D:/repos/nlw_spacetime/server | endif
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
