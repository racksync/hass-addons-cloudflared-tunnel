# Home Assistant Cloudflared Argo Tunnel - Legacy Mode

[![Base Image](https://img.shields.io/badge/Base%20Image-3.15-blue)](https://github.com/home-assistant/docker-base)  [![alpine-armhf](https://img.shields.io/badge/armhf-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-armv7](https://img.shields.io/badge/armv7-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-aarch64](https://img.shields.io/badge/aarch64-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-amd64](https://img.shields.io/badge/amd64-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-i386](https://img.shields.io/badge/i386-yes-brightgreen)](https://alpinelinux.org/releases/)

[![cloudflare-argo-tunnel-release](https://img.shields.io/github/v/release/racksync/hass-addons-cloudflared-tunnel)](https://github.com/racksync/hass-addons-cloudflared-tunnel/releases) [![last commit](https://img.shields.io/github/last-commit/racksync/hass-addons-cloudflared-tunnel)](https://github.com/racksync/hass-addons-cloudflared-tunnel/commit/)
## Disclaimer ###

addon นี้เหมาะสำหรับคนที่มี domain บนระบบ cloudflare อยู่แล้ว ทำการ generated cert ผ่านขั้นตอน [authen](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide) ก็สามารถ add hostname จาก addon ได้เลย (ไม่ต้อง login cloudflared) โดยไม่ต้อง add บนระบบหลังบ้านของ cloudflare ทีละตัว หากยังไม่มี hostname/domain และต้องการทดสอบ สามารถขอไฟล์ .pem เพื่อทดสอบได้ กรณีต้องการใช้ .com ที่เป็นโดเมนของตัวเอง เรามีให้บริการจดโดเมน 450 บาท/ปี ใช้ sub domain ได้ไม่จำกัด ติดต่อ info@racksync.com

## Caution ## 

คำสั่งที่ใช้สำหรับรัน จะรันในโหมด legacy เพื่อลดขั้นตอนการเตรียมไฟล์ ซึ่งหากต้องการรันในโหมด Full สามารถสลับไปใช้ LTS โดยติดตั้ง add-on ที่มาพร้อมกันใน repo นี้ได้ (ตัวที่ไม่มีห้อยท้ายด้วย Legacy คือ LTS)



### Automation Training

- [สินค้าและบริการ](http://racksync.com)
- [เทรนนิ่งคอร์ส](https://facebook.com/racksync)

### Community

- [Home Automation Thailand](https://www.facebook.com/groups/hathailand)
- [Home Automation Marketplace](https://www.facebook.com/groups/hatmarketplace)
- [Home Automation Thailand Discord](https://discord.gg/Wc5CwnWkp4)

### More

- [ ] Add Alternative (Secondary Tunnel)
- [X] Deprecated Legacy mode
- [X] Add Note Input Field 
- [X] Re-factor Slug URL
- [X] Fix a tiny container bug :tada:

## [RACKSYNC CO., LTD.](https://racksync.com)

บจก.แรคซิงค์ คือผู้เชี่ยวชาญด้าน Automation และ Smart Solutions ทุกขนาด เรามีบริการให้คำปรึกษาตลอดจนวางระบบ ติดตั้งและมอนิเตอร์โดยผู้เชี่ยวชาญ นอกจากนี้เรายังเป็นบริษัทรับพัฒนา Software As A Service แบบครบวงจรอีกด้วย
\
\
RACKSYNC COMPANY LIMITED \
Suratthani, Thailand 84000 \
Email : devops@racksync.com \
Tel : +66 85 880 8885 



[![Home Automation Thailand Discord](https://img.shields.io/discord/986181205504438345?style=for-the-badge)](https://discord.gg/Wc5CwnWkp4) [![Github](https://img.shields.io/github/followers/racksync?style=for-the-badge)](https://github.com/racksync) 
[![WebsiteStatus](https://img.shields.io/website?down_color=grey&down_message=Offline&style=for-the-badge&up_color=green&up_message=Online&url=https%3A%2F%2Fracksync.com)](https://racksync.com)