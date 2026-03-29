# ============================================================
# GAME NON PERSONA ASSET BOUNDARY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical boundary model for non-Persona game material assets.

model_type:
- truth-boundary governance model

primary_key:
- game_non_persona_asset_boundary_id

natural_key:
- boundary_scope
- boundary_code
- boundary_version

fields:
- game_non_persona_asset_boundary_id
- boundary_scope
- boundary_code
- boundary_version
- boundary_status
- allowed_asset_summary
- prohibited_persona_overlap_summary
- created_at
- updated_at

boundary_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Non-Persona asset boundary models must expose explicit version semantics.

truth_boundary:
Non-Persona asset boundary truth belongs to GameOS builder-template-asset-system domain.
