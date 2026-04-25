# ============================================================
# PERSONA DELIVERY MANIFEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona delivery manifest model.

model_type:
- delivery manifest truth model

primary_key:
- persona_delivery_manifest_id

natural_key:
- manifest_scope
- manifest_code
- manifest_version

fields:
- persona_delivery_manifest_id
- manifest_scope
- manifest_code
- manifest_version
- manifest_status
- source_package_code
- required_field_summary
- manifest_hash
- created_at
- updated_at

manifest_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

contract_version_rule:
Delivery manifests must expose explicit version semantics.

truth_boundary:
Delivery manifest truth belongs to PersonaOS expression-composition domain.
