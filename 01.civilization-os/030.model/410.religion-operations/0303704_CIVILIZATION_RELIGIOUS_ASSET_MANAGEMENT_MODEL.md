# ============================================================
# CIVILIZATION RELIGIOUS ASSET MANAGEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical religious asset management model.

model_type:
- religious asset truth model

primary_key:
- religious_asset_management_id

natural_key:
- asset_scope
- asset_code
- asset_version

fields:
- religious_asset_management_id
- asset_scope
- asset_code
- asset_version
- asset_status
- owner_scope
- asset_summary
- source_state_version
- created_at
- updated_at

asset_status_enum:
- current
- restricted
- impaired
- transferred
- archived

contract_version_rule:
Religious asset management records must expose explicit version semantics.

truth_boundary:
Religious-asset truth belongs to CivilizationOS religion-operations domain.
