# ============================================================
# STREAMING OS PERSONA KEEP SURFACE LEDGER
# ============================================================

status: canonical-keep-ledger
layer: meta
domain: persona-boundary-realignment
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Defines which persona-related StreamingOS surfaces are allowed to remain.

allowed_keep_surfaces:
- persona usage binding references
- access / license / release references
- permission consume runtime
- result consume runtime
- signed snapshot display references
- performer assignment references
- local view config
- local creator/viewer state
- local presentation and participation state
- replayable derived caches explicitly marked non-canonical

required_field_shape_examples:
- persona_id
- snapshot_id
- applied_snapshot_id
- signed_snapshot_ref
- request_event_id
- result_event_id
- local_view_config_json
- local_presentation_state
- performer_assignment_state

keep_conditions:
- rebuildable from canonical upstream plus local inputs
- not a source of persona internal truth
- not a direct mutation route
- safe to replay or refresh
