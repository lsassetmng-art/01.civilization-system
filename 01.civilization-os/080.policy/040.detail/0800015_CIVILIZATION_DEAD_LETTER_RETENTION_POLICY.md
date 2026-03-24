# ============================================================
# CIVILIZATION DEAD LETTER RETENTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for dead-letter retention.

policy_rules:
- dead-letter records must remain visible for review
- dead-letter retention must preserve traceability
- dead-letter state must not silently disappear
- replay eligibility must remain explicit

prohibited:
- silent deletion of unresolved dead-letter records
- replay without explicit replay path
