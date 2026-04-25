# ============================================================
# AIWORKER OS PKG-AIW-010 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-010.
It packages restricted and privileged scenario smoke expansion for AiworkerOS.

package_scope:
- restricted / privileged smoke support tables
- privileged smoke payload and intake seed
- restricted / privileged smoke helper functions
- restricted / privileged smoke summary view
- review-ready apply template
- smoke execution scripts

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-010/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-010/001_create_restricted_privileged_smoke_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/002_seed_restricted_privileged_smoke_state.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/003_create_restricted_privileged_smoke_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/004_create_restricted_privileged_smoke_views.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/910_run_privileged_context_smoke.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/920_run_restricted_boundary_smoke.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/930_verify_restricted_privileged_smoke_state.sh
