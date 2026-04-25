# ============================================================
# PERSONA ANIMATION PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical animation profile model.

model_type:
- motion expression truth model

primary_key:
- persona_animation_profile_id

natural_key:
- persona_id
- animation_profile_code
- animation_profile_version

fields:
- persona_animation_profile_id
- persona_id
- animation_profile_code
- animation_profile_version
- profile_status
- motion_summary
- animation_hash
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
Animation profiles must expose explicit version semantics.

truth_boundary:
Animation profile truth belongs to PersonaOS expression-composition domain.
