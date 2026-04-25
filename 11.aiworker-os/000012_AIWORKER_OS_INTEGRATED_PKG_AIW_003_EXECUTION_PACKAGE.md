# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-003 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-003/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-003/001_create_payload_catalog_and_storage.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/002_create_payload_validation_helpers.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/003_create_payload_validation_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/004_create_result_summary_mapping_helpers.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-003/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable payload validation and schema-catalog package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 should be applied before this package
