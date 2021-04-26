" We shoudl specify where we want startify to keep our sessions
let g:startify_session_dir = '~/.config/nvim/session'

" Specify what shows up in the menu:
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Bookmarks
let g:startify_bookmarks = [
            \ { 'c': '~/code/c4c' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'p': '~/.config/nvim/vim-plug/plugins.vim'},
            \ { 'z': '~/.zshrc' },
            \ { 'C': '~/code' },
            \ ]

" automatically restart session of directory if vim is started from that directory
let g:startify_session_autoload = 1

" let Startify take care of buffers
let g:startify_session_delete_buffers = 1

" similar to Vim-rooter
let g:startify_change_to_vcs_root = 1

" Unicode
let g:startify_fortune_use_unicode = 1

" Automatically update sessions
let g:startify_session_persistence = 1

" Get rid of empty buffer and quit
let g:startify_enable_special = 0

let g:startify_custom_header = [
          \'__________________________________________________________        ',
          \' __________________________________________________________       ',
          \'  ________________________________/\\\______________________      ',
          \'   __/\\/\\\\\\_____/\\\____/\\\__\///______/\\\\\__/\\\\\___     ',
          \'    _\/\\\////\\\___\//\\\__/\\\____/\\\___/\\\///\\\\\///\\\_    ',
          \'     _\/\\\__\//\\\___\//\\\/\\\____\/\\\__\/\\\_\//\\\__\/\\\_   ',
          \'      _\/\\\___\/\\\____\//\\\\\_____\/\\\__\/\\\__\/\\\__\/\\\_  ',
          \'       _\/\\\___\/\\\_____\//\\\______\/\\\__\/\\\__\/\\\__\/\\\_ ',
          \'        _\///____\///_______\///_______\///___\///___\///___\///__'
          \]

