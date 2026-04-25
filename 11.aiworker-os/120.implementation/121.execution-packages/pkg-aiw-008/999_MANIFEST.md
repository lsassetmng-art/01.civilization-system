# ============================================================
# PKG-AIW-008 MANIFEST
# ============================================================

status: generated
package_code: PKG-AIW-008
system: AiworkerOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_151531

files:
- 000_README.md
- 001_create_smoke_seed_support_tables.sql
- 002_seed_smoke_reference_and_workers.sql
- 003_seed_smoke_payloads_and_intake.sql
- 004_create_smoke_flow_helper_functions.sql
- 901_apply_template_with_persona_database_url.sh
- 910_run_smoke_flow_assignment_apply.sh
- 920_run_smoke_flow_replay_redelivery.sh
- 930_verify_smoke_seed_state.sh
- 998_PACKAGE_SCOPE_NOTE.md
