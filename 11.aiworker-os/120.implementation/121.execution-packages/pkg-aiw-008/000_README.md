# ============================================================
# PKG-AIW-008 README
# ============================================================

status: execution-package
package_code: PKG-AIW-008
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for smoke seed data and smoke flow realization in AiworkerOS.

package_contents:
- 001_create_smoke_seed_support_tables.sql
- 002_seed_smoke_reference_and_workers.sql
- 003_seed_smoke_payloads_and_intake.sql
- 004_create_smoke_flow_helper_functions.sql
- 901_apply_template_with_persona_database_url.sh
- 910_run_smoke_flow_assignment_apply.sh
- 920_run_smoke_flow_replay_redelivery.sh
- 930_verify_smoke_seed_state.sh
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
- PKG-AIW-001 through PKG-AIW-007 should already be applied
- payload catalog and replay helpers are reused from prior packages

implemented_scope:
- smoke-only seed registry
- smoke-only flow execution log
- smoke developer company and style policy
- smoke worker seed set
- smoke payload documents
- smoke command/draft/staging/intake seed set
- smoke apply flow script
- smoke replay/redelivery script
