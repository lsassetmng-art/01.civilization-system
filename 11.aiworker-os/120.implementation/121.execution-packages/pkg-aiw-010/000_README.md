# ============================================================
# PKG-AIW-010 README
# ============================================================

status: execution-package
package_code: PKG-AIW-010
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for restricted and privileged scenario smoke expansion in AiworkerOS.

package_contents:
- 001_create_restricted_privileged_smoke_support_tables.sql
- 002_seed_restricted_privileged_smoke_state.sql
- 003_create_restricted_privileged_smoke_functions.sql
- 004_create_restricted_privileged_smoke_views.sql
- 901_apply_template_with_persona_database_url.sh
- 910_run_privileged_context_smoke.sh
- 920_run_restricted_boundary_smoke.sh
- 930_verify_restricted_privileged_smoke_state.sh
- 998_PACKAGE_SCOPE_NOTE.md

execution_policy:
- additive only
- review with 佐藤(DB担当) before DB apply
- no destructive SQL outside bounded smoke-only reset behavior
- no hidden prerequisites
- no raw-table grant widening
- no cx22073jw implementation in this package
- DB environment variable is PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-009 should already be applied
- privileged path reuses fn_apply_worker_privileged_context_change
- boundary smoke reuses grant / policy state from PKG-AIW-004
- smoke worker seeds from PKG-AIW-008 are reused

implemented_scope:
- privileged controlled-function smoke
- restricted reviewer separation smoke
- fixed-ID repeatable seed state
- latest smoke summary view
