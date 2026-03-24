# ============================================================
# CIVILIZATION RETENTION SCHEDULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retention schedule model.

model_type:
- records governance truth model

primary_key:
- retention_schedule_id

natural_key:
- schedule_scope
- schedule_code
- schedule_version

fields:
- retention_schedule_id
- schedule_scope
- schedule_code
- schedule_version
- schedule_status
- retention_rule_body
- destruction_rule_body
- effective_from
- effective_until
- created_at
- updated_at

schedule_status_enum:
- active
- superseded
- revoked
- expired

contract_version_rule:
Retention schedules must expose explicit version semantics.

truth_boundary:
Retention-schedule truth belongs to CivilizationOS records-governance domain.
