# ============================================================
# CIVILIZATION HERITAGE CONSERVATION ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical heritage conservation action model.

model_type:
- heritage protection truth model

primary_key:
- heritage_conservation_action_id

natural_key:
- action_scope
- action_ref
- target_site_scope

fields:
- heritage_conservation_action_id
- action_scope
- action_ref
- target_site_scope
- action_status
- conservation_summary
- source_state_version
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- approved
- active
- completed
- revoked
- archived

truth_boundary:
Heritage-conservation truth belongs to CivilizationOS culture-tourism domain.
