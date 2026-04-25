# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-009 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-009/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-009/001_create_business_event_contract_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/002_create_business_event_contract_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/003_create_business_event_contract_smoke_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/004_create_business_event_contract_views.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-009/910_run_business_event_contract_smoke.sh
- 120.implementation/121.execution-packages/pkg-aiw-009/920_verify_business_event_contract_state.sh
- 120.implementation/121.execution-packages/pkg-aiw-009/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable BusinessOS event contract validation package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-008 should be applied before this package
