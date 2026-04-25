# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-001 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-001/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-001/001_create_schema_and_code_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-001/002_create_core_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-001/003_create_indexes_and_constraints.sql
- 120.implementation/121.execution-packages/pkg-aiw-001/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-001/998_ENVIRONMENT_VARIABLE_CORRECTION_NOTE.md

purpose:
Creates the first review-ready executable migration bundle for AiworkerOS canonical foundation.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL
