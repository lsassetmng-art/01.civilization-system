# ============================================================
# AIWORKER OS PKG-AIW-003 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-003.
It packages the payload validation and schema-catalog execution foundation for AiworkerOS.

package_scope:
- payload schema catalog
- payload document storage
- validation helper functions
- payload-specific validator functions
- result summary mapping helper functions
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-003/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-003/001_create_payload_catalog_and_storage.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/002_create_payload_validation_helpers.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/003_create_payload_validation_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/004_create_result_summary_mapping_helpers.sql
- 120.implementation/121.execution-packages/pkg-aiw-003/901_apply_template_with_persona_database_url.sh
