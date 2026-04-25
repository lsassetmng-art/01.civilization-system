# ============================================================
# AIWORKER OS PKG-AIW-002 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-002.
It packages the controlled-function execution foundation for AiworkerOS.

package_scope:
- support tables for transition rules and result correlation
- helper functions
- core controlled functions
- extended controlled functions
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-002/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-002/001_create_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/002_create_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/003_create_controlled_functions_core_state.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/004_create_controlled_functions_extended.sql
- 120.implementation/121.execution-packages/pkg-aiw-002/901_apply_template_with_persona_database_url.sh
