# ============================================================
# SPEED EXPERIENCE PHYSICAL DDL IMPLEMENTATION
# ============================================================

status: canonical-draft
layer: implementation
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for speed-experience physical DDL.

implementation_units:
- speed_physical_schema_migration
- speed_core_table_creator
- speed_audit_table_creator
- speed_notification_table_creator
- speed_index_creator

implementation_rules:
- migration order must preserve dependency readability
- dependent-table indexes must be created explicitly
- JSON columns must not replace searchable summary columns
- promotion linkage must remain joinable
