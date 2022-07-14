" clear cache so this reloads changes.
" useful for development
" lua package.loaded['qkzk2'] = nil
" lua package.loaded['qkzk2.theme'] = nil
" lua package.loaded['qkzk2.colors'] = nil
" lua package.loaded['qkzk2.util'] = nil
lua package.loaded['qkzk2.config'] = nil

lua require('qkzk2').colorscheme()
