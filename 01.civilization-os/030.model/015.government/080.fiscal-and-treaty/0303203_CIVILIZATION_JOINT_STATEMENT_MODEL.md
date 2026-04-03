# ============================================================
# CIVILIZATION JOINT STATEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical joint statement model.

model_type:
- diplomatic publication truth model

primary_key:
- joint_statement_id

natural_key:
- statement_scope
- statement_code
- statement_version

fields:
- joint_statement_id
- statement_scope
- statement_code
- statement_version
- statement_status
- source_session_code
- party_summary
- payload_hash
- published_at
- created_at
- updated_at

statement_status_enum:
- draft
- approved
- published
- superseded
- withdrawn
- archived

contract_version_rule:
Joint statements must expose explicit version semantics.

truth_boundary:
Joint-statement truth belongs to CivilizationOS diplomatic-operations domain.
