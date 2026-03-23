# ============================================================
# EXTERNAL GROWTH CONSUMER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for consuming external OS growth requests inside PersonaOS.

policy_rules:
- external growth requests must enter inbox first
- growth consume must be idempotent
- duplicate source_os + source_event_id must not cause duplicate effective apply
- rejected requests must remain auditable
- external projections must not directly overwrite Persona truth
- unsupported source_os or contract_version must be rejected or dead-lettered
