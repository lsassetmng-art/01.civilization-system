# ============================================================
# PERSONA SKILL PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical skill profile model.

model_type:
- capability truth model

primary_key:
- persona_skill_profile_id

natural_key:
- persona_id
- skill_profile_code
- skill_profile_version

fields:
- persona_skill_profile_id
- persona_id
- skill_profile_code
- skill_profile_version
- profile_status
- skill_summary
- capability_hash
- source_state_version
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
Skill profiles must expose explicit version semantics.

truth_boundary:
Skill profile truth belongs to PersonaOS expression-composition domain.
