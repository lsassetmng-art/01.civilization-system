# ============================================================
# STATIC ART OS PERSONA REFERENCE STORAGE INITIALIZATION RUNNER ACTUAL TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete authoring template for the storage initialization
runner of the Persona reference block control plane.

recommended_runner_identity:
  runner_id:
    - PR-RUN-INIT-01
  runner_title:
    - storage initialization runner
  runner_mode_support:
    - dry_run
    - apply

actual_template:
  runner_header:
    runner_id:
    runner_title:
    purpose:
    supported_modes:
      - dry_run
      - apply

  preconditions:
    - storage topology design reviewed
    - canonical root path confirmed
    - operator understands apply will create directories/files only
    - execution evidence root remains separate from authored block root

  touched_scope:
    - 132.operations/600.actual-blocks
    - stage directories under actual-block root
    - seed index/ledger/queue files if approved

  no_touch_scope:
    - 920.meta/085.execution_runs
    - authored block semantic contents
    - approval state
    - execution evidence content

  steps:
    - discover current storage root presence
    - enumerate missing directories
    - enumerate seed files to create if approved
    - produce dry-run report or apply report
    - never fabricate active block records

  expected_outputs:
    - initialization report
    - created_directories list
    - created_seed_files list
    - skipped_existing_items list

  failure_handling:
    - stop on root path ambiguity
    - stop on storage root conflicting with execution evidence root
    - stop on unsafe overwrite condition

  safe_stop_or_rollback:
    - no apply in dry_run
    - apply creates missing items only
    - do not overwrite existing authored blocks or evidence
