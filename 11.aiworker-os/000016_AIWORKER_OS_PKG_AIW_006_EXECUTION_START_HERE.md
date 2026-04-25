# ============================================================
# AIWORKER OS PKG-AIW-006 EXECUTION START HERE
# ============================================================

status: execution-package
system: AiworkerOS
owner: Boss
prepared_by: Zero

purpose:
This file is the entry point for PKG-AIW-006.
It packages acceptance execution and verification runbook support for AiworkerOS.

package_scope:
- acceptance execution batch support
- verification item support
- verification result support
- runbook logging support
- acceptance execution helper functions
- verification finalize helper functions
- review-ready apply template

explicit_note:
This package does not auto-apply to a database.
It generates the executable files and a canonical apply template that expects
PERSONA_DATABASE_URL to be set later.

recommended_read_order:
- 120.implementation/121.execution-packages/pkg-aiw-006/000_README.md
- 120.implementation/121.execution-packages/pkg-aiw-006/001_create_acceptance_verification_support_tables.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/002_create_acceptance_verification_helper_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/003_create_acceptance_verification_runbook_functions.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/004_seed_acceptance_verification_catalog.sql
- 120.implementation/121.execution-packages/pkg-aiw-006/901_apply_template_with_persona_database_url.sh
