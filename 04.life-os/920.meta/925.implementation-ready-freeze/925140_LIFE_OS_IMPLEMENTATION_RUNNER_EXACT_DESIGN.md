# ============================================================
# LIFE OS IMPLEMENTATION RUNNER EXACT DESIGN
# ============================================================

status: canonical
system: life-os
layer: 920.meta
subfolder: 925.implementation-ready-freeze
document_id: 925140
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Freeze the exact runner responsibilities needed to move LifeOS
  from implementation-ready design into execution-ready preparation.
- Separate application runner concerns from database migration,
  bootstrap, and verification concerns.
- Define the command contract that later Termux one-block runners
  must follow.

position_in_roadmap:
- current_phase: design-finalization-before-execution
- next_phase: termux-runner-generation-after-review
- dependency:
  - 925100_LIFE_OS_IMPLEMENTATION_READY_MASTER_DESIGN.md
  - 925110_LIFE_OS_IMPLEMENTATION_READY_PASS2_DOMAIN_DATA_AND_FLOW.md
  - 925120_LIFE_OS_IMPLEMENTATION_READY_PASS3_REVIEW_INTELLIGENCE_AND_OPS.md
  - 925130_LIFE_OS_IMPLEMENTATION_READY_PASS4_INTERFACE_IMPLEMENTATION_AND_FINALIZATION.md

hard_environment_rule:
- Persona-side DB work must use PERSONA_DATABASE_URL.
- ERP-side DB work must use DATABASE_URL.
- LifeOS bootstrap, migration, verification, and rebuild work are treated
  as Persona-side DB work unless an explicit ERP bridge step is declared.

# ============================================================
# 1. RUNNER FAMILY MAP
# ============================================================

runner_families:
- implementation_runner
- db_migration_runner
- db_bootstrap_runner
- verify_acceptance_runner

separation_rule:
- implementation_runner must never directly invent schema changes.
- db_migration_runner is the only runner allowed to apply versioned DDL.
- db_bootstrap_runner may create schemas, common functions, seed baselines,
  and registry scaffolding only when declared in approved DDL bundles.
- verify_acceptance_runner is read-only except for temporary test data
  created inside an explicit verification sandbox.

# ============================================================
# 2. IMPLEMENTATION RUNNER SCOPE
# ============================================================

scope:
- generate or apply filesystem-level implementation scaffolding
- register module ownership
- materialize non-destructive canonical files
- rebuild derived integrated markdown after approved source changes
- invoke projection rebuild jobs only after migration success
- invoke verification runner after execution success

explicit_non_scope:
- ad hoc SQL execution
- destructive cleanup
- schema drift repair by guesswork
- implicit cross-OS writes
- ERP transmission side effects unless a separate approved bridge runner exists

# ============================================================
# 3. CANONICAL INPUT CONTRACT
# ============================================================

required_inputs:
- life_os_root_path
- runner_mode
- approved_document_bundle
- execution_timestamp
- actor_code
- correlation_id

runner_mode_values:
- plan_only
- apply_filesystem_only
- apply_after_db_ready
- rebuild_integrated_only
- verify_only

approved_document_bundle:
- 925100 implementation-ready master
- 925110 domain data and flow exactness
- 925120 review/intelligence/ops exactness
- 925130 interface/implementation/finalization
- 925140 implementation runner exact design
- 925150 db migration runner exact design
- 925160 db bootstrap and ddl exact design
- 925170 verify and acceptance runner exact design

preconditions:
- canonical folder structure already normalized
- live root must not contain deprecated 900.meta
- 920.meta/925.implementation-ready-freeze must exist
- PERSONA_DATABASE_URL must be present for any db-touching mode

# ============================================================
# 4. OUTPUT CONTRACT
# ============================================================

mandatory_outputs:
- execution summary markdown
- execution audit log file
- generated runner manifest
- target file list
- success/failure exit code

exit_code_policy:
- 0: complete success
- 1: hard failure requiring operator action
- 2: validation failure before execution
- 3: partial execution stopped before acceptance

runner_manifest_fields:
- runner_name
- runner_mode
- actor_code
- started_at
- finished_at
- source_documents
- touched_paths
- db_touched boolean
- verify_invoked boolean
- result_status
- failure_reason nullable

