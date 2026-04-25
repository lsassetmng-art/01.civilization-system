# ============================================================
# STATIC ART OS PERSONA REFERENCE CANONICAL ARTIFACT MATRIX
# ============================================================

status: canonical-artifact-matrix
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Show which artifact family is canonical for which concern.

artifact_matrix:
  boundary_truth:
    canonical_artifacts:
      - 080160 Persona non-duplication and snapshot consumption rule
      - 080190 Persona direct mutation abolish list
    role:
      - semantic safety boundary

  exact_behavior_truth:
    canonical_artifacts:
      - 060160 event exact
      - 121270 DB exact
      - 122370 API exact
      - 123180 UI exact
      - 124180 test exact
      - 121290 SQL exact DDL
    role:
      - implementation meaning

  runtime_control_truth:
    canonical_artifacts:
      - 060180 reflection/replay/stale handling exact
      - 080300 expiry/retention/refresh exact
      - 100120 access control/audit exact
      - 070160~070190 observability/recovery/KPI family
    role:
      - runtime safety and operational interpretation

  implementation_slicing_truth:
    canonical_artifacts:
      - 131398 workstream decomposition
      - 131404 actual work package catalog
      - 131405 dependency and gate map
    role:
      - implementation unit boundaries

  actual_block_truth:
    canonical_artifacts:
      - 131408 actual block policy
      - 131409 master block template
      - 131414~131420 package block templates
      - 131424 validation/lint/approval exact
    role:
      - execution-ready authored unit design

  storage_and_registry_truth:
    canonical_artifacts:
      - 131426 storage topology
      - 131428 registry ledger/status rule
      - 131433 queue exact
      - 131439 sync workflow
      - 131441~131447 actual queue file templates
    role:
      - operational control-plane state management

  runner_truth:
    canonical_artifacts:
      - 131448~131453 runner design family
      - 131454~131459 runner actual template family
      - 131460~131464 runner storage/versioning family
    role:
      - control-plane automation tooling design

  acceptance_and_release_truth:
    canonical_artifacts:
      - 131394 master final review checklist
      - 131395 GO / NO-GO exact
      - 131396 acceptance criteria
      - 131397 verification matrix
      - 132740 release readiness gate
      - 132741 rollback criteria
    role:
      - implementation completion and rollout judgement

matrix_rule:
- queue files are not more canonical than ledger
- runner reports are not more canonical than runner source plus ledger/index
- execution evidence is not more canonical than frozen semantics, but is canonical for what actually ran
