# ============================================================
# PKG-AIW-009 README
# ============================================================

status: execution-package
package_code: PKG-AIW-009
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for BusinessOS event contract validation and cross-boundary smoke support in AiworkerOS.

package_contents:
- 001_create_business_event_contract_support_tables.sql
- 002_create_business_event_contract_helper_functions.sql
- 003_create_business_event_contract_smoke_functions.sql
- 004_create_business_event_contract_views.sql
- 901_apply_template_with_persona_database_url.sh
- 910_run_business_event_contract_smoke.sh
- 920_verify_business_event_contract_state.sh
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
- PKG-AIW-001 through PKG-AIW-008 should already be applied
- payload validation helpers from PKG-AIW-003 are reused
- smoke payload storage from PKG-AIW-008 may coexist with the contract smoke payloads

implemented_scope:
- inbound BusinessOS request contract registry
- outbound AiworkerOS result contract registry
- payload-ref-based contract validation
- contract validation evidence logging
- cross-boundary smoke logging
- registry and latest-validation summary views

non_scope:
- BusinessOS internal app implementation
- cx22073jw objects
- production transport wiring
