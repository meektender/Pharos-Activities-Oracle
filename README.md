Overview
Pharos Activity Oracle is an iterative, on-chain project built on the Pharos Atlantic Testnet to study and record real user interaction behavior.
The project follows a versioned development model:
Start with a minimal, verifiable baseline (v0)
Observe real on-chain usage
Introduce controlled upgrades (v1, v2, v3…)
This repository is designed to reflect real protocol development practices, not testnet farming.
Design Philosophy
Most on-chain systems fail because they start complex.
This project starts simple on purpose:
One responsibility per version
Clear limitations documented
No assumptions
No skipped steps
Each version exists for a specific reason and is never rewritten or hidden.
Versioning Strategy
Version
Purpose
v0 (Legacy)
Baseline interaction validation
v1
Cooldown & basic anti-spam
v2
Policy-based interaction rules
v3
Hook / automation compatibility
Older versions remain immutable and serve as historical references.
v0 — Legacy Baseline
Objective
v0 exists to validate one thing only:
Can multiple independent wallets interact with a contract and produce verifiable on-chain signals?
What v0 Does
Records whether an address has interacted
Counts unique interacting addresses
Emits an event for every interaction
What v0 Does NOT Do
❌ No cooldown
❌ No spam prevention
❌ No permissions
❌ No automation
These limitations are intentional.
Deployment (v0)
Network: Pharos Atlantic Testnet
Contract Name: PharosActivity_Legacy
Contract Address:
0x8cece077e055224cccd2682d6714dac167196660
Verification
Contract source verified on PharosScan
On-chain behavior matches repository source
This deployment serves as the canonical reference for all future upgrades.
Verified Behavior
The following behaviors have been confirmed on-chain:
Interaction from multiple EOAs
Accurate unique user counting
Consistent event emission
Transparent state changes
Why v0 Matters
In real protocol engineering:
You validate assumptions before adding constraints
You observe behavior before enforcing rules
You build trust through simplicity
v0 establishes credibility and traceability.
Roadmap
v1 — Cooldown Enforcement
Time-based interaction limit (1 hour)
Prevent rapid repeat calls
Preserve v0 structure
v2 — Policy Layer
Configurable interaction rules
Extensible logic
v3 — Automation / Hooks
Compatibility with programmable hooks
Event-driven extensions
Status
Stage: v0 complete & verified
Network: Pharos Atlantic Testnet
Next milestone: v1 (Cooldown)
Builder Note
This project is maintained as a learning-by-building exercise aligned with real ecosystem standards.
Focus is on quality, clarity, and progression, not volume.
