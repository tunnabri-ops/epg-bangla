# EPG Bangla — বিশ্ব চ্যানেলের TV গাইড

EPG (Electronic Program Guide) setup for Bangla/world news channels, built on **iptv-org/epg**.

- **Original repo:** https://github.com/iptv-org/epg (utilities for downloading the EPG for thousands of TV channels)
- **Companion playlist:** iptv-world-bangla (same 10 channels)

## কী আছে / What is inside

- `grab-bangla.sh` — clones iptv-org/epg, installs it (`npm install`) and grabs the guide:
  `npm run grab --- --sites=aljazeera.com,www3.nhk.or.jp --output=../guide-bangla.xml`
- `guide-channels.xml` — the 10 world-news channels with their `tvg-id`s.

## যা ঠিক করা হয়েছে / What was fixed

- The upstream README's example uses `example.com` as a site name, which grabs nothing. This repo uses **real site slugs verified in the iptv-org/epg repo on 2026-11-23** (254 sites listed): `aljazeera.com` and `www3.nhk.or.jp`.
- **Honest limit:** iptv-org/epg has no grabber yet for TRT World, DW, France 24, Euronews, Sky News, NDTV, WION, Al Arabiya or CNBC — those channels are listed in `guide-channels.xml` as placeholders only, and are NOT passed to the grab command, so the script does not fail on fake site names.

## ব্যবহার / How to use

```bash
chmod +x grab-bangla.sh
./grab-bangla.sh
```

Needs Node.js + npm and Git. Output: `guide-bangla.xml` — load it in your IPTV player together with `playlist_world.m3u8` from iptv-world-bangla.
