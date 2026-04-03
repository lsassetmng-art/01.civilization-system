# ============================================================
# CIVILIZATION ARBITRATION CASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical arbitration case model.

model_type:
- adjudication process truth model

primary_key:
- arbitration_case_id

natural_key:
- arbitration_scope
- arbitration_ref
- source_dispute_ref

fields:
- arbitration_case_id
- arbitration_scope
- arbitration_ref
- source_dispute_ref
- arbitration_status
- arbitrator_scope
- hearing_summary
- source_state_version
- created_at
- updated_at

arbitration_status_enum:
- opened
- active
- decided
- suspended
- cancelled
- archived

truth_boundary:
Arbitration-case truth belongs to CivilizationOS dispute-resolution domain.
