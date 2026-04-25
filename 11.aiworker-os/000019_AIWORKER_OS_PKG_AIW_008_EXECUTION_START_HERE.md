# ============================================================
# AIWORKER OS PKG-AIW-008 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-008.
It packages smoke seed data and smoke flow support for AiworkerOS.

package_scope:
- smoke seed support tables
- smoke reference and worker seed data
- smoke payload and intake seed data
- smoke flow helper functions
- review-ready apply template
- smoke flow execution scripts

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-008/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-008/001_create_smoke_seed_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/002_seed_smoke_reference_and_workers.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/003_seed_smoke_payloads_and_intake.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/004_create_smoke_flow_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-008/910_run_smoke_flow_assignment_apply.sh
- 120.implementation/121.execution-packages/pkg-aiw-008/920_run_smoke_flow_replay_redelivery.sh
