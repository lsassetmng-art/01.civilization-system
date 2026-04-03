# ============================================================
# CIVILIZATION DIPLOMATIC MISSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical diplomatic mission model.

model_type:
- diplomatic representation truth model

primary_key:
- diplomatic_mission_id

natural_key:
- mission_scope
- mission_code
- mission_version

fields:
- diplomatic_mission_id
- mission_scope
- mission_code
- mission_version
- mission_status
- sending_scope
- receiving_scope
- mission_class
- effective_from
- effective_until
- created_at
- updated_at

mission_status_enum:
- draft
- approved
- active
- suspended
- withdrawn
- archived

contract_version_rule:
Diplomatic missions must expose explicit version semantics.

truth_boundary:
Diplomatic-mission truth belongs to CivilizationOS diplomatic-operations domain.
