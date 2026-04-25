# ============================================================
# PKG-AIW-003 README
# ============================================================

status: execution-package
package_code: PKG-AIW-003
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for payload validation and schema-catalog realization in AiworkerOS.

package_contents:
- 001_create_payload_catalog_and_storage.sql
- 002_create_payload_validation_helpers.sql
- 003_create_payload_validation_functions.sql
- 004_create_result_summary_mapping_helpers.sql
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
- PKG-AIW-001 canonical foundation should already be applied
- applying after PKG-AIW-002 is recommended, but not required for catalog creation

implemented_scope:
- payload schema catalog
- payload document storage
- validator helpers
- validator dispatch by schema name
- payload store helper
- result_code to summary_code / summary_band helpers

non_scope:
- cx22073jw objects
- raw-table grants
- direct mutation of worker truth
