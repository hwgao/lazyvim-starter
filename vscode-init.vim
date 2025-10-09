" nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
nnoremap <silent> <Esc> <Esc>:nohlsearch<CR>

nnoremap <space>{ ?^\S.*{$<CR>:noh<CR>
nnoremap <space>} /^}$<CR>:noh<CR>

function! OnlyEditor()
  call VSCodeNotify('workbench.action.closeSidebar')
  call VSCodeNotify('workbench.action.closeAuxiliaryBar')
  call VSCodeNotify('workbench.action.closePanel')
endfunction

" NOTE: Skip use group key: m -- bookmarks, t -- textmarker
nnoremap <silent> <space>b :<C-u>call VSCodeNotify('workbench.action.showAllEditors')<CR>
nnoremap <silent> <space>f :<C-u>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <space>l :<C-u>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
" skip <space>m
nnoremap <silent> <space>o :call OnlyEditor()<CR>
" skip <space>t
nnoremap <silent> <space>z :<C-u>call VSCodeNotify('workbench.action.toggleZenMode')<CR>
nnoremap <silent> <space>/ :<C-u>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>') })<CR>

" clipboard copy/paste
noremap <space>y "+y
noremap <space>x "+dd
noremap <space>p "+p

" nnoremap <silent> gd :<C-u>call VSCodeNotify('editor.action.peekDefinition')<CR>
" nnoremap <silent> gD :<C-u>call VSCodeNotify('editor.action.revealDefinition')<CR>
nnoremap <silent> gR :<C-u>call VSCodeNotify('references-view.find')<CR>
nnoremap <silent> gr :<C-u>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
" Show call hierarchy in references view
nnoremap <silent> gH :<C-u>call VSCodeNotify('references-view.showCallHierarchy')<CR>
" Peek call hierarchy
nnoremap <silent> gh :<C-u>call VSCodeNotify('editor.showCallHierarchy')<CR>
" Find all implementations
nnoremap <silent> gI :<C-u>call VSCodeNotify('references-view.findImplementations')<CR>
" Peek implementation
nnoremap <silent> gi :<C-u>call VSCodeNotify('editor.action.peekImplementation')<CR>

" bookmarks
nnoremap <silent> <space>mm :<C-u>call VSCodeNotify('bookmarks.toggle')<CR>
nnoremap <silent> <space>mn :<C-u>call VSCodeNotify('bookmarks.jumpToNext')<CR>
nnoremap <silent> <space>mp :<C-u>call VSCodeNotify('bookmarks.jumpToPrevious')<CR>
nnoremap <silent> <space>ml :<C-u>call VSCodeNotify('bookmarks.list')<CR>
nnoremap <silent> <space>ma :<C-u>call VSCodeNotify('bookmarks.listFromAllFiles')<CR>
nnoremap <silent> <space>mc :<C-u>call VSCodeNotify('bookmarks.clear')<CR>
nnoremap <silent> <space>me :<C-u>call VSCodeNotify('bookmarksExplorer.focus')<CR>

" textmarker
nnoremap <silent> <space>tt :<C-u>call VSCodeNotify('textmarker.toggleHighlight')<CR>
nnoremap <silent> <space>tc :<C-u>call VSCodeNotify('textmarker.clearAllHighlight')<CR>
nnoremap <silent> <space>tn :<C-u>call VSCodeNotify('textmarker.gotToNextHighlight')<CR>
nnoremap <silent> <space>tp :<C-u>call VSCodeNotify('textmarker.gotToPreviousHighlight')<CR>

