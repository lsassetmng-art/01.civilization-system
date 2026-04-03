# ============================================================
# CIVILIZATION SERVICE OUTCOME POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for service outcomes.

policy_rules:
- fulfilled, partial, failed, and reversed outcomes must remain explicit
- outcome trace must preserve request lineage
- reversed outcomes must not appear silently fulfilled
- service outcome truth must remain canonical
