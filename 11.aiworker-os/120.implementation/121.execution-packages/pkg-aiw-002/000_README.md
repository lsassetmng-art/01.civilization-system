# ============================================================
# PKG-AIW-002 README
# ============================================================

status: execution-package
package_code: PKG-AIW-002
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for the controlled-function execution foundation of AiworkerOS.

package_contents:
- 001_create_support_tables.sql
- 002_create_helper_functions.sql
- 003_create_controlled_functions_core_state.sql
- 004_create_controlled_functions_extended.sql
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
- PKG-AIW-001 canonical foundation must be applied first
- PKG-AIW-002 assumes aiworker schema and core tables already exist

implemented_function_scope:
- fn_apply_worker_assignment_state
- fn_apply_worker_availability_state
- fn_apply_worker_repair_transition
- fn_apply_worker_rebuild_transition
- fn_apply_worker_growth_event
- fn_apply_worker_privileged_context_change
- fn_record_business_result_correlation

fail_closed_stub_scope:
- fn_apply_worker_tendency_update
