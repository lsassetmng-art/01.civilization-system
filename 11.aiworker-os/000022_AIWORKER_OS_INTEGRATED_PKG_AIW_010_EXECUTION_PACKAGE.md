# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-010 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-010/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-010/001_create_restricted_privileged_smoke_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/002_seed_restricted_privileged_smoke_state.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/003_create_restricted_privileged_smoke_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/004_create_restricted_privileged_smoke_views.sql
- 120.implementation/121.execution-packages/pkg-aiw-010/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/910_run_privileged_context_smoke.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/920_run_restricted_boundary_smoke.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/930_verify_restricted_privileged_smoke_state.sh
- 120.implementation/121.execution-packages/pkg-aiw-010/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable restricted and privileged scenario smoke package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-009 should be applied before this package
