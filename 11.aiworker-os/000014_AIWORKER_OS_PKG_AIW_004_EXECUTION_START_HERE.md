# ============================================================
# AIWORKER OS PKG-AIW-004 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-004.
It packages the roles, grants, and RLS execution foundation for AiworkerOS.

package_scope:
- runtime role creation
- dependency precheck
- RLS helper functions
- RLS policy creation
- grant matrix realization
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-004/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-004/001_create_roles_and_precheck.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/002_create_rls_helper_functions_and_enable_rls.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/003_create_rls_policies.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/004_create_grants_and_execution_permissions.sql
- 120.implementation/121.execution-packages/pkg-aiw-004/901_apply_template_with_persona_database_url.sh
