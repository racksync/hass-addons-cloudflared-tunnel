# Home Assistant Cloudflared Argo Tunnel

## ข้อควรทราบ ###

addon ตัวนี้เหมาะสำหรับคนที่มี domain บนระบบ cloudflare อยู่แล้ว ทำการ generated cert ผ่านขั้นตอน [authen](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide) ก็สามารถ add hostname จาก addon ได้เลยโดยไม่ต้องมานั่ง add บนระบบหลังบ้านของ cloudflare ทีละตัว หากยังไม่มี hostname/domain และต้องการทดสอบ สามารถขอไฟล์ .pem เพื่อทดสอบได้ กรณีต้องการใช้ .com ที่เป็นโดเมนของตัวเอง เรามีให้บริการจดโดเมน 450 บาท/ปี ใช้ sub domain ได้ไม่จำกัด ติดต่อ info@racksync.com

## วิธีใช้ 

1. ติดตั้ง addon ด้วยการ add repository : https://github.com/racksync/hass-addons-cloudflared-tunnel เข้าไปยัง addon list ตามปกติ
2. จะมี addon เพิ่มมาจำนวน 2 ตัว สามารถใช้ทั้งคู่เพื่อเข้าใช้งานจากภายนอกได้พร้อมกัน เช่น Primary สำหรับเข้า Home Assistant และ Secondary สำหรับเข้า service อื่น ๆ ที่รันบน http เช่น tasmota
3. cloudflare login เพื่อสร้างไฟล์ cert ด้วยคำสั่ง ```$ cloudflared tunnel login``` 
[ดูขั้นตอน](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide)
4. Copy .pem ที่ได้จากขั้นตอนก่อนหน้า ไปไว้ใน Directory : ssl ชั้นนอกสุดของ Home Assistant (เข้าผ่านทาง samba share)
5. เข้าไปตั้งค่า addon กรอกไฟล์ .pem ให้ตรง และกรอกชื่อ hostname ที่ต้องการ (ต้องสัมพันธ์กับ authentication ของ cloudflare account ที่ login)
6. เพิ่ม config ที่ configuration.yaml

```
http:
  cors_allowed_origins:
    - [YOUR-HOSTNAME]
  use_x_forwarded_for: true
  trusted_proxies:
    - 127.0.0.1
    - ::1
```

6. Restart Home Assistant


![racksync-screenshot](https://github.com/racksync/hass-addons-cloudflared-tunnel/blob/main/tunnel/screenshot.png?raw=true)


## หากพบปัญหาในการใช้งาน กรุณาส่งเข้า issue

### บริการและเทรนนิ่งคอร์สด้าน Automation 

- [สินค้าและบริการ](http://racksync.com)
- [เทรนนิ่งคอร์ส](https://facebook.com/racksync)

### ชุมชนและแหล่งซื้อขาย Home Automation

- [Home Automation Thailand](https://www.facebook.com/groups/hathailand)
- [Home Automation Marketplace](https://www.facebook.com/groups/hatmarketplace)

### เพิ่มเติม

- [ ] Add Alternative (Secondary Tunnel)
- [ ] Switch out from Legacy mode
- [ ] Add Note Input Field 
- [X] Re-factor Slug URL
- [X] Fix a tiny container bug :tada:

