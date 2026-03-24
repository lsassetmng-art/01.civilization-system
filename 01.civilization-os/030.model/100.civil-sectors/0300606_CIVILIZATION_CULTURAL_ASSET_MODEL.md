# ============================================================
# CIVILIZATION CULTURAL ASSET MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical cultural asset model.

model_type:
- cultural registry model

primary_key:
- cultural_asset_id

natural_key:
- asset_scope
- asset_code

fields:
- cultural_asset_id
- asset_scope
- asset_code
- asset_status
- asset_name
- asset_class
- owner_scope
- created_at
- updated_at

asset_status_enum:
- active
- protected
- suspended
- retired
- archived

truth_boundary:
Cultural asset truth belongs to CivilizationOS cultural domain.
