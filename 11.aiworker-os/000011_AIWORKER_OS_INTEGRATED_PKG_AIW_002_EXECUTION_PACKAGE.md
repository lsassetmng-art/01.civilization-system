# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-002 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-002/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-002/001_create_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/002_create_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/003_create_controlled_functions_core_state.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/004_create_controlled_functions_extended.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-002/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable controlled-function package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 must be applied before this package
