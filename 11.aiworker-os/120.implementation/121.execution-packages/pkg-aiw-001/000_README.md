# ============================================================
# PKG-AIW-001 README
# ============================================================

status: execution-package
package_code: PKG-AIW-001
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
Executable packaging for the first canonical database foundation of AiworkerOS.

package_contents:
- 001_create_schema_and_code_tables.sql
- 002_create_core_tables.sql
- 003_create_indexes_and_constraints.sql
- 901_apply_template_with_persona_database_url.sh
- 998_ENVIRONMENT_VARIABLE_CORRECTION_NOTE.md

execution_policy:
- additive only
- review with 佐藤(DB担当) before DB apply
- no destructive SQL
- no hidden prerequisites
- no raw-table grant widening
- no cx22073jw implementation in this package
- DB environment variable is PERSONA_DATABASE_URL

expected_result:
- aiworker schema exists
- code tables exist
- minimum seed families exist
- core canonical tables exist
- indexes and guarded constraints exist
