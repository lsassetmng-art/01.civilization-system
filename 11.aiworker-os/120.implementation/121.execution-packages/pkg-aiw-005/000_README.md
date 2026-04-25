# ============================================================
# PKG-AIW-005 README
# ============================================================

status: execution-package
package_code: PKG-AIW-005
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for replay, recovery, and acceptance-support realization in AiworkerOS.

package_contents:
- 001_create_replay_recovery_acceptance_support_tables.sql
- 002_create_replay_and_recovery_helper_functions.sql
- 003_create_replay_decision_and_redelivery_functions.sql
- 004_create_acceptance_support_functions_and_seed.sql
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
- PKG-AIW-001 should already be applied
- PKG-AIW-002 should already be applied
- PKG-AIW-003 is recommended because payload hash resolution uses payload storage if present
- PKG-AIW-004 is recommended because later operational access will rely on security packaging

implemented_scope:
- request lineage registry
- replay decision logging
- replay decision function
- redelivery helper
- recovery incident logging
- acceptance test case catalog
- acceptance test execution logging

non_scope:
- direct remutation on replay
- cx22073jw objects
- release orchestration
