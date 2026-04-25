# ============================================================
# PKG-AIW-004 README
# ============================================================

status: execution-package
package_code: PKG-AIW-004
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for roles, grants, and RLS realization in AiworkerOS.

package_contents:
- 001_create_roles_and_precheck.sql
- 002_create_rls_helper_functions_and_enable_rls.sql
- 003_create_rls_policies.sql
- 004_create_grants_and_execution_permissions.sql
- 901_apply_template_with_persona_database_url.sh
- 998_PACKAGE_SCOPE_NOTE.md

execution_policy:
- additive only
- review with 佐藤(DB担当) before DB apply
- no destructive SQL
- no hidden prerequisites
- no raw-table grant widening for AI worker runtime actors
- no cx22073jw implementation in this package
- DB environment variable is PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 should already be applied
- PKG-AIW-002 should already be applied
- PKG-AIW-003 is recommended before this package

implemented_scope:
- runtime role creation
- deny-by-default raw-table posture
- narrow grant realization
- tenant-sensitive RLS direction
- event delivery narrowing
- restricted / privileged reviewer separation

non_scope:
- cx22073jw grants
- destructive revoke sweep
- release-time production hardening beyond current exact design
