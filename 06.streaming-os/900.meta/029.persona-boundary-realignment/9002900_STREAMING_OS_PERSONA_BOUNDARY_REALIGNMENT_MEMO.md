# ============================================================
# STREAMING OS PERSONA BOUNDARY REALIGNMENT MEMO
# ============================================================

status: canonical-boundary-memo
layer: meta
domain: persona-boundary-realignment
system: StreamingOS
prepared_by: Zero
owner: Boss

background:
PersonaOS already owns:
- persona core
- mutable state
- growth
- memory
- visual generation
- signature
- snapshot
- rights-candidate basis

therefore_streamingos_must_not:
- duplicate persona core tables
- hold persona mutable canonical state
- directly mutate persona internal state
- re-implement growth, memory, emotion, signature, revocation, or trust canonicals

streamingos_may_hold:
- persona_id
- snapshot_id
- applied_snapshot_id
- persona usage binding references
- performer assignment references
- local_view_config
- creator/viewer local state
- app-local runtime/presentation state
- request events sent to PersonaOS
- result events consumed from PersonaOS

canonical_update_route:
- StreamingOS request event
- PersonaOS apply
- PersonaOS result event
- StreamingOS consume result

display_rule:
- public display
- performer display
- external display
- distribution-facing display

must all be based on signed snapshot or formal PersonaOS result references.
