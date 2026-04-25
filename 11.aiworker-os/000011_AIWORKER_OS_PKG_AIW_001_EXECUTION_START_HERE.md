# ============================================================
# AIWORKER OS PKG-AIW-001 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-001.
It packages the first executable migration bundle for AiworkerOS canonical foundation.

package_scope:
- aiworker schema creation
- code tables and minimum seed set
- canonical core tables
- indexes and guarded constraints
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-001/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-001/001_create_schema_and_code_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-001/002_create_core_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-001/003_create_indexes_and_constraints.sql
- 120.implementation/121.execution-packages/pkg-aiw-001/901_apply_template_with_persona_database_url.sh
