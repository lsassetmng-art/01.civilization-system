# ============================================================
# CIVILIZATION INVENTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical invention record model.

model_type:
- innovation truth model

primary_key:
- invention_record_id

natural_key:
- invention_scope
- invention_code
- invention_version

fields:
- invention_record_id
- invention_scope
- invention_code
- invention_version
- invention_status
- inventor_scope
- invention_summary
- source_state_version
- created_at
- updated_at

invention_status_enum:
- draft
- disclosed
- registered
- superseded
- withdrawn
- archived

contract_version_rule:
Invention records must expose explicit version semantics.

truth_boundary:
Invention-record truth belongs to CivilizationOS technology-governance domain.
