setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab

autocmd BufWritePre *.svg silent! %!python3 -c 'import sys; from lxml import etree; svg_content = sys.stdin.read(); parser = etree.XMLParser(remove_blank_text=True); tree = etree.fromstring(svg_content.encode("utf-8"), parser); sys.stdout.write(etree.tostring(tree, pretty_print=True, encoding="unicode"))'
autocmd BufWritePost *.svg silent! checktime | edit!

