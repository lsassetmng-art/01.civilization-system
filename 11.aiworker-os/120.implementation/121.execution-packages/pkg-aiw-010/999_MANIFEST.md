# ============================================================
# PKG-AIW-010 MANIFEST
# ============================================================

status: generated
package_code: PKG-AIW-010
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_172636

files:
- 000_README.md
- 001_create_restricted_privileged_smoke_support_tables.sql
- 002_seed_restricted_privileged_smoke_state.sql
- 003_create_restricted_privileged_smoke_functions.sql
- 004_create_restricted_privileged_smoke_views.sql
- 901_apply_template_with_persona_database_url.sh
- 910_run_privileged_context_smoke.sh
- 920_run_restricted_boundary_smoke.sh
- 930_verify_restricted_privileged_smoke_state.sh
- 998_PACKAGE_SCOPE_NOTE.md
