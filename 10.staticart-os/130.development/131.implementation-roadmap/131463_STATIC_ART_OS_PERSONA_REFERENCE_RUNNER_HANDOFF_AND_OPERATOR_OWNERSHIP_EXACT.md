# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNNER HANDOFF AND OPERATOR OWNERSHIP EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define handoff and operator ownership expectations for actual runners.

ownership_model:
  runner_author:
    owns:
      - draft/review-ready runner source
      - clear preconditions and mode semantics
      - lineage clarity

  runner_reviewer:
    owns:
      - approval outcome
      - boundary and safety review
      - storage/lineage sanity review

  runner_operator:
    owns:
      - correct mode invocation
      - report inspection
      - anomaly escalation
      - not using apply casually after critical dry-run anomalies

  runner_registry_maintainer:
    owns:
      - runner index/registry consistency
      - approved/superseded stage visibility

handoff_packet_should_include:
- runner_id
- runner_version
- current_stage
- current_storage_path
- supported_modes
- intended report root
- known limitations
- predecessor/successor lineage if applicable

operator_rule:
- operator should invoke approved runner source only
- draft or returned runner source should not be treated as operationally approved
- runner ownership does not include authority to alter Persona boundary semantics

handoff_judgement:
- runner handoff is complete only when the operator can invoke or review without reconstructing hidden assumptions
