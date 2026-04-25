# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-011 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-011/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-011/001_create_acceptance_batch_runner_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-011/002_create_acceptance_batch_runner_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-011/003_create_acceptance_batch_runner_views.sql
- 120.implementation/121.execution-packages/pkg-aiw-011/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-011/910_run_acceptance_batch.sh
- 120.implementation/121.execution-packages/pkg-aiw-011/920_verify_acceptance_batch_state.sh
- 120.implementation/121.execution-packages/pkg-aiw-011/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable formal acceptance batch package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-010 should be applied before this package
