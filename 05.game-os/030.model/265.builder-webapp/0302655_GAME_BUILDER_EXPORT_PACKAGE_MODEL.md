# ============================================================
# GAME BUILDER EXPORT PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder export package model.

model_type:
- export package truth model

primary_key:
- game_builder_export_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_builder_export_package_id
- package_scope
- package_code
- package_version
- package_status
- project_code
- export_hash
- export_summary
- exported_at
- created_at
- updated_at

package_status_enum:
- draft
- exported
- accepted
- rejected
- archived

contract_version_rule:
Builder export packages must expose explicit version semantics.

truth_boundary:
Builder export package truth belongs to GameOS builder-webapp domain.
