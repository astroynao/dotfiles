autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript
autocmd BufNewFile,BufRead *.toml set filetype=toml

" Rust uses Cargo.toml and Cargo.lock (both are toml files).
autocmd BufNewFile,BufRead Cargo.lock set filetype=toml
autocmd BufNewFile,BufRead *.json setlocal filetype=json
autocmd BufNewFile,BufRead *.jsonp setlocal filetype=json
autocmd BufNewFile,BufRead *.geojson setlocal filetype=json
