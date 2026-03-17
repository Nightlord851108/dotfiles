" Filename: pikacode_light.vim
" Author: Gary Shih (based on pikacode.vim by Leo Mao)
"
" Lightline colorscheme for pikacode-light

if exists('g:lightline')

  let s:base04 = [ '#fafaf5', 231 ]
  let s:base03 = [ '#eeeee8', 254 ]
  let s:base023 = [ '#e0e0da', 253 ]
  let s:base02 = [ '#d0d0ca', 250 ]
  let s:base01 = [ '#b0b0aa', 249 ]
  let s:base00 = [ '#8a8a8a', 245 ]
  let s:base0 = [ '#6a6a6a', 242 ]
  let s:base1 = [ '#555555', 240 ]
  let s:base2 = [ '#3b3b3b', 237 ]
  let s:base3 = [ '#2b2b2b', 235 ]
  let s:yellow = [ '#a67c00', 136 ]
  let s:orange = [ '#b35c00', 130 ]
  let s:red = [ '#a32024', 124 ]
  let s:magenta = [ '#b35c00', 130 ]
  let s:blue = [ '#0060af', 25 ]
  let s:green = [ '#3a7a00', 28 ]
  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ [ s:base04, s:blue, 'bold' ], [ s:yellow, s:base04 ], [ s:base2, s:base01 ] ]
  let s:p.insert.left = [ [ s:base04, s:green, 'bold' ], [ s:yellow, s:base04 ], [ s:base2, s:base01 ] ]
  let s:p.visual.left = [ [ s:base04, s:magenta, 'bold' ], [ s:yellow, s:base04 ], [ s:base2, s:base01 ] ]
  let s:p.replace.left = [ [ s:base04, s:red, 'bold' ], [ s:yellow, s:base04 ], [ s:base2, s:base01 ] ]
  let s:p.inactive.left =  [ [ s:base0, s:base023 ], [ s:base00, s:base03 ] ]
  let s:p.normal.right = [ [ s:base023, s:base2 ], [ s:base0, s:base01 ] ]
  let s:p.inactive.right = [ [ s:base03, s:base01 ], [ s:base00, s:base023 ] ]
  let s:p.normal.middle = [ [ s:base2, s:base023 ] ]
  let s:p.inactive.middle = [ [ s:base0, s:base03 ] ]
  let s:p.tabline.left = [ [ s:base2, s:base01 ] ]
  let s:p.tabline.tabsel = [ [ s:base2, s:base03 ] ]
  let s:p.tabline.middle = [ [ s:base023, s:base0 ] ]
  let s:p.tabline.right = [ [ s:base2, s:base01 ] ]
  let s:p.normal.error = [ [ s:base04, s:red ] ]
  let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

  let g:lightline#colorscheme#pikacode_light#palette = lightline#colorscheme#flatten(s:p)

endif
