# ============================================================
# GAME BUILDER VALIDATION JOB MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder validation job model.

model_type:
- validation job truth model

primary_key:
- game_builder_validation_job_id

natural_key:
- job_scope
- job_ref
- correlation_id

fields:
- game_builder_validation_job_id
- job_scope
- job_ref
- correlation_id
- job_status
- project_code
- job_summary
- result_hash
- started_at
- ended_at
- created_at
- updated_at

job_status_enum:
- queued
- running
- passed
- failed
- archived

truth_boundary:
Builder validation job truth belongs to GameOS builder-webapp domain.
