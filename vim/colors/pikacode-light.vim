" Vim color scheme
" Name:       pikacode-light.vim
" Author:     Gary Shih (based on pikacode.vim by Leo Mao)

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "pikacode-light"

set background=light

" -> Text; Miscellaneous
hi Normal         guibg=#fafaf5 guifg=#3b3b3b gui=NONE
hi SpecialKey     guibg=#fafaf5 guifg=#8700af gui=NONE
hi VertSplit      guibg=#fafaf5 guifg=#a67c00 gui=NONE
hi SignColumn     guibg=#fafaf5 guifg=#8700af gui=NONE
hi NonText        guibg=#fafaf5 guifg=#c7004f gui=NONE
hi Directory      guibg=#fafaf5 guifg=#0060af gui=NONE
hi Title          guibg=#fafaf5 guifg=#b35c00 gui=bold

" -> Cursor
hi Cursor         guibg=#3b3b3b guifg=#fafaf5 gui=NONE
hi CursorIM       guibg=#3b3b3b guifg=#fafaf5 gui=NONE
hi CursorColumn   guibg=#f0f0ea               gui=NONE
hi CursorLine     guibg=#eeeee8               gui=NONE
hi CursorLineNR   guibg=#e8e8e2 guifg=#b35c00 gui=bold

" -> Folding
hi FoldColumn     guibg=#fafaf5 guifg=#0060af gui=NONE
hi Folded         guibg=#eeeee8 guifg=#0060af gui=NONE

" -> Line info
hi LineNr         guibg=#f0f0ea guifg=#8a8a8a gui=NONE
hi StatusLine     guibg=#d0d0ca guifg=#3b3b3b gui=NONE
hi StatusLineNC   guibg=#e0e0da guifg=#8a8a8a gui=NONE
hi ColorColumn    guibg=#e8e8e2               gui=NONE
hi WildMenu       guibg=#d0d8e0 guifg=#b35c00 gui=underline

" -> Messages
hi ErrorMsg       guibg=#f8d7da guifg=#a32024 gui=NONE
hi Question       guibg=#fafaf5 guifg=#b35c00 gui=NONE
hi WarningMsg     guibg=#b35c00 guifg=#fafaf5 gui=NONE
hi MoreMsg        guibg=#fafaf5 guifg=#b35c00 gui=NONE
hi ModeMsg        guibg=#fafaf5 guifg=#b35c00 gui=NONE

" -> Search
hi Search         guibg=#ffe070 guifg=#3b3b3b gui=NONE
hi IncSearch      guibg=#ffe070 guifg=#3b3b3b gui=NONE

" -> Diff
hi DiffAdd        guibg=#d4edda guifg=#3b3b3b gui=NONE
hi DiffChange     guibg=#d6e9f8 guifg=#3b3b3b gui=NONE
hi DiffDelete     guibg=#f8d7da guifg=#3b3b3b gui=NONE
hi DiffText       guibg=#b8d4f0 guifg=#3b3b3b gui=underline

" -> Menu
hi Pmenu          guibg=#e8e8e2 guifg=#3b3b3b gui=NONE
hi PmenuSel       guibg=#d0d8e0 guifg=#0060af gui=NONE
hi PmenuSbar      guibg=#d0d0ca               gui=NONE
hi PmenuThumb     guibg=#8a8a8a               gui=NONE

" -> Tabs
hi TabLine        guibg=#e0e0da guifg=#8a8a8a gui=NONE
hi TabLineFill    guibg=#eeeee8               gui=NONE
hi TabLineSel     guibg=#fafaf5 guifg=#3b3b3b gui=bold

" -> Visual Mode
hi Visual         guibg=#d0d8e0               gui=NONE
hi VisualNOS      guibg=#d0d8e0               gui=NONE

