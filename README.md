# Home Assistant Cloudflared Argo Tunnel 

[![Base Image](https://img.shields.io/badge/Base%20Image-3.16-blue)](https://github.com/home-assistant/docker-base)  [![alpine-armhf](https://img.shields.io/badge/armhf-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-armv7](https://img.shields.io/badge/armv7-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-aarch64](https://img.shields.io/badge/aarch64-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-amd64](https://img.shields.io/badge/amd64-yes-brightgreen)](https://alpinelinux.org/releases/) 
[![alpine-i386](https://img.shields.io/badge/i386-yes-brightgreen)](https://alpinelinux.org/releases/)
[![cloudflare-argo-tunnel-release](https://img.shields.io/github/v/release/racksync/hass-addons-cloudflared-tunnel)](https://github.com/racksync/hass-addons-cloudflared-tunnel/releases) [![last commit](https://img.shields.io/github/last-commit/racksync/hass-addons-cloudflared-tunnel)](https://github.com/racksync/hass-addons-cloudflared-tunnel/commit/)

## Disclaimer ###

addon นี้เหมาะสำหรับคนที่มี domain บนระบบ cloudflare อยู่แล้ว ซึ่งได้ผ่านขั้นตอน [authen](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide) โดยสามารถ add hostname จาก addon ได้เลย (ไม่ต้อง login cloudflared) โดยไม่ต้อง add บนระบบหลังบ้านของ cloudflare ทีละตัว หากยังไม่มี hostname/domain และต้องการทดสอบ สามารถขอไฟล์ .pem เพื่อทดสอบได้ กรณีต้องการใช้ .com ที่เป็นโดเมนของตัวเอง เรามีให้บริการจดโดเมน 450 บาท/ปี ใช้ sub domain ได้ไม่จำกัด ติดต่อ info@racksync.com

## Version ## 

- Standard แบบปกติที่รันกันทั่ว ๆ ไป (Migrate เป็น Zero Trust ได้)
- [Zero Trust](https://www.cloudflare.com/products/zero-trust/) 

## How to Install Add-on

1. ติดตั้ง addon ด้วยการ add repository : https://github.com/racksync/hass-addons-cloudflared-tunnel เข้าไปยัง addon list ตามปกติ
2. จะมี addon เพิ่มมาจำนวน 2 ตัว สามารถเลือกใช้ตัวใดตัวหนึ่งตามความถนัดได้เลย (มือใหม่แนะนำรันในโหมด Standard โดยทั้งสองโหมดจะมีคำอธิบายแบบละเอียดอีกทีด้านใน)
3. ศึกษาวิธีการโดยละเอียดของแต่ละโหมดได้จากหน้า Documentation หลักของ Add-on แต่ละโหมด


![racksync-screenshot](https://github.com/racksync/hass-addons-cloudflared-tunnel/blob/main/tunnel/screenshot.png?raw=true)


### Features

- [X] Legacy as Optional
- [X] Zero Trust Support
- [X] No Update Mode
- [X] Low Learning Curve

### Automation Training

- [สินค้าและบริการ](http://racksync.com)
- [เทรนนิ่งคอร์ส](https://facebook.com/racksync)

### Community

- [Home Automation Thailand](https://www.facebook.com/groups/hathailand)
- [Home Automation Marketplace](https://www.facebook.com/groups/hatmarketplace)
- [Home Automation Thailand Discord](https://discord.gg/Wc5CwnWkp4) 

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



