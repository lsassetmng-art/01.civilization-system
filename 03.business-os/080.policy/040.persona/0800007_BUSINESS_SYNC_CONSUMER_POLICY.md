# ============================================================
# BUSINESS SYNC CONSUMER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for consuming Persona sync results inside BusinessOS.

policy_rules:
- all Persona-originated sync results must enter inbox first
- consume must be idempotent
- duplicate source_event_id must not cause duplicate business reflection
- failed consume must remain auditable
- trust and permission consume paths must remain distinguishable
