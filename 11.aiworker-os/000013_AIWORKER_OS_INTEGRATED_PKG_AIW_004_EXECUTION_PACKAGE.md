# ============================================================
# AIWORKER OS INTEGRATED PKG-AIW-004 EXECUTION PACKAGE
# ============================================================

status: integrated
system: AiworkerOS
owner: Boss
prepared_by: Zero

package_files:
- 120.implementation/121.execution-packages/pkg-aiw-004/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-004/001_create_roles_and_precheck.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/002_create_rls_helper_functions_and_enable_rls.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/003_create_rls_policies.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/004_create_grants_and_execution_permissions.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-004/998_PACKAGE_SCOPE_NOTE.md

purpose:
Creates the review-ready executable roles, grants, and RLS package for AiworkerOS.

apply_note:
This bundle does not auto-apply to the database in this generation step.
Use the canonical apply template only after DB environment binding and 佐藤(DB担当) review.

db_environment_rule:
- Persona-side DB work uses PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 and PKG-AIW-002 should be applied before this package
