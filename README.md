# Home Assistant Cloudflared Argo Tunnel 

## Disclaimer ###

addon นี้เหมาะสำหรับคนที่มี domain บนระบบ cloudflare อยู่แล้ว ซึ่งได้ผ่านขั้นตอน [authen](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide) โดยสามารถ add hostname จาก addon ได้เลย (ไม่ต้อง login cloudflared) โดยไม่ต้อง add บนระบบหลังบ้านของ cloudflare ทีละตัว หากยังไม่มี hostname/domain และต้องการทดสอบ สามารถขอไฟล์ .pem เพื่อทดสอบได้ กรณีต้องการใช้ .com ที่เป็นโดเมนของตัวเอง เรามีให้บริการจดโดเมน 450 บาท/ปี ใช้ sub domain ได้ไม่จำกัด ติดต่อ info@racksync.com

## Version ## 

- Legacy สำหรับการรันในรูปแบบเก่า 
- LTS / Long Term Support (สำหรับคนที่เข้าใจกระบวนการรัน tunnel อยู่แล้ว)

## How to Install Add-on

1. ติดตั้ง addon ด้วยการ add repository : https://github.com/racksync/hass-addons-cloudflared-tunnel เข้าไปยัง addon list ตามปกติ
2. จะมี addon เพิ่มมาจำนวน 2 ตัว สามารถเลือกใช้ตัวใดตัวหนึ่งตามความถนัดได้เลย (มือใหม่แนะนำรันในโหมด Legacy โดยทั้งสองโหมดจะมีคำอธิบายแบบละเอียดอีกทีด้านใน)
3. ศึกษาวิธีการโดยละเอียดของแต่ละโหมดได้จากหน้า Documentation หลักของ Add-on แต่ละโหมด


![racksync-screenshot](https://github.com/racksync/hass-addons-cloudflared-tunnel/blob/main/tunnel/screenshot.png?raw=true)

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

