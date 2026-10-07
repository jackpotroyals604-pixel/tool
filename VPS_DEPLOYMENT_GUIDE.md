# 🌐 Jackpot Royals — VPS Deployment Guide
Deploying `tool.jackpotroyals.com` on Ubuntu/Debian VPS with Nginx, Systemd, Gunicorn & SSL.

---

## 1. Domain DNS Configuration
Add an **A Record** in Hostinger DNS:
- **Type:** `A`
- **Name:** `tool` (resolves to `tool.jackpotroyals.com`)
- **Points to:** Your VPS Public IP
- **TTL:** 300

---

## 2. Server Directory Setup
```bash
mkdir -p /var/www/tool.jackpotroyals.com
cd /var/www/tool.jackpotroyals.com

# Copy project files here
# Create virtual environment:
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

## 3. Systemd Service
Copy `email-marketing.service` to `/etc/systemd/system/jackpotroyals-marketing.service`:
```bash
sudo cp email-marketing.service /etc/systemd/system/jackpotroyals-marketing.service
sudo systemctl daemon-reload
sudo systemctl enable jackpotroyals-marketing
sudo systemctl start jackpotroyals-marketing
```

---

## 4. Nginx Setup
Copy `nginx_tool_jackpotroyals.conf` to `/etc/nginx/sites-available/tool.jackpotroyals.com`:
```bash
sudo cp nginx_tool_jackpotroyals.conf /etc/nginx/sites-available/tool.jackpotroyals.com
sudo ln -s /etc/nginx/sites-available/tool.jackpotroyals.com /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

---

## 5. Free SSL Certificate (Certbot)
```bash
sudo certbot --nginx -d tool.jackpotroyals.com
```

Done! Your dashboard will be live securely at `https://tool.jackpotroyals.com`.
