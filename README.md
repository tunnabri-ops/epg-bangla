# 📅 EPG Bangla

**TV program guide (EPG) for world news channels — see what's on, next to your playlist.**

## ✨ Features

- `grab-bangla.sh` — downloads the EPG grabber tool and fetches the guide for the channels that have one.
- `guide-channels.xml` — the 10 world-news channels with their guide IDs, ready to load in your player.
- Uses only real, verified site slugs: `aljazeera.com` and `www3.nhk.or.jp`.

## 🚀 How to use

```bash
chmod +x grab-bangla.sh
./grab-bangla.sh
```

Needs Node.js + npm and Git. Output: `guide-bangla.xml` in this folder — load it in your IPTV player together with `playlist_world.m3u8` from IPTV World Bangla.

## ⚠️ Honest limits

- A program guide only exists for the channels the grabber supports. Right now that is Al Jazeera and NHK World — the other 8 channels (TRT World, DW, France 24, Euronews, Sky News, NDTV, WION, Al Arabiya, CNBC) are listed in `guide-channels.xml` as placeholders only and are not passed to the grab command, so the script does not fail on names that have no guide.
- Guide data comes from the channels' own published schedules and can be missing for some hours.

## 🇧🇩 বাংলা

**ইপিজি বাংলা — বিশ্ব চ্যানেলের টিভি গাইড।**

- `grab-bangla.sh` চালালেই `guide-bangla.xml` তৈরি হবে
- IPTV প্লেয়ারে প্লেলিস্টের সাথে গাইডটা লোড করলেই অনুষ্ঠানসূচি দেখা যাবে
- যেসব চ্যানেলের গাইড নেই, সেগুলো শুধু নাম হিসেবে আছে — ভুল তথ্য দিয়ে সাজানো হয়নি

## 📄 License

MIT — use it however you like.
