# ============================================================
# CIVILIZATION PRODUCTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical production record model.

model_type:
- operational truth model

primary_key:
- production_record_id

natural_key:
- nation_id
- production_scope
- production_ref

fields:
- production_record_id
- nation_id
- production_scope
- production_ref
- production_status
- output_code
- output_quantity
- source_lineage
- source_state_version
- produced_at
- created_at
- updated_at

production_status_enum:
- planned
- in_progress
- completed
- failed
- cancelled

truth_boundary:
Production record truth belongs to CivilizationOS operational statecraft domain.
