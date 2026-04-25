# ============================================================
# STATIC ART OS PERSONA REFERENCE STORAGE INITIALIZATION RUNNER EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact behavior of the runner that initializes the actual
block storage/control layout.

initialization_scope:
- create storage root for actual blocks
- create canonical stage directories
- create index/ledger/queue target area
- seed empty canonical files where appropriate
- do not create fake active blocks

recommended_targets:
- 132.operations/600.actual-blocks
- 132.operations/600.actual-blocks/100.authoring-drafts
- 132.operations/600.actual-blocks/200.review-ready
- 132.operations/600.actual-blocks/300.approved-for-execution
- 132.operations/600.actual-blocks/400.superseded-or-returned
- 132.operations/600.actual-blocks/500.executed-block-references
- 132.operations/600.actual-blocks/900.index

seed_files_recommended:
- master index file
- registry ledger file
- review queue file
- execution queue file
- blocked queue file
- archive reference queue file
- initialization report

initialization_rules:
- create missing directories only
- never overwrite existing authored blocks
- never overwrite existing ledger/index/queue files without explicit refresh/apply mode
- seed files may be created as empty or template-shaped placeholders
- initialization must not imply approval or execution state

required_initialization_report_fields:
- created_directories
- existing_directories
- created_seed_files
- skipped_existing_files
- anomalies_if_any

init_runner_judgement:
- initialization runner exists to create the control-plane skeleton safely and idempotently
