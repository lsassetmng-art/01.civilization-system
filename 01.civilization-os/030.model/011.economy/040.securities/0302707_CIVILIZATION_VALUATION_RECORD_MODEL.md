# ============================================================
# CIVILIZATION VALUATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical valuation record model.

model_type:
- capital assessment truth model

primary_key:
- valuation_record_id

natural_key:
- valuation_scope
- valuation_ref
- valuation_window

fields:
- valuation_record_id
- valuation_scope
- valuation_ref
- valuation_window
- valuation_status
- target_entity_scope
- valuation_value
- valuation_method
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

valuation_status_enum:
- draft
- issued
- superseded
- invalidated
- archived

truth_boundary:
Valuation-record truth belongs to CivilizationOS capital-markets domain.
