# ============================================================
# BUSINESS AI WORKER ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

definition:
Represents assignment or dispatch of a worker to a target system or app.

fields:
- worker_assignment_id
- worker_employment_id
- target_system
- target_app
- target_scope
- assignment_status
- created_at
- updated_at
