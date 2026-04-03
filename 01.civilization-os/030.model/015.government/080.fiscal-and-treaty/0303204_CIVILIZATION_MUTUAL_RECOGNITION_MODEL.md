# ============================================================
# CIVILIZATION MUTUAL RECOGNITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical mutual recognition model.

model_type:
- diplomatic equivalence truth model

primary_key:
- mutual_recognition_id

natural_key:
- recognition_scope
- recognition_code
- recognition_version

fields:
- mutual_recognition_id
- recognition_scope
- recognition_code
- recognition_version
- recognition_status
- recognizing_scope
- recognized_scope
- recognition_summary
- effective_from
- effective_until
- created_at
- updated_at

recognition_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Mutual-recognition arrangements must expose explicit version semantics.

truth_boundary:
Mutual-recognition truth belongs to CivilizationOS diplomatic-operations domain.
