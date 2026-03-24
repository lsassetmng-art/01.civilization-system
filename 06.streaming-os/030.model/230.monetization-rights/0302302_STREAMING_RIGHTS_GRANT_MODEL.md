# ============================================================
# STREAMING RIGHTS GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical streaming rights grant model.

model_type:
- rights truth model

primary_key:
- streaming_rights_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- streaming_rights_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- rights_holder_scope
- rights_summary
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Streaming rights grants must expose explicit version semantics.

truth_boundary:
Streaming rights grant truth belongs to StreamingOS monetization-rights domain.
