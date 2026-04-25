# ============================================================
# PERSONA PACKAGE ITEM MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona package item model.

model_type:
- package item truth model

primary_key:
- persona_package_item_id

natural_key:
- package_code
- item_ref
- item_version

fields:
- persona_package_item_id
- package_code
- item_ref
- item_version
- item_status
- item_type
- source_component_code
- inclusion_summary
- created_at
- updated_at

item_status_enum:
- draft
- approved
- active
- removed
- archived

contract_version_rule:
Persona package items must expose explicit version semantics.

truth_boundary:
Persona package item truth belongs to PersonaOS expression-composition domain.
