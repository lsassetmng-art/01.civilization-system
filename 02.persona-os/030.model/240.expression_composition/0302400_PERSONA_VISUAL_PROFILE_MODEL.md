# ============================================================
# PERSONA VISUAL PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical visual profile model.

model_type:
- visual identity truth model

primary_key:
- persona_visual_profile_id

natural_key:
- persona_id
- visual_profile_code
- visual_profile_version

fields:
- persona_visual_profile_id
- persona_id
- visual_profile_code
- visual_profile_version
- profile_status
- character_code
- expression_summary
- visual_hash
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
Visual profiles must expose explicit version semantics.

truth_boundary:
Visual profile truth belongs to PersonaOS expression-composition domain.
