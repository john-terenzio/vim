" These commands override the stock syntax highlighting that ships with Vim 7.3

if v:version < 703
  finish
endif

" JavaScript
autocmd FileType javascript syntax keyword javaScriptGlobal document exports JSON
autocmd FileType javascript syntax keyword javaScriptIdentifier const
autocmd FileType javascript syntax keyword javaScriptMessage console
autocmd FileType javascript syntax keyword javaScriptNothing abstract boolean byte char class double enum event export extends final float goto implements import int interface location long native package parent private protected public self short static status super synchronized throws top transient volatile
autocmd FileType javascript syntax keyword javaScriptNull Infinity NaN
autocmd FileType javascript syntax keyword javaScriptReserved prototype void
autocmd FileType javascript syntax keyword javaScriptType Error EvalError RangeError ReferenceError SyntaxError TypeError URIError
autocmd FileType javascript syntax keyword javaScriptType Float32Array Float64Array
autocmd FileType javascript syntax keyword javaScriptType Int8Array Int16Array Int32Array
autocmd FileType javascript syntax keyword javaScriptType Buffer DataView Math
autocmd FileType javascript syntax keyword javaScriptType Uint8Array Uint16Array Uint32Array
autocmd FileType javascript highlight link javaScriptGlobal javaScriptType
autocmd FileType javascript highlight link javaScriptMessage PreProc
autocmd FileType javascript highlight link javaScriptNull Boolean
autocmd FileType javascript highlight link javaScriptNumber Number

" Python
autocmd FileType python syntax keyword pythonBoolean True False
autocmd FileType python highlight link pythonBoolean Number
