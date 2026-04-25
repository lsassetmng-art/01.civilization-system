# ============================================================
# LIFE OS ACCEPTANCE TEST AND RELEASE GATE EXACT DESIGN
# ============================================================

status: canonical-draft
layer: 920.meta
subfolder: 925.implementation-ready-freeze
system: life-os
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the acceptance, testing, release gate, and rollback-readiness design
  for LifeOS before implementation starts.
- Define what must be true before DB apply, before API exposure,
  before UI exposure, and before cross-OS integration enablement.

policy_note:
- This document is design only.
- No DB execution or implementation is authorized by this document alone.

principles:
- design completeness before execution
- acceptance before rollout
- rollback plan before mutable release
- no hidden manual requirement
- every gate produces explicit evidence

# ------------------------------------------------------------
# 1. acceptance layers
# ------------------------------------------------------------

acceptance_layers:
- document acceptance
- schema acceptance
- API contract acceptance
- screen-stateflow acceptance
- projection acceptance
- integration/replay acceptance
- release readiness acceptance

document_acceptance_requires:
- exact design docs exist
- index and overview references are updated
- integrated canonical is rebuilt
- contradictory legacy references are resolved or marked as legacy

schema_acceptance_requires:
- table ownership fixed
- migration order fixed
- idempotency and outbox rules fixed
- correction model fixed
- no unresolved PK/unique/check/index question

api_acceptance_requires:
- exact request/response payloads fixed
- error contract fixed
- idempotency rule fixed
- route-to-use-case mapping fixed

screen_acceptance_requires:
- route list fixed
- state transitions fixed
- API bindings fixed
- error and retry paths fixed
- refresh rules fixed

# ------------------------------------------------------------
# 2. test taxonomy
# ------------------------------------------------------------

test_taxonomy:
- static_design_consistency_test
- contract_snapshot_test
- validation_test
- idempotency_test
- canonical_append_test
- outbox_enqueuing_test
- projection_rebuild_test
- integration_replay_test
- review_decision_test
- screen_stateflow_test
- release_gate_test

test_ownership:
  architecture_owner:
  - static design consistency
  - document reference consistency

  backend_owner:
  - contract snapshot
  - validation
  - canonical append
  - outbox
  - replay
  - review decision

  frontend_owner:
  - screen stateflow
  - route binding
  - error display
  - optimistic and non-optimistic refresh policy

  db_owner:
  - migration ordering
  - unique/check/index expectation
  - rollback-readiness evidence

# ------------------------------------------------------------
# 3. evidence artifacts
# ------------------------------------------------------------

required_evidence_artifacts:
- integrated_rebuild_output
- freeze_index_reference_check
- contract_snapshot_bundle
- schema_diff_report
- route_matrix_report
- idempotency_test_report
- replay_test_report
- outbox_dispatch_report
- release_decision_memo

artifact_storage_rule:
- evidence files live under canonical meta or dedicated test meta location
- filenames include date and scope
- release gate references stable artifact names

# ------------------------------------------------------------
# 4. release gates
# ------------------------------------------------------------

release_gates:
  gate_0_design_freeze:
  - all exact design docs exist
  - no unresolved critical TODO
  - index and integrated references updated

  gate_1_db_apply_ready:
  - DDL exact design fixed
  - migration runner design fixed
  - verify runner design fixed
  - rollback procedure drafted
  - Sato DB review recorded

  gate_2_api_ready:
  - API exact payload design fixed
  - backend orchestration design fixed
  - idempotency policy fixed
  - error families fixed

  gate_3_ui_ready:
  - screen-stateflow exact design fixed
  - frontend implementation module design fixed
  - route and acceptance matrix fixed

  gate_4_integration_ready:
  - integration sync replay design fixed
  - export event versioning fixed
  - reconciliation flow fixed

  gate_5_release_ready:
  - acceptance evidence complete
  - known risk memo complete
  - rollback readiness validated
  - cross-OS dependency review complete

# ------------------------------------------------------------
# 5. rollback readiness
# ------------------------------------------------------------

rollback_readiness_rules:
- before any DB apply, schema backup method is documented
- before any cross-OS enablement, dependent view/function inventory is documented
- destructive change requires explicit rollback script design
- release memo states what is reversible and what is not

rollback_evidence:
- pre_apply_inventory_query
- backup_path_rule
- object_dependency_list
- rollback_sql_draft
- post_rollback_validation_case

# ------------------------------------------------------------
# 6. scenario-based acceptance
# ------------------------------------------------------------

core_scenarios:
- habit log create once
- habit log duplicate submit
- health metric import trusted device
- health metric import conflicting unit
- goal event create and reflect on dashboard
- daily check-in append and refresh
- integration replay same payload
- review-required ingest then approved correction
- outbox dispatch failure then retry
- projection full rebuild after version change

pass_conditions:
- no duplicate canonical append for replay
- accepted write always creates required internal event
- review path never mutates historical row directly
- projection can be rebuilt from canonical source
- screen shows stable result after async refresh completion

# ------------------------------------------------------------
# 7. release-blocking defects
# ------------------------------------------------------------

release_blocking_defects:
- missing idempotency for repeatable write
- missing outbox emission on canonical append
- canonical history overwritten in place
- replay duplicates canonical fact
- projection depends on experimental cross-schema view
- unresolved contract mismatch between API and screen flow
- missing rollback evidence for DB apply

non_blocking_but_must_log:
- cosmetic label mismatch
- non-critical empty-state copy issue
- non-default sort preference issue
- optional analytics event absence

# ------------------------------------------------------------
# 8. matrix relation
# ------------------------------------------------------------

matrix_relation:
- DB exact design maps to schema acceptance
- API exact design maps to contract acceptance
- screen-stateflow exact design maps to UI acceptance
- backend orchestration design maps to service acceptance
- integration sync replay design maps to cross-boundary acceptance
- frontend implementation module design maps to implementation ownership acceptance

# ------------------------------------------------------------
# 9. pre-implementation checklist
# ------------------------------------------------------------

pre_implementation_checklist:
- [ ] freeze references updated
- [ ] integrated canonical rebuilt
- [ ] DB exact design fixed
- [ ] API exact payload fixed
- [ ] screen-stateflow fixed
- [ ] frontend module exact design fixed
- [ ] backend orchestration fixed
- [ ] integration sync replay fixed
- [ ] acceptance and release gate fixed
- [ ] DB review by Sato recorded
- [ ] implementation still not started until explicit GO

# ------------------------------------------------------------
# 10. completion meaning
# ------------------------------------------------------------

completion_meaning:
- acceptance expectations are fixed enough that implementation can be
  evaluated without inventing new quality gates midstream.

