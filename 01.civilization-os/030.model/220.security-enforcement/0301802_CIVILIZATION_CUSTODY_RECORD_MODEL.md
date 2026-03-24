# ============================================================
# CIVILIZATION CUSTODY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical custody record model.

model_type:
- custodial truth model

primary_key:
- custody_record_id

natural_key:
- custody_scope
- custody_ref

fields:
- custody_record_id
- custody_scope
- custody_ref
- custody_status
- subject_scope
- holding_facility_code
- governing_basis
- source_state_version
- correlation_id
- started_at
- ended_at
- created_at
- updated_at

custody_status_enum:
- pending
- active
- transferred
- released
- invalidated
- archived

truth_boundary:
Custody truth belongs to CivilizationOS security-enforcement domain.
