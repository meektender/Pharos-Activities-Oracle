![Pharos Testnet](https://img.shields.io/badge/Network-Pharos%20Atlantic-blue)
![Version](https://img.shields.io/badge/Version-v0-yellow)
![License](https://img.shields.io/badge/License-MIT-green) 

# Pharos Activities Oracle

A progressive on-chain oracle project built on **Pharos Atlantic Testnet**, designed to demonstrate
real activity tracking, anti-spam mechanics, and protocol-style upgrades from **v0 → v1 → vN**.

> Built step-by-step as a learning + production-grade reference, not copy-paste farming.

---

## 🔗 Deployed Contract (v1)

- **Network:** Pharos Atlantic Testnet  
- **Contract Address:**  
  `0xeab1ef3191df26565a86f50cab21dc2b6b20b4b0`
- **Status:** ✅ Deployed & Verified on PharosScan

---

## 🧱 Project Structure

| Version | Name | Description | Status |
|------|------|------------|--------|
| v0 | Legacy Oracle | Basic activity recording (no limits) | Documented |
| v1 | Cooldown Oracle | Adds 1-hour per-wallet cooldown | ✅ Live |
| v2 | Planned | Role / weight-based activity | ⏳ |
| v3 | Planned | Aggregated oracle logic | ⏳ |

---

## ⚙️ v1 — Cooldown Upgrade

### What Changed from v0
- Introduced **1-hour cooldown per wallet**
- Prevents spam & artificial activity
- Enforces **real on-chain behavior**
- Emits structured on-chain events

### Core Rule
> A wallet can only record activity **once every 1 hour**

---

## 🧪 How It Works

1. User calls `recordActivity()`
2. Contract checks last interaction timestamp
3. If cooldown passed → activity recorded
4. If not → transaction reverts

---

## 📡 Key Functions

| Function | Description |
|------|------------|
| `recordActivity()` | Records user activity (with cooldown check) |
| `lastInteraction(address)` | Stores last action time |
| `timeUntilNextAction(address)` | Returns remaining cooldown time |

---

## 🧠 Design Philosophy

- No farming logic
- No fake volume
- No copy-paste templates
- Progressive upgrades like real protocols
- Built publicly for transparency & learning

---

## 🚀 Roadmap

- **v2:** Role-based or weighted activity scoring  
- **v3:** Multi-source oracle aggregation  
- **v4+:** Ecosystem hooks & governance signals

---

## 👷 Builder Notes

- Built with **Remix + GitHub**
- Deployed & tested using **multiple wallets**
- Verified on-chain for transparency
- Upgrades documented version-by-version

---

## 📜 License

MIT License

---

## 🤝 Author

**Isa (Meektender)**  
Builder on Pharos Atlantic
