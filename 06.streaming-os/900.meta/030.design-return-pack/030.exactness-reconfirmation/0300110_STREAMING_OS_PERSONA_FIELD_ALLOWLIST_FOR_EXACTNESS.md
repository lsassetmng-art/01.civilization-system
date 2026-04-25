# ============================================================
# STREAMING OS PERSONA FIELD ALLOWLIST FOR EXACTNESS
# ============================================================

status: canonical-allowlist
layer: meta
domain: exactness-reconfirmation
system: StreamingOS
prepared_by: Zero
owner: Boss

allowed_fields_or_refs:
- persona_id
- snapshot_id
- applied_snapshot_id
- signed_snapshot_ref
- request_event_id
- result_event_id
- performer_persona_id
- target_persona_id
- persona_release_ref
- persona_license_ref
- persona_access_ref
- local_view_config
- local streaming-derived reaction state

not_allowed_as_local_canonical:
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- persona_profile_reference as local canonical
- local persona mutable state
- local persona growth truth
- local persona memory truth
