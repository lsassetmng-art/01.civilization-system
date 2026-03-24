# ============================================================
# STREAMING REUSE PERMISSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming reuse permission model.

model_type:
- reuse truth model

primary_key:
- streaming_reuse_permission_id

natural_key:
- permission_scope
- permission_code
- permission_version

fields:
- streaming_reuse_permission_id
- permission_scope
- permission_code
- permission_version
- permission_status
- source_asset_ref
- permission_summary
- effective_from
- effective_until
- created_at
- updated_at

permission_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Streaming reuse permissions must expose explicit version semantics.

truth_boundary:
Streaming reuse permission truth belongs to StreamingOS monetization-rights domain.
