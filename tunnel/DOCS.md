# Home Assistant Cloudflare Tunnel - Standard

## Disclaimer ###

addon ตัวนี้เหมาะสำหรับคนที่มีเชี่ยวชาญการทำ tunnel เดิม หรือเคยใช้ [legacy addons](https://github.com/racksync/hass-addons-cloudflared-tunnel) มาก่อน ซึ่งอาจจะมี domain บน cloudflare อยู่แล้ว ทำ tunnel login ผ่านขั้นตอน [authen](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide) ก็สามารถ add hostname จาก addon ได้เลยโดยไม่ต้องมานั่ง add บนระบบหลังบ้านของ cloudflare ทีละตัว ทั้งนี้เรามีให้บริการจดโดเมน 450 บาท/ปี ใช้ Hostname บน Home Assistant ได้ไม่จำกัด ติดต่อ info@racksync.com

## How to Install Add-on

1. ติดตั้ง add-on ด้วยการ add repository : https://github.com/racksync/hass-addons-cloudflared-tunnel เข้าไปยัง addon list ตามปกติ
2. จะมี add-on เพิ่มมาจำนวน 2 ตัว สามารถใช้ทั้งคู่เพื่อเข้าใช้งานจากภายนอกได้พร้อมกัน เช่น Primary สำหรับเข้า Home Assistant ผ่าน HTTP และ Secondary สำหรับเข้า service อื่น ๆ เช่น SSH
3. cloudflare login เพื่อสร้างไฟล์ cert ด้วยคำสั่ง ```$ cloudflared tunnel login``` 
[ดูขั้นตอน](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide)
4. Copy .pem และ .json ที่ได้จากขั้นตอนก่อนหน้า (สำหรับคนที่ใช้ Linux/WSL จะอยู่ที่ ~/.cloudflared) ให้ Copy ไปไว้ใน Directory : ssl ชั้นนอกสุดของ Home Assistant (เข้าผ่านทาง samba share หรือ secure shell)
5. เข้าไปตั้งค่า add-on กรอกชื่อไฟล์ไฟล์ .pem และ .json และกรอกชื่อ hostname ที่ต้องการ (เช่น hass.yourdomain.com)
6. ตั้งค่า configuration.yaml จากนั้น Restart Home Assistant

```
http:
  cors_allowed_origins:
    - [YOUR-HOSTNAME]
  use_x_forwarded_for: true
  trusted_proxies:
    - 127.0.0.1
    - ::1
```

7. Restart Home Assistant



![racksync-screenshot](https://github.com/racksync/hass-addons-cloudflared-tunnel/blob/main/tunnel/screenshot.png?raw=true)



### Automation Training

- [สินค้าและบริการ](http://racksync.com)
- [เทรนนิ่งคอร์ส](https://facebook.com/racksync)

### Community

- [Home Automation Thailand](https://www.facebook.com/groups/hathailand)
- [Home Automation Marketplace](https://www.facebook.com/groups/hatmarketplace)
- [Home Automation Thailand Discord](https://discord.gg/Wc5CwnWkp4)

### Features

- [X] Support HTTP/SSH Protocol
- [X] UI Improvement via Add-on Translations
- [X] Legacy as Optional
- [X] Zero Trust Support
- [X] No Update Mode
- [X] Low Learning Curve


