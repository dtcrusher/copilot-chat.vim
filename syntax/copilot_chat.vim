vim9script
scriptencoding utf-8

syntax match CopilotWelcome /^Welcome to Copilot Chat!.*$/
syntax match CopilotSeparatorIcon /^/
syntax match CopilotSeparatorIcon /^/
syntax match CopilotSeparatorLine / ━\+$/
syntax match CopilotWaiting /Responding\.*$/
syntax match CopilotPrompt /^> .*/
syntax match CopilotFiles /^#file:.*/

syntax match CopilotCodeFence /^```\(\s*\w\+\)\?$/ contains=CopilotCodeLang
syntax match CopilotCodeLang /\w\+/ contained
syntax match CopilotCodeFenceEnd /^```$/

highlight CopilotWaiting ctermfg=46 guifg=#2ECC71
highlight CopilotWelcome ctermfg=205 guifg=#786FA6
highlight CopilotSeparatorIcon ctermfg=45 guifg=#FC5C65
highlight CopilotSeparatorLine ctermfg=205 guifg=#786FA6
highlight CopilotPrompt ctermfg=230 guifg=#F5CD79
highlight CopilotCodeFence ctermfg=240 guifg=#F19066
highlight CopilotCodeFenceEnd ctermfg=240 guifg=#F19066
highlight CopilotCodeLang ctermfg=111 guifg=#F19066
highlight CopilotFiles ctermfg=12 guifg=#2ECC71

if !exists('g:syntax_on')
  syntax enable
endif
