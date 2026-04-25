# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-005 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-005/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-005/001_create_replay_recovery_acceptance_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/002_create_replay_and_recovery_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/003_create_replay_decision_and_redelivery_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/004_create_acceptance_support_functions_and_seed.sql
- 120.implementation/121.execution-packages/pkg-aiw-005/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-005/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable replay, recovery, and acceptance-support package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 and PKG-AIW-002 should be applied before this package
