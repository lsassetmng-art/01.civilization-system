# ============================================================
# CIVILIZATION AUTHENTICATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for credentials and tokens.

policy_rules:
- credential identity, holder scope, and authorization basis must remain explicit
- suspended, revoked, or expired authentication states must remain explicit
- authentication traceability must remain preserved
- authentication truth must remain canonical
