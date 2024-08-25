setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab

autocmd BufWritePre *.svg :silent! execute '!python ' . expand('$XDG_CONFIG_HOME') . '/vim/ftplugin/prettify_svg.py %'

