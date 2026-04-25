# ============================================================
# PERSONA VOICE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical voice profile model.

model_type:
- voice identity truth model

primary_key:
- persona_voice_profile_id

natural_key:
- persona_id
- voice_profile_code
- voice_profile_version

fields:
- persona_voice_profile_id
- persona_id
- voice_profile_code
- voice_profile_version
- profile_status
- voice_class
- speech_summary
- voice_hash
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Voice profiles must expose explicit version semantics.

truth_boundary:
Voice profile truth belongs to PersonaOS expression-composition domain.
