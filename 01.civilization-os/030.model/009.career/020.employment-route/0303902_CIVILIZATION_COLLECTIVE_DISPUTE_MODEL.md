# ============================================================
# CIVILIZATION COLLECTIVE DISPUTE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical collective dispute model.

model_type:
- labor dispute truth model

primary_key:
- collective_dispute_id

natural_key:
- dispute_scope
- dispute_ref
- correlation_id

fields:
- collective_dispute_id
- dispute_scope
- dispute_ref
- correlation_id
- dispute_status
- employer_scope
- worker_group_scope
- dispute_summary
- source_state_version
- opened_at
- closed_at
- created_at
- updated_at

dispute_status_enum:
- opened
- mediated
- escalated
- resolved
- archived

truth_boundary:
Collective-dispute truth belongs to CivilizationOS labor-administration domain.
