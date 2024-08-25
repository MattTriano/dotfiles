py3 << EOF
import sys
import os
xdg_config_home = os.getenv('XDG_CONFIG_HOME', os.path.expanduser('~/.config'))
sys.path.insert(0, os.path.join(xdg_config_home, 'vim/ftplugin/prettify_svg.py'))
sys.path.insert(0, os.path.join(xdg_config_home, '.venv/lib/python3.11/site-packages'))
EOF
