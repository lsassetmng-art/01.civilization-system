# ============================================================
# CIVILIZATION MIGRATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical migration record model.

model_type:
- population movement truth model

primary_key:
- migration_record_id

natural_key:
- migration_ref
- source_scope
- target_scope

fields:
- migration_record_id
- migration_ref
- source_scope
- target_scope
- migration_status
- migration_type
- migrated_population_value
- source_state_version
- correlation_id
- moved_at
- created_at
- updated_at

migration_status_enum:
- pending
- approved
- completed
- rejected
- reversed
- archived

truth_boundary:
Migration record truth belongs to CivilizationOS population movement domain.
