# ============================================================
# CIVILIZATION STAY ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical stay order model.

model_type:
- suspension control truth model

primary_key:
- stay_order_id

natural_key:
- stay_scope
- stay_code
- stay_version

fields:
- stay_order_id
- stay_scope
- stay_code
- stay_version
- stay_status
- source_case_ref
- target_execution_ref
- stay_basis
- effective_from
- effective_until
- created_at
- updated_at

stay_status_enum:
- draft
- issued
- active
- lifted
- expired
- revoked
- archived

contract_version_rule:
Stay orders must expose explicit version semantics.

truth_boundary:
Stay-order truth belongs to CivilizationOS dispute-resolution domain.
