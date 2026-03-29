# ============================================================
# GAME BUILDER PACKAGE LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical linkage between builder output and distributable package.

model_type:
- builder linkage truth model

primary_key:
- game_builder_package_link_id

natural_key:
- link_scope
- package_code
- link_version

fields:
- game_builder_package_link_id
- link_scope
- package_code
- link_version
- link_status
- profile_code
- builder_summary
- created_at
- updated_at

link_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game builder package links must expose explicit version semantics.

truth_boundary:
Game builder package linkage truth belongs to GameOS developer-platform domain.
