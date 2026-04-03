# ============================================================
# CIVILIZATION WAREHOUSE_RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical warehouse record model.

model_type:
- storage truth model

primary_key:
- warehouse_record_id

natural_key:
- warehouse_scope
- warehouse_code

fields:
- warehouse_record_id
- warehouse_scope
- warehouse_code
- warehouse_status
- territory_code
- storage_class
- capacity_value
- created_at
- updated_at

warehouse_status_enum:
- active
- constrained
- offline
- closed
- archived

truth_boundary:
Warehouse truth belongs to CivilizationOS supply-production domain.
