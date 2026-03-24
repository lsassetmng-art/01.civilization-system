# ============================================================
# CIVILIZATION FOREIGN AID PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical foreign aid program model.

model_type:
- external assistance truth model

primary_key:
- foreign_aid_program_id

natural_key:
- program_scope
- program_code
- program_version

fields:
- foreign_aid_program_id
- program_scope
- program_code
- program_version
- program_status
- donor_scope
- recipient_scope
- aid_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

program_status_enum:
- draft
- approved
- active
- paused
- completed
- cancelled
- archived

contract_version_rule:
Foreign-aid programs must expose explicit version semantics.

truth_boundary:
Foreign-aid program truth belongs to CivilizationOS external-trade-aid domain.
