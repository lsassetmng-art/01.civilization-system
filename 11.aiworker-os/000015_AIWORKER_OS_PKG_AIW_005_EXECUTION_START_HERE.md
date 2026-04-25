# ============================================================
# AIWORKER OS PKG-AIW-005 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-005.
It packages replay, recovery, and acceptance-support execution material for AiworkerOS.

package_scope:
- request lineage registry
- replay decision log
- recovery incident and execution logs
- acceptance test case and execution logs
- replay helper and decision functions
- redelivery helper functions
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-005/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-005/001_create_replay_recovery_acceptance_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/002_create_replay_and_recovery_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/003_create_replay_decision_and_redelivery_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/004_create_acceptance_support_functions_and_seed.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/901_apply_template_with_persona_database_url.sh
