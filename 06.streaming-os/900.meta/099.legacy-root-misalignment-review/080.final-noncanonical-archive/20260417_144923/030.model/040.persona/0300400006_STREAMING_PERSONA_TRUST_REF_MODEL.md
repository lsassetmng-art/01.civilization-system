# ============================================================
# STREAMING PERSONA TRUST REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Reference formal Persona trust-related outputs inside StreamingOS
without storing local trust canonical truth.

fields:
- streaming_user_id
- persona_id
- trust_result_event_id
- trust_signed_snapshot_id
- applied_snapshot_id
- local_display_profile_code
- last_result_consumed_at

usage_rule:
Permission and trust remain separate.

StreamingOS may consume trust-facing formal outputs
for local display or gating interpretation,
but must not store:
- trust_score as local canonical truth
- trust_level as local canonical truth
- safety_score as local canonical truth
- stability_score as local canonical truth
- consistency_score as local canonical truth
