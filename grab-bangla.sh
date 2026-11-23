#!/bin/bash
# grab-bangla.sh — EPG (Electronic Program Guide) grabber for Bangla/world channels
# Based on iptv-org/epg: https://github.com/iptv-org/epg
# Usage: ./grab-bangla.sh
# Output: guide-bangla.xml (in this folder)
set -e

if [ ! -d epg ]; then
  git clone --depth 1 https://github.com/iptv-org/epg.git epg
fi
cd epg
npm install
# Sites verified to exist in iptv-org/epg on 2026-11-23 (254 sites checked):
#   aljazeera.com, www3.nhk.or.jp
# No grabber exists yet in iptv-org/epg for TRT World, DW, France 24,
# Euronews, Sky News, NDTV, WION, Al Arabiya or CNBC — so they are not listed here.
npm run grab --- --sites=aljazeera.com,www3.nhk.or.jp --output=../guide-bangla.xml
echo "Done: guide-bangla.xml created."
