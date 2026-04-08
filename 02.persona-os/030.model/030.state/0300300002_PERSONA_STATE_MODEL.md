# ============================================================
# PERSONA STATE MODEL
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_state

purpose:
Defines the canonical current state record for a persona.

core_fields:
persona_state_id
persona_id
state_code
lifecycle_state_code
availability_state
release_state
lock_state
restriction_state
state_reason
state_version
changed_at
created_at
updated_at

canonical_state_examples:
draft
validated
approved
released
active
paused
suspended
retired
archived

rules:
State truth belongs to PersonaOS.
Lifecycle state and operational availability must remain distinguishable.
