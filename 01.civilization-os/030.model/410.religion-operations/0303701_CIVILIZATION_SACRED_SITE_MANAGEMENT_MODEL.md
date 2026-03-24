# ============================================================
# CIVILIZATION SACRED SITE MANAGEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sacred site management model.

model_type:
- sacred site truth model

primary_key:
- sacred_site_management_id

natural_key:
- site_scope
- site_code
- site_version

fields:
- sacred_site_management_id
- site_scope
- site_code
- site_version
- site_status
- managing_scope
- protection_summary
- effective_from
- effective_until
- created_at
- updated_at

site_status_enum:
- draft
- approved
- active
- restricted
- revoked
- archived

contract_version_rule:
Sacred site management records must expose explicit version semantics.

truth_boundary:
Sacred-site truth belongs to CivilizationOS religion-operations domain.
