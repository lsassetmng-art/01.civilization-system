# ============================================================
# CROSS K PERSONA FIELD INTERPRETATION MATRIX
# ============================================================

status: canonical-matrix
layer: meta
domain: k1-k6-exactness-return
system: StreamingOS
prepared_by: Zero
owner: Boss

allowed_reference_fields:
- persona_id
- snapshot_id
- applied_snapshot_id
- signed_snapshot_ref
- request_event_id
- result_event_id
- performer_persona_id
- target_persona_id
- persona_access_ref
- persona_license_ref
- persona_release_ref

allowed_local_fields_if_noncanonical:
- local_view_config
- local display projection codes
- local reaction intensity
- local tipping limits
- local stop flags
- local continuity state
- local presentation state

forbidden_as_local_canonical:
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- persona_profile_reference as local canonical
- local persona mutable state
- local persona growth truth
- local persona memory truth
- local persona emotional truth
- local persona signature / revocation truth
