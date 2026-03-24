# ============================================================
# CIVILIZATION ENVIRONMENTAL ALERT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical environmental alert model.

model_type:
- environmental monitoring truth model

primary_key:
- environmental_alert_id

natural_key:
- alert_scope
- alert_code
- correlation_id

fields:
- environmental_alert_id
- alert_scope
- alert_code
- alert_status
- alert_type
- affected_scope
- source_state_version
- correlation_id
- issued_at
- created_at
- updated_at

alert_status_enum:
- active
- acknowledged
- mitigated
- cleared
- archived

truth_boundary:
Environmental-alert truth belongs to CivilizationOS environment-circularity domain.