# ============================================================
# 5. IMPLEMENTATION RUNNER STEPS
# ============================================================

step_01_validate_environment:
- verify root path exists
- verify required canonical documents exist
- verify PERSONA_DATABASE_URL for db modes
- verify runner mode is approved

step_02_collect_targets:
- enumerate exact output paths
- compare against canonical folder rules
- fail if path attempts to write outside LifeOS root or approved temp path

step_03_filesystem_apply:
- create missing directories with mkdir -p
- create or update approved markdown/canonical support files
- never overwrite unrelated design files
- never edit other OS folders

step_04_db_dependent_execution:
- only permitted in apply_after_db_ready mode
- call db_bootstrap_runner if bootstrap_not_done = true
- call db_migration_runner
- stop immediately if migration fails

step_05_rebuild_phase:
- rebuild integrated markdown from approved source set
- rebuild projections only from source-of-truth tables
- projection rebuild must be idempotent

step_06_verify_phase:
- invoke verify_acceptance_runner
- collect acceptance result
- mark execution failed if acceptance gate is red

step_07_finalize:
- write summary
- write audit memo
- emit canonical result status

# ============================================================
# 6. FILESYSTEM TARGET RULES
# ============================================================

allowed_write_targets:
- life-os root canonical markdown files
- 920.meta and allowed subfolders
- approved 120.implementation scaffolding
- approved 130.development runner-spec files
- approved user-writable temp under $HOME/.tmp

forbidden_write_targets:
- sibling OS roots
- archive backups unless explicit archive step declared
- secret files
- environment profile files
- arbitrary user home paths outside approved temp

naming_rule:
- runner-generated markdown must preserve numeric prefix ordering.
- shell runners must preserve absolute paths and be cd-position independent.
- one-block output is generated later and must be separate from design docs.

# ============================================================
# 7. REBUILD CONTRACT
# ============================================================

rebuild_targets:
- 00_LIFE_OS_INTEGRATED_CANONICAL_REBUILT.md
- future per-layer integrated documents if explicitly declared
- projection stores rebuilt from source tables
- materialized summary snapshots when approved

rebuild_hard_rules:
- rebuild must not become the sole source of truth
- rebuild must be reproducible from source canonical docs and source tables
- rebuild must log exact source inputs
- rebuild must fail closed if any required source is missing

# ============================================================
# 8. IDEMPOTENCY AND SAFETY
# ============================================================

idempotency_rules:
- repeated run with same inputs must not duplicate index entries
- repeated run must not create duplicated freeze file links
- repeated projection rebuild must converge to same logical state
- repeated verification must not mutate business rows

safety_rules:
- no destructive migration from this runner
- no silent fallback from PERSONA_DATABASE_URL to DATABASE_URL
- no automatic repair beyond approved deterministic transformations
- no hidden retries after hard failure

# ============================================================
# 9. TERMUX CONTRACT FOR LATER GENERATION
# ============================================================

termux_generation_rules:
- output format must be single block
- use absolute paths only
- create directories before file generation
- use PERSONA_DATABASE_URL for Persona-side DB work
- use psql "$PERSONA_DATABASE_URL" <<'SQL' style for SQL execution
- use $HOME/.tmp for temporary artifacts
- never depend on /tmp

required_termux_runner_set:
- lifeos_bootstrap_runner.sh
- lifeos_migration_runner.sh
- lifeos_integrated_rebuild_runner.sh
- lifeos_verify_runner.sh
- optional wrapper: lifeos_full_apply_runner.sh

wrapper_rule:
- wrapper may orchestrate multiple approved runners
- wrapper must stop on first hard failure
- wrapper must print roadmap and current position before execution

# ============================================================
# 10. ACCEPTANCE GATE FOR THIS DOCUMENT
# ============================================================

this_document_is_complete_when:
- implementation runner no longer overlaps ambiguously with db runners
- input and output contracts are fixed
- later one-block generation can map 1:1 from this document
- PERSONA_DATABASE_URL rule is explicit and unambiguous

final_position:
- LifeOS has runner-family architecture defined.
- Exact shell generation is intentionally deferred until review completes.
