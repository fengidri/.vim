" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "monokai_c"

"> Cursor                       #272822 #f8f8f0 NONE
hi Cursor ctermfg=16 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
"> Visual                       NONE    #49483e NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
"> CursorLine                   NONE    #3c3d37 NONE
hi CursorLine ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
"> CursorColumn                 NONE    #3c3d37 NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
"> ColorColumn                  NONE    #3c3d37 NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
"> LineNr                       #90908a #3c3d37 NONE
hi LineNr ctermfg=102 ctermbg=59 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
"> VertSplit                    #64645e #64645e NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
"> MatchParen                   #f92672 NONE    underline
hi MatchParen ctermfg=197 ctermbg=NONE cterm=underline guifg=#f92672 guibg=NONE gui=underline
"> StatusLine                   #f8f8f2 #64645e bold
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold
"> StatusLineNC                 #f8f8f2 #64645e NONE
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE
"> Pmenu                        NONE    #545454 NONE
hi Pmenu ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#545454 gui=NONE
"> PmenuSel                     #000000 #ffffff NONE
hi PmenuSel ctermfg=16 ctermbg=231 cterm=NONE guifg=#000000 guibg=#ffffff gui=NONE
"> IncSearch                    #272822 #e6db74 NONE
hi IncSearch ctermfg=16 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
"> Search                       #272822 #e6db74 NONE
hi Search ctermfg=16 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
"> Directory                    #ae81ff NONE    NONE
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> Folded                       #75715e #272822 NONE
hi Folded ctermfg=95 ctermbg=16 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE
"> SignColumn                   NONE    #3c3d37 NONE
hi SignColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
"> Normal                       #f8f8f2 #272822 NONE
hi Normal ctermfg=231 ctermbg=16 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
"> Boolean                      #ae81ff NONE    NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> Character                    #ae81ff NONE    NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> Comment                      #75715e NONE    NONE
hi Comment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
"> Conditional                  #f92672 NONE    NONE
hi Conditional ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> Constant                     NONE    NONE    NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> Define                       #f92672 NONE    NONE
hi Define ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> DiffAdd                      #f8f8f2 #46830c bold
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#46830c gui=bold
"> DiffDelete                   #8b0807 NONE    NONE
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0807 guibg=NONE gui=NONE
"> DiffChange                   #f8f8f2 #243955 NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=NONE
"> DiffText                     #f8f8f2 #204a87 bold
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
"> ErrorMsg                     #f8f8f0 #f92672 NONE
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
"> WarningMsg                   #f8f8f0 #f92672 NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
"> Float                        #ae81ff NONE    NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> Function                     #5fcbdf NONE    bold
hi Function ctermfg=80 ctermbg=NONE cterm=bold guifg=#5fcbdf guibg=NONE gui=bold
"> Identifier                   #66d9ef NONE    italic
hi Identifier ctermfg=81 ctermbg=NONE cterm=italic guifg=#66d9ef guibg=NONE gui=italic
"> Keyword                      #f92672 NONE    NONE
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> Label                        #e6db74 NONE    NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
"> NonText                      #49483e #31322c NONE
hi NonText ctermfg=59 ctermbg=58 cterm=NONE guifg=#49483e guibg=#31322c gui=NONE
"> Number                       #ae81ff NONE    NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> Operator                     #f92672 NONE    NONE
hi Operator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> PreProc                      #f92672 NONE    NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> Special                      #268783 NONE    NONE
hi Special ctermfg=30 ctermbg=NONE cterm=NONE guifg=#268783 guibg=NONE gui=NONE
"> SpecialKey                   #49483e #3c3d37 NONE
hi SpecialKey ctermfg=59 ctermbg=59 cterm=NONE guifg=#49483e guibg=#3c3d37 gui=NONE
"> Statement                    #f92672 NONE    bold
hi Statement ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
"> StorageClass                 #66d9ef NONE    italic
hi StorageClass ctermfg=81 ctermbg=NONE cterm=italic guifg=#66d9ef guibg=NONE gui=italic
"> String                       #e6db74 NONE    NONE
hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
"> Tag                          #f92672 NONE    NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> Title                        #f8f8f2 NONE    bold
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
"> Todo                         #75715e NONE    inverse,bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold
"> Type                         #f92672 NONE    bold
hi Type ctermfg=197 ctermbg=NONE cterm=bold guifg=#f92672 guibg=NONE gui=bold
"> Underlined                   NONE    NONE    underline
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
">
"> rubyClass                    #f92672 NONE    NONE
hi rubyClass ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> rubyFunction                 #a6e22e NONE    NONE
hi rubyFunction ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
"> rubyInterpolationDelimiter   NONE    NONE    NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> rubySymbol                   #ae81ff NONE    NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> rubyConstant                 #66d9ef NONE    italic
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=italic guifg=#66d9ef guibg=NONE gui=italic
"> rubyStringDelimiter          #e6db74 NONE    NONE
hi rubyStringDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
"> rubyBlockParameter           #fd971f NONE    italic
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=italic guifg=#fd971f guibg=NONE gui=italic
"> rubyInstanceVariable         NONE    NONE    NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> rubyInclude                  #f92672 NONE    NONE
hi rubyInclude ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> rubyGlobalVariable           NONE    NONE    NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> rubyRegexp                   #e6db74 NONE    NONE
hi rubyRegexp ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
"> rubyRegexpDelimiter          #e6db74 NONE    NONE
hi rubyRegexpDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
"> rubyEscape                   #ae81ff NONE    NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> rubyControl                  #f92672 NONE    NONE
hi rubyControl ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> rubyClassVariable            NONE    NONE    NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> rubyOperator                 #f92672 NONE    NONE
hi rubyOperator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> rubyException                #f92672 NONE    NONE
hi rubyException ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> rubyPseudoVariable           NONE    NONE    NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> rubyRailsUserClass           #66d9ef NONE    italic
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=italic guifg=#66d9ef guibg=NONE gui=italic
"> rubyRailsARAssociationMethod #66d9ef NONE    NONE
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> rubyRailsARMethod            #66d9ef NONE    NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> rubyRailsRenderMethod        #66d9ef NONE    NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> rubyRailsMethod              #66d9ef NONE    NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> erubyDelimiter               NONE    NONE    NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> erubyComment                 #75715e NONE    NONE
hi erubyComment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
"> erubyRailsMethod             #66d9ef NONE    NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> htmlTag                      NONE    NONE    NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> htmlEndTag                   #a6e22e NONE    NONE
hi htmlEndTag ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
"> htmlTagName                  NONE    NONE    NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> htmlArg                      NONE    NONE    NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> htmlSpecialChar              #ae81ff NONE    NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> javaScriptFunction           #66d9ef NONE    italic
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=italic guifg=#66d9ef guibg=NONE gui=italic
"> javaScriptRailsFunction      #66d9ef NONE    NONE
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> javaScriptBraces             NONE    NONE    NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> yamlKey                      #f92672 NONE    NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
"> yamlAnchor                   NONE    NONE    NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> yamlAlias                    NONE    NONE    NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"> yamlDocumentHeader           #e6db74 NONE    NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
"> cssURL                       #fd971f NONE    italic
hi cssURL ctermfg=208 ctermbg=NONE cterm=italic guifg=#fd971f guibg=NONE gui=italic
"> cssFunctionName              #66d9ef NONE    NONE
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> cssColor                     #ae81ff NONE    NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> cssPseudoClassId             #a6e22e NONE    NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
"> cssClassName                 #a6e22e NONE    NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
"> cssValueLength               #ae81ff NONE    NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
"> cssCommonAttr                #66d9ef NONE    NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
"> cssBraces                    NONE    NONE    NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