" -> Code
hi Number         guibg=#fafaf5 guifg=#8700af gui=NONE
hi Constant       guibg=#fafaf5 guifg=#b35c00 gui=NONE
hi Character      guibg=#fafaf5 guifg=#b35c00 gui=NONE
hi String         guibg=#fafaf5 guifg=#b35c00 gui=NONE
hi Identifier     guibg=#fafaf5 guifg=#a67c00 gui=NONE
hi Function       guibg=#fafaf5 guifg=#007060 gui=NONE
hi Special        guibg=#fafaf5 guifg=#b35c00 gui=NONE
hi Type           guibg=#fafaf5 guifg=#a67c00 gui=NONE
hi Decorator      guibg=#fafaf5 guifg=#8700af gui=NONE
hi Operator       guibg=#fafaf5 guifg=#c7004f gui=NONE
hi Delimiter      guibg=#fafaf5 guifg=#c7004f gui=NONE
hi Statement      guibg=#fafaf5 guifg=#0060af gui=NONE
hi Exception      guibg=#fafaf5 guifg=#3a7a00 gui=NONE
hi Include        guibg=#fafaf5 guifg=#3a7a00 gui=NONE
hi PreProc        guibg=#fafaf5 guifg=#8700af gui=NONE
hi Ignore         guibg=#fafaf5 guifg=#fafaf5 gui=NONE
hi Comment        guibg=#fafaf5 guifg=#8a8a8a gui=NONE
hi Todo           guibg=#fafaf5 guifg=#c7004f gui=bold
hi Error          guibg=#fafaf5 guifg=#a32024 gui=NONE
hi MatchParen     guibg=#d0d8e0
hi Underlined     guibg=#fafaf5 guifg=#0060af gui=underline

" -> HTML-specific
hi htmlBold                 guibg=#fafaf5 guifg=#3b3b3b gui=bold
hi htmlBoldItalic           guibg=#fafaf5 guifg=#3b3b3b gui=bold,italic
hi htmlBoldUnderline        guibg=#fafaf5 guifg=#3b3b3b gui=bold,underline
hi htmlBoldUnderlineItalic  guibg=#fafaf5 guifg=#3b3b3b gui=bold,underline,italic
hi htmlItalic               guibg=#fafaf5 guifg=#3b3b3b gui=italic
hi htmlUnderline            guibg=#fafaf5 guifg=#3b3b3b gui=underline
hi htmlUnderlineItalic      guibg=#fafaf5 guifg=#3b3b3b gui=underline,italic

" -> Text; Miscellaneous (cterm)
hi Normal         ctermbg=231  ctermfg=237  cterm=NONE
hi SpecialKey     ctermbg=NONE ctermfg=91   cterm=NONE
hi VertSplit      ctermbg=NONE ctermfg=136  cterm=NONE
hi SignColumn     ctermbg=NONE ctermfg=91   cterm=NONE
hi NonText        ctermbg=NONE ctermfg=161  cterm=NONE
hi Directory      ctermbg=NONE ctermfg=25   cterm=NONE
hi Title          ctermbg=NONE ctermfg=130  cterm=bold

" -> Cursor (cterm)
hi Cursor         ctermbg=237  ctermfg=NONE cterm=NONE
hi CursorIM       ctermbg=237  ctermfg=NONE cterm=NONE
hi CursorColumn   ctermbg=254               cterm=NONE
hi CursorLine     ctermbg=254               cterm=NONE
hi CursorLineNR   ctermbg=253  ctermfg=130  cterm=bold

" -> Folding (cterm)
hi FoldColumn     ctermbg=NONE ctermfg=25   cterm=NONE
hi Folded         ctermbg=254  ctermfg=25   cterm=NONE

" -> Line info (cterm)
hi LineNr         ctermbg=254  ctermfg=245  cterm=NONE
hi StatusLine     ctermbg=250  ctermfg=237  cterm=NONE
hi StatusLineNC   ctermbg=253  ctermfg=245  cterm=NONE
hi ColorColumn    ctermbg=253               cterm=NONE
hi WildMenu       ctermbg=152  ctermfg=130  cterm=underline

" -> Messages (cterm)
hi ErrorMsg       ctermbg=217  ctermfg=124  cterm=NONE
hi Question       ctermbg=NONE ctermfg=130  cterm=NONE
hi WarningMsg     ctermbg=130  ctermfg=231  cterm=NONE
hi MoreMsg        ctermbg=NONE ctermfg=130  cterm=NONE
hi ModeMsg        ctermbg=NONE ctermfg=130  cterm=NONE

