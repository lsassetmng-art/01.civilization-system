# ============================================================
# GAME ANTI TAMPER_ATTESTATION RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical anti-tamper attestation result model.

model_type:
- attestation truth model

primary_key:
- game_anti_tamper_attestation_result_id

natural_key:
- attestation_scope
- attestation_ref
- correlation_id

fields:
- game_anti_tamper_attestation_result_id
- attestation_scope
- attestation_ref
- correlation_id
- attestation_status
- game_title_code
- device_code
- attestation_summary
- attested_at
- created_at
- updated_at

attestation_status_enum:
- received
- passed
- failed
- superseded
- archived

truth_boundary:
Anti-tamper attestation truth belongs to GameOS sync-platform domain.
