# 👑 Jackpot Royals — VIP Email Marketing & Anti-Spam Dispatch Engine

A high-performance, automated bulk email marketing tool tailored for **[jackpotroyals.com](https://jackpotroyals.com)** and configured with your business SMTP credentials.

---

## 🚀 Quick Start (Running the Dashboard)

The application runs on local port **`5051`** (allowing it to run side-by-side with Winning Heaven on `5050` without port conflicts).

### To open or restart the dashboard anytime:
1. **Method 1 (One-Click on Mac):** Double-click [`Run_JackpotRoyals_Marketing.command`](file:///Users/apple/Desktop/JackpotRoyals_Email_Marketing/Run_JackpotRoyals_Marketing.command)
2. **Method 2 (Terminal):**
   ```bash
   cd /Users/apple/Desktop/JackpotRoyals_Email_Marketing
   ./start.sh
   # Or: python3 app.py
   ```
3. Open your browser: **[http://127.0.0.1:5051](http://127.0.0.1:5051)**

### 🔐 Admin Login Credentials:
- **Username:** `admin` or `jackpotroyals` or `verified@jackpotroyals.com`
- **Password:** `JackpotRoyals@2026`

---

## ⚙️ Default Configurations

- **SMTP Host:** `smtp.hostinger.com` (or any custom SMTP provider)
- **Port:** `465` (SSL Encrypted) / `587` (TLS)
- **Sender Email:** `verified@jackpotroyals.com`
- **Sender Display Name:** `Jackpot Royals VIP`
- **Website Target:** `https://jackpotroyals.com`
- **Local Dashboard:** `http://127.0.0.1:5051`

---

## 📊 Pre-Loaded Jackpot Leads (in `uploads/` folder):

1. **`jackpot_all_players_2026-09-15.csv`**: 333 leads (Primary Queue)
2. **`jackpot_subscribed_list_2026-09-15.csv`**: 235 leads
3. **`jackpot_unsubscribed_list_2026-09-15.csv`**: 105 leads
4. **`jackpot_active_list_2026-09-15.csv`**: 102 leads
5. **`engaged_hot_leads.csv`**: Auto-generated real-time list of hot users who clicked links!

---

## 🛡️ Built-in Anti-Spam & Deliverability Features:

1. **Human-like Throttling:** 3 to 6-second randomized delays between emails.
2. **Batch Sending & Cool-Down:** Sends 50 emails per batch with automated pauses.
3. **100% Primary Inbox Optimized 7-Day Templates:** All templates include $3 Freeplay, $35 low cashouts, royal casino theme, and instant CTA buttons routing through click tracking to `jackpotroyals.com`.
4. **Gmail Account Warmup Engine:** Multi-account warmup automation built right into the dashboard.
5. **6-Tier Email Verifier:** Built-in email validation and list scrubbing engine.
