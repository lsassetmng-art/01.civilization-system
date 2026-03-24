# ============================================================
# CIVILIZATION TRADE CONTROL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for permits, sanctions, and embargoes.

policy_rules:
- permit, sanctions, and restriction basis must remain explicit
- blocked, suspended, revoked, or expired trade states must remain explicit
- border-compliance traceability must remain preserved
- trade-control truth must remain canonical

evaluation_order:
1 goods validity
2 permit validity
3 sanctions-screening validity
4 embargo validity
5 execution eligibility
