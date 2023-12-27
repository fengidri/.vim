
"run by vim -u /path/isolate/plugin "
"
let pack_path = expand("<sfile>:p:h")

py3<<EOF
import vim
import os

pack_path = vim.vars.get('pack_path').decode('UTF8')

home = os.path.expanduser('~')

rtp = vim.eval('&rtp').split(',')
rtp = [r for r in rtp if not r.startswith(home)]
rtp.insert(0, pack_path)

cmd = 'set rtp=%s' % ','.join(rtp)
vim.command(cmd)

cmd = "source " + os.path.join(pack_path, 'vimrc')
vim.command(cmd)
EOF
