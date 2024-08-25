from lxml import etree
import os
import sys

def prettify_svg(file_path):
    try:
        parser = etree.XMLParser(remove_blank_text=True)
        with open(file_path, 'r') as file:
            tree = etree.parse(file, parser)
        with open(file_path, 'w') as file:
            file.write(etree.tostring(tree, pretty_print=True, encoding='unicode'))
    except Exception as e:
        print(f"Error processing {file_path}: {e}", file=sys.stderr)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: prettify_svg.py <svg_file>", file=sys.stderr)
    else:
        prettify_svg(sys.argv[1])
