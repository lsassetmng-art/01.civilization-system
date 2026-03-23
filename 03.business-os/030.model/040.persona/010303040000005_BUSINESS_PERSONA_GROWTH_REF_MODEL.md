# ============================================================
# BUSINESS PERSONA GROWTH REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Track Business-originated growth synchronization state.

role:
Track the latest Business -> Persona growth request/result linkage.
This is a synchronization tracking model, not Persona truth.

primary_key:
- business_persona_growth_ref_id

natural_key:
- company_id
- business_user_id
- persona_id

fields:
- business_persona_growth_ref_id
- company_id
- business_user_id
- persona_id
- last_growth_request_id
- last_growth_event_type
- last_growth_payload_hash
- last_growth_sent_at
- last_growth_result_status
- last_growth_applied_at
- last_result_sync_event_id
- correlation_id
- created_at
- updated_at

last_growth_result_status_enum:
- pending
- accepted
- rejected
- failed
- expired

rules:
- BusinessOS may write outbound tracking state
- Persona-originated result sync updates result-related fields
- growth truth remains in PersonaOS
