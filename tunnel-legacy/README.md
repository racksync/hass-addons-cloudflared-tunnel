# Home Assistant Cloudflared Argo Tunnel - Legacy Mode

## Disclaimer ###

addon นี้เหมาะสำหรับคนที่มี domain บนระบบ cloudflare อยู่แล้ว ทำการ generated cert ผ่านขั้นตอน [authen](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide) ก็สามารถ add hostname จาก addon ได้เลย (ไม่ต้อง login cloudflared) โดยไม่ต้อง add บนระบบหลังบ้านของ cloudflare ทีละตัว หากยังไม่มี hostname/domain และต้องการทดสอบ สามารถขอไฟล์ .pem เพื่อทดสอบได้ กรณีต้องการใช้ .com ที่เป็นโดเมนของตัวเอง เรามีให้บริการจดโดเมน 450 บาท/ปี ใช้ sub domain ได้ไม่จำกัด ติดต่อ info@racksync.com

## Caution ## 

คำสั่งที่ใช้สำหรับรัน จะรันในโหมด legacy เพื่อลดขั้นตอนการเตรียมไฟล์ ซึ่งหากต้องการรันในโหมด Full สามารถสลับไปใช้ [Cloudflared Argo Tunnel LTS]



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

