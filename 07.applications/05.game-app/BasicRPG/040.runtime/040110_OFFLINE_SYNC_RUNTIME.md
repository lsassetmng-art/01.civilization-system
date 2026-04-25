# ============================================================
# OFFLINE SYNC RUNTIME
# ============================================================

runtime_sequence:
1. load cached profile and queue
2. mark session as offline-capable
3. allow locally safe actions
4. enqueue auditable mutations
5. when online resumes, submit ordered queue
6. resolve conflicts explicitly
7. refresh cloud-confirmed snapshots

offline_safe_actions:
- read profile
- browse inventory
- run locally permitted PvE session if seed/scope allows
- change UI locale
- queue save/export intent

offline_blocked_actions:
- premium purchase
- refund-sensitive entitlement use
- server-validated limited-time event entry
