# ============================================================
# RESPONSIBLE GAMING PROTECTION STATE MODEL
# ============================================================

status: draft-for-canonical-update
system: civilization-os
layer: model
domain: gambling-governance
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
Formal platform protection state model for responsible gaming controls.

major_states:
- normal
- observed
- warned
- limited
- cooldown-active
- self-excluded
- forced-paused
- operator-held

core_fields:
- protection state identity
- player identity
- current state
- escalation marker
- cooldown status
- self-exclusion status
- forced pause status
- updated_at
