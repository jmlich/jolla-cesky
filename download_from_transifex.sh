#!/bin/sh

# download from transifex

if [ ! -d ".tx" ]; then
  tx init
  tx set --auto-remote https://www.transifex.com/projects/p/jolla-cesky
fi
tx pull -a

