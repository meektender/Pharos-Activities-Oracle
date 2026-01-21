![Pharos Testnet](https://img.shields.io/badge/Network-Pharos%20Atlantic-blue)
![Version](https://img.shields.io/badge/Version-v0-yellow)
![License](https://img.shields.io/badge/License-MIT-green) 

# Pharos Activities Oracle – v0 → v4

## Project Mission
- Track real user activity — anti-bot, anti-spam
- Enable upgradeable features (v0 → v5)
- Integrate with ecosystem assets (e.g., Gotchipus NFTs, Hooks SDK)
- Show builder signal — clean, verified, reusable code
- Document everything — no guesswork

---

## Version Summary

| Version | Purpose / Feature | Notes |
|---------|-----------------|-------|
| **v0 – Legacy** | Baseline interaction tracking | Minimal logic, foundation for upgrades |
| **v1 – Cooldown & Anti-Spam** | Per-wallet cooldown tracking | Owner-controlled, ready for inheritance |
| **v2 – Policy-Driven Rules** | Inherits v1 | Same logic as v1, inheritance-ready, no extra features yet |
| **v3 – Automation / Hook Ready** | Inherits v2 | Emits activity events for future hook integration, keeps cooldown logic intact |
| **v4 – NFT-Gated Activity** | Inherits v3 | Requires Gotchipus NFT ownership to record activity, adds ecosystem gating without breaking previous behavior |

---

## Contract Features

### Owner-Controlled Cooldown
- Owner can set per-wallet cooldown (`setCooldown`)
- Prevents spam interactions
- Tracks `lastActionTime` per user

### Activity Recording
- `recordActivity()` available in v0 → v4
- Emits `ActivityRecorded` event in v3 and v4
- v4 requires Gotchipus NFT ownership

### NFT / Ecosystem Gating (v4)
- Checks `balanceOf(msg.sender)` from Gotchipus NFT contract
- Only NFT holders can call `recordActivity`
- Ensures ecosystem-level gating

---

## Deployment Notes

| Version | Network | Owner Wallet | Cooldown (s) | Gotchipus NFT Address | Deployed Address |
|---------|---------|--------------|--------------|---------------------|----------------|
| v1      | Testnet | `0xd3aF179f0e6d13C9435A468AE1F21d8D240973ed` | 3600 | N/A | `0xb4739dbbf0853ff85ad64fbe87326ee0804385ca.` |
| v2      | Testnet | `0xd3aF179f0e6d13C9435A468AE1F21d8D240973ed` | 3600 | N/A | `0x3f0c199e022e4e7be20aa9529dc61f1a04246b1f` |
| v3      | Testnet | `0xd3aF179f0e6d13C9435A468AE1F21d8D240973ed` | 3600 | N/A | `0xb4739dbbf0853ff85ad64fbe87326ee0804385ca` |
| v4      | Testnet | `0xd3aF179f0e6d13C9435A468AE1F21d8D240973ed` | 3600 | `0x000000007b5758541e9d94a487b83e11cd052437` | `0xc619D1aC1dCeA9a067CfB50B9C690aA71c17cAcB` |


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
