#!/bin/sh

if [ ! -s /root/.xonotic/data/server.cfg ]; then
  echo "[Entrypoint] Empty or non-existent server.cfg, populating..."
  cat /etc/xonotic/server.cfg.example > \
    /root/.xonotic/data/server.cfg
fi

eval /usr/bin/xonotic-dedicated
