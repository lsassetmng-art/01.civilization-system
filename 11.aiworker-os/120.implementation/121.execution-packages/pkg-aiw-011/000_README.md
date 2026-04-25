# ============================================================
# PKG-AIW-011 README
# ============================================================

status: execution-package
package_code: PKG-AIW-011
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for formal acceptance batch execution in AiworkerOS.

package_contents:
- 001_create_acceptance_batch_runner_support_tables.sql
- 002_create_acceptance_batch_runner_functions.sql
- 003_create_acceptance_batch_runner_views.sql
- 901_apply_template_with_persona_database_url.sh
- 910_run_acceptance_batch.sh
- 920_verify_acceptance_batch_state.sh
- 998_PACKAGE_SCOPE_NOTE.md

execution_policy:
- additive only
- review with 佐藤(DB担当) before DB apply
- no destructive SQL outside bounded acceptance evidence generation
- no hidden prerequisites
- no raw-table grant widening
- no cx22073jw implementation in this package
- DB environment variable is PERSONA_DATABASE_URL

dependency_note:
- PKG-AIW-001 through PKG-AIW-010 should already be applied
- acceptance catalog and verification items from PKG-AIW-005 / 006 are reused
- replay / recovery helpers from PKG-AIW-005 are reused
- smoke evidence from PKG-AIW-008 / 009 / 010 is reused

implemented_scope:
- formal acceptance batch execution
- per-check runner log
- batch-level finalization
- latest batch summary view
- latest verification result summary view
