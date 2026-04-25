# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-006 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-006/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-006/001_create_acceptance_verification_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/002_create_acceptance_verification_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/003_create_acceptance_verification_runbook_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/004_seed_acceptance_verification_catalog.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-006/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable acceptance execution and verification runbook package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-005 should be applied before this package
