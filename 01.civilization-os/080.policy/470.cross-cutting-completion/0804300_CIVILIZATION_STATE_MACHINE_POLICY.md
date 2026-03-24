# ============================================================
# CIVILIZATION STATE MACHINE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for shared lifecycle state governance.

policy_rules:
- transition basis, terminal basis, and authority basis must remain explicit
- invalid, revoked, completed, or archived states must remain explicit
- lifecycle traceability must remain preserved
- lifecycle truth must remain canonical
