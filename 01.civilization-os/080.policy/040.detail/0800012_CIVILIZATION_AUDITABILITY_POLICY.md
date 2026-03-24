# ============================================================
# CIVILIZATION AUDITABILITY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for auditability.

policy_rules:
- every privileged path must remain attributable
- every retry and dead-letter path must remain visible
- cross-domain sync outcomes must remain inspectable
- compatibility and version decisions must remain inspectable
- operational repair actions must remain auditable
