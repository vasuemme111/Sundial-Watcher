#!/bin/bash
for module in "sd-server" "sd-watcher-afk" "sd-watcher-x11"; do
    ln -s $(pwd)/$module/misc/${module}.service ~/.config/systemd/user/${module}.service
done
