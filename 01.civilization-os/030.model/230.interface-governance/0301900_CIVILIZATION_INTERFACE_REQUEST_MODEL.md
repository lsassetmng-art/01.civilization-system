# ============================================================
# CIVILIZATION INTERFACE REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical interface request model.

model_type:
- boundary request truth model

primary_key:
- interface_request_id

natural_key:
- interface_scope
- interface_request_ref
- correlation_id

fields:
- interface_request_id
- interface_scope
- interface_request_ref
- request_status
- requester_scope
- target_interface_code
- request_payload
- payload_hash
- contract_version
- source_state_version
- correlation_id
- causation_id
- requested_at
- decided_at
- created_at
- updated_at

request_status_enum:
- submitted
- under_review
- approved
- rejected
- executed
- expired
- cancelled
- archived

contract_version_rule:
Interface requests must expose explicit contract version semantics.

truth_boundary:
Interface request truth belongs to CivilizationOS interface-governance domain.
