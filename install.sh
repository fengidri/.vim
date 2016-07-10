#!/usr/bin/env sh
#    author    :   丁雪峰
#    time      :   2016-07-10 15:54:33
#    email     :   fengidri@yeah.net
#    version   :   1.0.1

ls -s vimrc ../.vimrc
cd bundle/
git clone git@github.com:fengidri/wind
git clone git@github.com:fengidri/YouCompleteMe
sudo pip2 install python-ctags
sudo pip2 install requests
