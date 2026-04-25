# ============================================================
# AIWORKER OS PKG-AIW-009 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-009.
It packages BusinessOS event contract validation and cross-boundary smoke support for AiworkerOS.

package_scope:
- business event contract registry
- business event validation logs
- business cross-boundary smoke logs
- contract validation helper functions
- contract smoke helper functions
- contract registry summary views
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-009/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-009/001_create_business_event_contract_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/002_create_business_event_contract_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/003_create_business_event_contract_smoke_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/004_create_business_event_contract_views.sql
- 120.implementation/121.execution-packages/pkg-aiw-009/901_apply_template_with_persona_database_url.sh
- 120.implementation/121.execution-packages/pkg-aiw-009/910_run_business_event_contract_smoke.sh
- 120.implementation/121.execution-packages/pkg-aiw-009/920_verify_business_event_contract_state.sh
