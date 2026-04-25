# ============================================================
# PLAYLIST WATCH QUEUE IDENTITY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K3-002

decision:
playlist and watch queue are distinct objects with distinct identity and mutation semantics.

playlist:
- named collection object
- may carry visibility_state
- may be shared when policy allows
- supports stable owner-defined composition

watch_queue:
- immediate continuity ordering object
- remains self/private by default
- supports fast reorder and consumption-oriented mutation
- is not a named playlist substitute

rules:
- playlist_id and watch_queue_state_id are never interchangeable
- playlist_items and watch_queue_items remain separate table families
- shared playlist visibility does not imply shared watch queue visibility
