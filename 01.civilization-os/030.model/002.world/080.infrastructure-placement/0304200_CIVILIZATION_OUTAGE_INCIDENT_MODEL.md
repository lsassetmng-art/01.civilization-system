# ============================================================
# CIVILIZATION OUTAGE INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical outage incident model.

model_type:
- infrastructure incident truth model

primary_key:
- outage_incident_id

natural_key:
- incident_scope
- incident_ref
- correlation_id

fields:
- outage_incident_id
- incident_scope
- incident_ref
- correlation_id
- incident_status
- service_scope
- outage_summary
- source_state_version
- occurred_at
- created_at
- updated_at

incident_status_enum:
- reported
- active
- mitigated
- restored
- archived

truth_boundary:
Outage-incident truth belongs to CivilizationOS infrastructure-resilience domain.
