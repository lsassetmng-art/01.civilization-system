# ============================================================
# APP DEVELOPMENT STUDIO WS-DB START PACK
# ============================================================

status: canonical-draft
layer: meta
system: applications
application: App Development Studio
workstream: WS-DB
owner: Boss
prepared_by: Zero

purpose:
Provides the minimum reading pack before WS-DB implementation start.

reading_order:
- 9999_APP_DEVELOPMENT_STUDIO_COMPLETION_REPORT.md
- 120.implementation/120_APP_DEVELOPMENT_STUDIO_IMPLEMENTATION_TASK_LEDGER.md
- 120.implementation/120_APP_DEVELOPMENT_STUDIO_IMPLEMENTATION_WORKSTREAM_BREAKDOWN.md
- 120.implementation/120_APP_DEVELOPMENT_STUDIO_WS_DB_START_LEDGER.md
- 120.implementation/120_APP_DEVELOPMENT_STUDIO_WS_DB_MIGRATION_ORDER.md
- 030.model/030_SPEED_EXPERIENCE_PHYSICAL_SCHEMA_OVERVIEW.md
- 030.model/030_SPEED_EXPERIENCE_PHYSICAL_SCHEMA_CORE_TABLES.md
- 030.model/030_SPEED_EXPERIENCE_PHYSICAL_SCHEMA_AUDIT_TABLES.md
- 030.model/030_SPEED_EXPERIENCE_PHYSICAL_DDL_SPEC.md
- 2000_APP_DEVELOPMENT_STUDIO_MVP_DB_DDL.sql
- 2001_APP_DEVELOPMENT_STUDIO_SPEED_EXPERIENCE_DDL.sql
- 130.development/130_APP_DEVELOPMENT_STUDIO_WS_DB_VERIFICATION_GUIDE.md

start_rule:
WS-DB should begin from frozen design inputs
and should not reopen completed schema meanings casually.
