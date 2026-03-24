# ============================================================
# CIVILIZATION LIQUIDATION EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical liquidation event model.

model_type:
- terminal capital truth model

primary_key:
- liquidation_event_id

natural_key:
- liquidation_scope
- liquidation_ref
- correlation_id

fields:
- liquidation_event_id
- liquidation_scope
- liquidation_ref
- correlation_id
- liquidation_status
- target_entity_scope
- liquidation_summary
- source_state_version
- occurred_at
- created_at
- updated_at

liquidation_status_enum:
- proposed
- approved
- active
- completed
- reversed
- archived

truth_boundary:
Liquidation-event truth belongs to CivilizationOS capital-markets domain.
