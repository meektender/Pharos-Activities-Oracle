Pharos Activity Oracle – README (Table Style)
Section
Details
Project
Pharos Activity Oracle – On-chain user interaction tracker on Pharos Atlantic Testnet
Goal
Record, verify, and extend real user activity in a versioned, auditable way
Design
Start minimal → observe behavior → add upgrades progressively
Versioning
v0 (Legacy): baseline interaction  v1: 1-hour cooldown  v2: rule-based interactions  v3: hook automation
v0 Features
Track unique wallets  Emit events  Multi-wallet interaction test
v0 Limitations
No cooldown  No anti-spam  No automation
Deployment
Network: Pharos Atlantic Testnet  Contract: PharosActivity_Legacy  Address: 0x8cece077e055224cccd2682d6714dac167196660
Status
v0 deployed & verified  Multi-wallet tests successful  v1 cooldown ready
Builder Notes
Independent learning by doing  Following ecosystem best practices
Next Step
Implement v1 cooldown  Keep v0 immutable
