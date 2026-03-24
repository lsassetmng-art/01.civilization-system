# ============================================================
# CIVILIZATION CHARGE FILING MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical charge filing model.

model_type:
- criminal accusation truth model

primary_key:
- charge_filing_id

natural_key:
- filing_scope
- filing_ref
- correlation_id

fields:
- charge_filing_id
- filing_scope
- filing_ref
- correlation_id
- filing_status
- accused_scope
- charge_summary
- source_state_version
- filed_at
- created_at
- updated_at

filing_status_enum:
- drafted
- filed
- accepted
- rejected
- withdrawn
- archived

truth_boundary:
Charge-filing truth belongs to CivilizationOS criminal-procedure domain.
