# ============================================================
# CIVILIZATION SKILL PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical skill profile model.

model_type:
- capability truth model

primary_key:
- skill_profile_id

natural_key:
- profile_scope
- profile_code

fields:
- skill_profile_id
- profile_scope
- profile_code
- profile_status
- holder_scope
- skill_summary
- proficiency_level
- source_lineage
- source_state_version
- evaluated_at
- created_at
- updated_at

profile_status_enum:
- current
- provisional
- revised
- restricted
- archived

truth_boundary:
Skill-profile truth belongs to CivilizationOS human-capital domain.
