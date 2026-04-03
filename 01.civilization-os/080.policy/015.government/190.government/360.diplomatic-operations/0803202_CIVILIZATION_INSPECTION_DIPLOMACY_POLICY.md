# ============================================================
# CIVILIZATION INSPECTION DIPLOMACY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for inspection diplomacy and incidents.

policy_rules:
- mandate, host, access, and incident basis must remain explicit
- interrupted, rejected, or resolved inspection states must remain explicit
- diplomatic compliance traceability must remain preserved
- inspection diplomacy truth must remain canonical

evaluation_order:
1 request validity
2 mandate validity
3 host-access validity
4 incident validity
5 execution eligibility
