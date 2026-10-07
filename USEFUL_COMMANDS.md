# 🛠️ Jackpot Royals — Useful VPS Commands & Cheat Sheet

Subdomain: **`tool.jackpotroyals.com`**  
Path: **`/var/www/tool.jackpotroyals.com`**  
Service Name: **`jackpotroyals-marketing`**

---

## 🚀 1. One-Click Complete VPS Deployment
Apne VPS terminal mein yeh single block paste karein:

```bash
# System updates & prerequisites
sudo apt update -y && sudo apt install -y python3 python3-pip python3-venv git nginx certbot python3-certbot-nginx

# Setup directory & Clone from GitHub
sudo mkdir -p /var/www/tool.jackpotroyals.com
if [ -d "/var/www/tool.jackpotroyals.com/.git" ]; then
    cd /var/www/tool.jackpotroyals.com && sudo git pull origin main
else
    sudo git clone https://github.com/jackpotroyals604-pixel/tool.git /var/www/tool.jackpotroyals.com
fi

# Setup Virtual Environment & Dependencies
cd /var/www/tool.jackpotroyals.com
sudo python3 -m venv venv
sudo ./venv/bin/pip install --upgrade pip
sudo ./venv/bin/pip install -r requirements.txt

# Setup Systemd Service
sudo cp email-marketing.service /etc/systemd/system/jackpotroyals-marketing.service
sudo systemctl daemon-reload
sudo systemctl enable jackpotroyals-marketing
sudo systemctl restart jackpotroyals-marketing

# Setup Nginx VHost for tool.jackpotroyals.com
sudo cp nginx_tool_jackpotroyals.conf /etc/nginx/sites-available/tool.jackpotroyals.com
sudo ln -sf /etc/nginx/sites-available/tool.jackpotroyals.com /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx

echo "✅ Deployment completed successfully!"
```

---

## 🔒 2. Free SSL Certificate (HTTPS)
DNS mein `tool` ka `A` record point karne ke baad yeh command chalayein:

```bash
sudo certbot --nginx -d tool.jackpotroyals.com
```

---

## ⚙️ 3. Service Management (Start / Stop / Restart)

* **Check Service Status:**
  ```bash
  sudo systemctl status jackpotroyals-marketing
  ```

* **Restart Service:**
  ```bash
  sudo systemctl restart jackpotroyals-marketing
  ```

* **Stop Service:**
  ```bash
  sudo systemctl stop jackpotroyals-marketing
  ```

* **Start Service:**
  ```bash
  sudo systemctl start jackpotroyals-marketing
  ```

---

## 📜 4. Live Logs Dekhna

* **Real-time Live Logs (Systemd Journal):**
  ```bash
  sudo journalctl -u jackpotroyals-marketing -f
  ```

* **Log File se Real-time Output:**
  ```bash
  tail -f /var/www/tool.jackpotroyals.com/app.log
  ```

* **Last 100 Lines Check Karna:**
  ```bash
  tail -n 100 /var/www/tool.jackpotroyals.com/app.log
  ```

---

## 🔄 5. GitHub se Nayi Changes Update Karna
Jab bhi local computer se code push karein, VPS par update karne ke liye:

```bash
cd /var/www/tool.jackpotroyals.com && sudo git pull origin main && sudo systemctl restart jackpotroyals-marketing
```

---

## 🔑 6. Login Credentials Change Karna

1. `app.py` file ko edit karein:
   ```bash
   sudo nano /var/www/tool.jackpotroyals.com/app.py
   ```
2. Line 38–42 par `ADMIN_CREDENTIALS` mein username aur password update karein:
   ```python
   ADMIN_CREDENTIALS = {
       "admin": "ApnaNayaPassword",
       "jackpotroyals": "ApnaNayaPassword"
   }
   ```
3. Save karein (`Ctrl + O`, `Enter`, phir `Ctrl + X`).
4. Service restart karein:
   ```bash
   sudo systemctl restart jackpotroyals-marketing
   ```

---

## 🌐 7. Nginx Commands

* **Test Nginx Configuration Syntax:**
  ```bash
  sudo nginx -t
  ```

* **Reload Nginx Configuration:**
  ```bash
  sudo systemctl reload nginx
  ```

* **Nginx Error Logs Dekhna:**
  ```bash
  tail -f /var/log/nginx/error.log
  ```
