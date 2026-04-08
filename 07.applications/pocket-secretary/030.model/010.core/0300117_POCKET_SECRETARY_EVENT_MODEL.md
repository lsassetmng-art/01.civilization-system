# ============================================================
# POCKET SECRETARY EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded application events used for local state change tracking
inside PocketSecretary.

fields:
- event_id
- user_id
- event_type
- event_scope
- related_object_type
- related_object_id
- payload_reference
- occurred_at
- created_at

rules:
- local event records do not imply external confirmation
- event persistence and business success remain distinct
- critical external actions require explicit higher-layer confirmation state
