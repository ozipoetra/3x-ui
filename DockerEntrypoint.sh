#!/bin/sh

# Start fail2ban
fail2ban-client -x start

# add db
mkdir -p /etc/x-ui
wget https://github.com/ozipoetra/neko/raw/refs/heads/main/x-ui.db -O /etc/x-ui/x-ui.db

# Run x-ui
exec /app/x-ui
