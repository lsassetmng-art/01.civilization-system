# ============================================================
# STATIC ART OS PERSONA REFERENCE IMPLEMENTATION CONTROL PLANE MASTER MAP
# ============================================================

status: master-map
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Integrate the full Persona reference implementation control-plane
design into one master map.

core_statement:
- Persona reference work in StaticArtOS is controlled by a design-side
  control plane.
- The control plane exists to preserve boundary safety, reviewability,
  storage clarity, execution traceability, and rollout discipline.
- StaticArtOS remains signed-snapshot-consumption only.

# ------------------------------------------------------------
# 1. CONTROL PLANE LAYERS
# ------------------------------------------------------------

control_plane_layers:
  layer_1_boundary_and_exactness:
    contains:
      - non-duplication rule
      - direct mutation abolish rule
      - event / DB / API / UI / test / SQL exact design
    role:
      - defines what is allowed

  layer_2_runtime_control_and_safety:
    contains:
      - replay / stale / expiry / retention / access / audit
      - observability / reconciliation / incident / rollback / SLO
    role:
      - defines how runtime remains safe

  layer_3_pre_post_review:
    contains:
      - pre-implementation final review
      - post-implementation acceptance / release review
    role:
      - defines GO / NO-GO judgement

  layer_4_workstream_and_package_control:
    contains:
      - workstream decomposition
      - actual work package catalog
      - dependency / gate map
      - approval packet
    role:
      - defines how work is sliced

  layer_5_actual_block_control:
    contains:
      - actual block policy
      - actual block template set
      - authoring workflow
      - block validation/lint/approval
    role:
      - defines how one execution-ready unit is authored

  layer_6_storage_registry_queue_control:
    contains:
      - block storage topology
      - registry / queue model
      - actual queue templates
      - runner design and runner templates
      - runner storage / versioning / retention
    role:
      - defines how block state is operationally managed

# ------------------------------------------------------------
# 2. PRIMARY FLOWS
# ------------------------------------------------------------

primary_flows:
  design_to_package:
    - exact design -> workstream -> actual package

  package_to_block:
    - actual package -> actual block template -> authored block

  block_to_registry:
    - authored block -> registry ledger -> review queue / execution queue

  approved_block_to_execution:
    - approved block -> execution run workspace -> evidence

  execution_to_acceptance:
    - evidence -> acceptance review -> release / rollback judgement

  runner_control:
    - runner source -> runner reports -> control-plane refresh / audit

# ------------------------------------------------------------
# 3. CANONICAL CONTROL POINTS
# ------------------------------------------------------------

canonical_control_points:
- frozen baseline
- persona boundary rules
- exact design set
- work package catalog
- actual block templates
- storage topology
- registry ledger
- review/execution queues
- execution evidence runs
- acceptance / release review artifacts

# ------------------------------------------------------------
# 4. MASTER MAP JUDGEMENT
# ------------------------------------------------------------

master_map_judgement:
- Persona reference implementation control plane is now explicitly mapped.
- StaticArtOS can move from dispersed design notes toward a controlled implementation operating model.
