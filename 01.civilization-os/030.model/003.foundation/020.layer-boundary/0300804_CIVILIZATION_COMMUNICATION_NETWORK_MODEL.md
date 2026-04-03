# ============================================================
# CIVILIZATION COMMUNICATION NETWORK MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical communication network model.

model_type:
- infrastructure truth model

primary_key:
- communication_network_id

natural_key:
- network_scope
- network_code

fields:
- communication_network_id
- network_scope
- network_code
- network_status
- network_class
- territory_scope
- controlling_authority_scope
- created_at
- updated_at

network_status_enum:
- active
- degraded
- impaired
- offline
- archived

truth_boundary:
Communication network truth belongs to CivilizationOS infrastructure domain.
