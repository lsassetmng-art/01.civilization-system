# ============================================================
# CIVILIZATION SECRET MATERIAL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical secret material record model.

model_type:
- secret management truth model

primary_key:
- secret_material_record_id

natural_key:
- secret_scope
- secret_code
- secret_version

fields:
- secret_material_record_id
- secret_scope
- secret_code
- secret_version
- secret_status
- secret_class
- custody_scope
- rotation_rule_summary
- created_at
- updated_at

secret_status_enum:
- staged
- active
- rotating
- revoked
- destroyed
- archived

contract_version_rule:
Secret material records must expose explicit version semantics.

truth_boundary:
Secret-material truth belongs to CivilizationOS cyber-defense domain.
