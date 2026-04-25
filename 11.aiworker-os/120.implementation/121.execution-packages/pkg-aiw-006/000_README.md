# ============================================================
# PKG-AIW-006 README
# ============================================================

status: execution-package
package_code: PKG-AIW-006
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for acceptance execution and verification runbook realization in AiworkerOS.

package_contents:
- 001_create_acceptance_verification_support_tables.sql
- 002_create_acceptance_verification_helper_functions.sql
- 003_create_acceptance_verification_runbook_functions.sql
- 004_seed_acceptance_verification_catalog.sql
- 901_apply_template_with_persona_database_url.sh
- 998_PACKAGE_SCOPE_NOTE.md

execution_policy:
- additive only
- review with 佐藤(DB担当) before DB apply
- no destructive SQL
- no hidden prerequisites
- no raw-table grant widening
- no cx22073jw implementation in this package
- DB environment variable is PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-005 should already be applied
- PKG-AIW-002 is required because batch opening uses aiworker.fn_generate_uuid()
- acceptance test case catalog from PKG-AIW-005 is reused here

implemented_scope:
- acceptance execution batch
- verification item catalog
- verification result logging
- runbook phase logging
- batch-level finalization and status computation

non_scope:
- cx22073jw objects
- automatic release orchestration
- external track validation
