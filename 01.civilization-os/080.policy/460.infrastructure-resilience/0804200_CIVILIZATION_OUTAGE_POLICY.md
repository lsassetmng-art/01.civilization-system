# ============================================================
# CIVILIZATION OUTAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for outages.

policy_rules:
- service, incident, and affected-scope basis must remain explicit
- mitigated or restored outage states must remain explicit
- resilience traceability must remain preserved
- outage truth must remain canonical


