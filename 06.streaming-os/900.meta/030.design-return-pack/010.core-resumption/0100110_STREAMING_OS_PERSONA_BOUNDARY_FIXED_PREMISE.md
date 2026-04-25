# ============================================================
# STREAMING OS PERSONA BOUNDARY FIXED PREMISE
# ============================================================

status: canonical-fixed-premise
layer: meta
domain: core-resumption
system: StreamingOS
prepared_by: Zero
owner: Boss

fixed_rule:
- Persona mutable state canonical owner is PersonaOS only.
- StreamingOS may keep only:
  - persona_id
  - snapshot_id
  - applied_snapshot_id
  - request_event_id
  - result_event_id
  - signed snapshot refs
  - performer assignment refs
  - local_view_config
  - streaming-local derived state

not_allowed:
- persona core duplication
- local persona mutable mirror
- direct persona mutation
- local persona growth canonical
- local persona trust canonical
- local persona emotion canonical
- local persona memory canonical
- local persona signature / revocation canonical

display_rule:
Public, performer-facing, and external persona display must be based on:
- signed snapshot
- or formal Persona result references
