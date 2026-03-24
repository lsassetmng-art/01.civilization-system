# ============================================================
# CIVILIZATION ASSET REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical asset registry model.

model_type:
- registry truth model

primary_key:
- asset_registry_id

natural_key:
- asset_domain
- asset_code

fields:
- asset_registry_id
- asset_domain
- asset_code
- asset_name
- asset_status
- owner_nation_id
- asset_class
- source_of_truth_domain
- created_at
- updated_at

asset_status_enum:
- active
- inactive
- frozen
- retired
- archived

truth_boundary:
Asset registry truth belongs to its declared source_of_truth_domain,
with CivilizationOS governing registry visibility.
