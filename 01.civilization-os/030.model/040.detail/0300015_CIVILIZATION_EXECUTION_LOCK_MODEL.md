# ============================================================
# CIVILIZATION EXECUTION LOCK MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical execution lock model.

model_type:
- operational model

primary_key:
- execution_lock_id

natural_key:
- lock_scope
- lock_key

fields:
- execution_lock_id
- lock_scope
- lock_key
- lock_owner
- lock_status
- acquired_at
- expires_at
- released_at
- correlation_id
- created_at
- updated_at

lock_status_enum:
- active
- expired
- released
- broken

truth_boundary:
This is operational control state.
It must never be confused with domain truth.

failure_note:
Broken locks must remain auditable.
