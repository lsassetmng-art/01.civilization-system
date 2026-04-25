# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-008 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-008/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-008/001_create_smoke_seed_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/002_seed_smoke_reference_and_workers.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/003_seed_smoke_payloads_and_intake.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/004_create_smoke_flow_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-008/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-008/910_run_smoke_flow_assignment_apply.sh
- 120.implementation/121.execution-packages/pkg-aiw-008/920_run_smoke_flow_replay_redelivery.sh
- 120.implementation/121.execution-packages/pkg-aiw-008/930_verify_smoke_seed_state.sh
- 120.implementation/121.execution-packages/pkg-aiw-008/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable smoke seed-data and smoke-flow package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-007 should be applied before this package
