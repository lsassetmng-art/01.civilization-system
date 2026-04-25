# ============================================================
# LIFE OS VERIFY AND ACCEPTANCE RUNNER EXACT DESIGN
# ============================================================

status: canonical
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
document_id: 925170
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Freeze the exact verification and acceptance runner for LifeOS.
- Define what must be proven after bootstrap, migration, and rebuild.
- Convert build-order acceptance gates into a deterministic runner contract.

database_connection_rule:
- verify runner uses PERSONA_DATABASE_URL for Persona-side DB verification
- filesystem verification uses canonical LifeOS root
- ERP verification is out of scope unless separately declared

# ============================================================
# 1. VERIFY RUNNER MISSION
# ============================================================

mission:
- prove canonical folder structure integrity
- prove required database floor exists
- prove migration registry integrity
- prove rebuild artifacts are aligned with canonical sources
- prove selected acceptance scenarios pass without hidden mutation

non_scope:
- performance benchmarking at full scale
- manual UI review
- data repair
- destructive test cleanup outside dedicated sandbox

# ============================================================
# 2. VERIFICATION LAYERS
# ============================================================

verification_layers:
- filesystem_structure_verification
- document_reference_verification
- database_shape_verification
- migration_registry_verification
- projection_rebuild_verification
- acceptance_scenario_verification

filesystem_structure_verification:
- root canonical directories exist
- 920.meta exists
- 925.implementation-ready-freeze exists
- no deprecated live 900.meta under root
- required integrated file exists

document_reference_verification:
- root index points to canonical 920.meta paths
- integrated rebuilt file embeds approved source markers
- no duplicate freeze references in index files
- archive paths are not treated as live canonical refs

database_shape_verification:
- required bootstrap tables exist
- required cluster tables exist after migration
- common columns pattern present on approved tables
- operator-only tables not exposed as user-facing tables

migration_registry_verification:
- registry tables readable
- applied migrations are unique
- checksum fields populated
- lock table not left in invalid stuck state

projection_rebuild_verification:
- rebuild outputs reproducible from source tables
- projection store loss is recoverable
- alert center and analytics projections refreshable
- household-safe feed projection obeys privacy boundary

acceptance_scenario_verification:
- daily check-in write path accepted
- validation errors surface deterministically
- masked data remains masked by default
- correction request creates auditable trail
- import inbox/outbox rows are duplicate-safe

# ============================================================
# 3. REQUIRED ACCEPTANCE CASES
# ============================================================

acceptance_cases:
- case_001_bootstrap_floor_exists
- case_002_registry_writes_and_reads
- case_003_core_profile_and_preference_tables_exist
- case_004_health_and_meal_fact_tables_exist
- case_005_signal_tables_do_not_replace_raw_facts
- case_006_daily_checkin_path_contract_exists
- case_007_alert_retry_dead_letter_tables_exist
- case_008_persona_projection_outbox_exists
- case_009_root_index_points_to_920_meta
- case_010_integrated_rebuilt_has_expected_source_markers
- case_011_policy_baseline_exists
- case_012_no_live_root_900_meta_exists

case_result_fields:
- case_code
- result_status
- checked_at
- evidence_ref
- failure_reason nullable

# ============================================================
# 4. QUERY AND CHECK CONTRACT
# ============================================================

query_types:
- information_schema table existence query
- required column existence query
- row-level baseline existence query
- markdown grep verification
- line-count sanity query
- marker count verification

query_policy:
- verification queries must be read-only in normal mode
- smoke-test insert/update allowed only in isolated sandbox mode
- every query must emit a machine-readable status line

recommended_status_line:
- PASS|case_code|evidence
- FAIL|case_code|reason
- WARN|case_code|reason

# ============================================================
# 5. ACCEPTANCE GATES
# ============================================================

gate_green_requires:
- all critical cases PASS
- no hard FAIL on bootstrap floor
- no hard FAIL on migration registry
- no hard FAIL on canonical path normalization

gate_yellow_conditions:
- non-critical documentation duplication remains
- advisory warning on archive references
- performance note without correctness failure

gate_red_conditions:
- PERSONA_DATABASE_URL missing
- missing core table cluster
- failed migration registry integrity
- integrated rebuilt references deprecated live path
- deprecated root 900.meta still exists
- masked/unmasked rule cannot be enforced

# ============================================================
# 6. EVIDENCE OUTPUTS
# ============================================================

mandatory_outputs:
- verify_report.md
- verify_case_results.tsv
- failed_case_list.txt
- environment_summary.md
- acceptance_gate_status.txt

environment_summary_fields:
- actor_code
- executed_at
- root_path
- db_target persona
- db_env_var PERSONA_DATABASE_URL
- integrated_file_path
- result_gate

# ============================================================
# 7. RUNNER EXECUTION ORDER
# ============================================================

execution_order:
1. print roadmap and current position
2. verify filesystem shape
3. verify canonical document references
4. verify bootstrap floor and migration registry
5. verify cluster table existence
6. verify rebuild artifacts
7. run acceptance cases
8. compute gate status
9. write evidence outputs
10. return exit code

exit_code_policy:
- 0 when gate_green
- 1 when gate_red
- 2 when prerequisite validation fails
- 3 when only advisory warnings remain and operator review is required

# ============================================================
# 8. TERMUX GENERATION PREP
# ============================================================

termux_rules:
- one-block output
- absolute paths only
- use $HOME/.tmp for temporary files
- use psql "$PERSONA_DATABASE_URL" <<'SQL' for read checks
- use grep with -- when patterns begin with '-'
- never rely on bash history expansion-sensitive text without set +H

important_shell_safety_notes:
- disable history expansion when embedding markup like <!-- -->
- use grep -- for hyphen-leading fixed-string patterns
- emit exact failing command context in report

# ============================================================
# 9. ACCEPTANCE GATE FOR THIS DOCUMENT
# ============================================================

this_document_is_complete_when:
- verification layers are fixed
- acceptance cases are fixed
- evidence outputs are fixed
- later Termux verify runner can be generated without policy drift

final_position:
- LifeOS verify and acceptance execution policy is fixed.
- DB build preparation now has a deterministic proof target.