" -> Search (cterm)
hi Search         ctermbg=222  ctermfg=237  cterm=NONE
hi IncSearch      ctermbg=222  ctermfg=237  cterm=NONE

" -> Diff (cterm)
hi DiffAdd        ctermbg=157  ctermfg=237  cterm=NONE
hi DiffChange     ctermbg=153  ctermfg=237  cterm=NONE
hi DiffDelete     ctermbg=217  ctermfg=237  cterm=NONE
hi DiffText       ctermbg=110  ctermfg=237  cterm=underline

" -> Menu (cterm)
hi Pmenu          ctermbg=253  ctermfg=237  cterm=NONE
hi PmenuSel       ctermbg=152  ctermfg=25   cterm=NONE
hi PmenuSbar      ctermbg=250               cterm=NONE
hi PmenuThumb     ctermbg=245               cterm=NONE

" -> Tabs (cterm)
hi TabLine        ctermbg=253  ctermfg=245  cterm=NONE
hi TabLineFill    ctermbg=254               cterm=NONE
hi TabLineSel     ctermbg=231  ctermfg=237  cterm=bold

" -> Visual Mode (cterm)
hi Visual         ctermbg=152               cterm=NONE
hi VisualNOS      ctermbg=152               cterm=NONE

" -> Code (cterm)
hi Number         ctermbg=NONE ctermfg=91   cterm=NONE
hi Constant       ctermbg=NONE ctermfg=130  cterm=NONE
hi Character      ctermbg=NONE ctermfg=130  cterm=NONE
hi String         ctermbg=NONE ctermfg=130  cterm=NONE
hi Identifier     ctermbg=NONE ctermfg=136  cterm=NONE
hi Function       ctermbg=NONE ctermfg=30   cterm=NONE
hi Special        ctermbg=NONE ctermfg=130  cterm=NONE
hi Type           ctermbg=NONE ctermfg=136  cterm=NONE
hi Decorator      ctermbg=NONE ctermfg=91   cterm=NONE
hi Operator       ctermbg=NONE ctermfg=161  cterm=NONE
hi Delimiter      ctermbg=NONE ctermfg=161  cterm=NONE
hi Statement      ctermbg=NONE ctermfg=25   cterm=NONE
hi Exception      ctermbg=NONE ctermfg=28   cterm=NONE
hi Include        ctermbg=NONE ctermfg=28   cterm=NONE
hi PreProc        ctermbg=NONE ctermfg=91   cterm=NONE
hi Ignore         ctermbg=NONE ctermfg=NONE cterm=NONE
hi Comment        ctermbg=NONE ctermfg=245  cterm=NONE
hi Todo           ctermbg=NONE ctermfg=161  cterm=bold
hi Error          ctermbg=NONE ctermfg=124  cterm=NONE
hi MatchParen     ctermbg=152
hi Underlined     ctermbg=NONE ctermfg=25   cterm=underline

" -> HTML-specific (cterm)
hi htmlBold                 ctermbg=NONE ctermfg=237 cterm=bold
hi htmlBoldItalic           ctermbg=NONE ctermfg=237 cterm=bold,italic
hi htmlBoldUnderline        ctermbg=NONE ctermfg=237 cterm=bold,underline
hi htmlBoldUnderlineItalic  ctermbg=NONE ctermfg=237 cterm=bold,underline,italic
hi htmlItalic               ctermbg=NONE ctermfg=237 cterm=italic
hi htmlUnderline            ctermbg=NONE ctermfg=237 cterm=underline
hi htmlUnderlineItalic      ctermbg=NONE ctermfg=237 cterm=underline,italic

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline

hi link Define Include

" Spellcheck formatting
if has("spell")
  hi SpellBad   guisp=#a32024 gui=undercurl
  hi SpellCap   guisp=#0060af gui=undercurl
  hi SpellLocal guisp=#a67c00 gui=undercurl
  hi SpellRare  guisp=#3a7a00 gui=undercurl
endif
