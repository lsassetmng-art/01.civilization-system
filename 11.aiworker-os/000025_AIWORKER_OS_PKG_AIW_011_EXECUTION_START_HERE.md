# ============================================================
# AIWORKER OS PKG-AIW-011 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-011.
It packages formal acceptance batch execution support for AiworkerOS.

package_scope:
- acceptance batch runner support tables
- acceptance batch runner functions
- acceptance batch runner summary views
- review-ready apply template
- acceptance batch execution script
- acceptance batch verification script

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-011/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-011/001_create_acceptance_batch_runner_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-011/002_create_acceptance_batch_runner_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-011/003_create_acceptance_batch_runner_views.sql
- 120.implementation/121.execution-packages/pkg-aiw-011/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-011/910_run_acceptance_batch.sh
- 120.implementation/121.execution-packages/pkg-aiw-011/920_verify_acceptance_batch_state.sh
