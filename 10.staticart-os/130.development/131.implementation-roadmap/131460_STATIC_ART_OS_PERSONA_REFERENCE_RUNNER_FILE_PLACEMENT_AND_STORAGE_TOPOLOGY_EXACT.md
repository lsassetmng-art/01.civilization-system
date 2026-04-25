# ============================================================
# STATIC ART OS PERSONA REFERENCE RUNNER FILE PLACEMENT AND STORAGE TOPOLOGY EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define where actual runner files, their reports, and their related
operator artifacts should live.

core_rule:
- runner source files, runner reports, and execution evidence should remain visibly separated
- runner storage must preserve reviewability and reproducibility
- runner storage must not blur authored runner source-of-truth with generated outputs

recommended_storage_topology:
  runner_source_root:
    path:
      - 132.operations/610.persona-reference-runners
    purpose:
      - canonical home for authored runner source files once actualized

  runner_source_subzones:
    100.drafts:
      purpose:
        - in-progress runner authoring
    200.review-ready:
      purpose:
        - review-ready runner files and approval companions
    300.approved:
      purpose:
        - approved runner source files ready for invocation
    400.superseded-or-returned:
      purpose:
        - replaced or returned runner variants
    900.index:
      purpose:
        - runner registry, runner queue, runner lineage notes

  runner_report_root:
    path:
      - 920.meta/116.persona_reference_runner_reports
    purpose:
      - reports produced by initialization / refresh / audit runner activity
    rule:
      - reports live here, not inside runner source root

  execution_evidence_root:
    path:
      - 920.meta/085.execution_runs
    purpose:
      - actual execution evidence for broader implementation runs
    rule:
      - do not store runner source files here

topology_rule:
- approved runner source should be readable under 132.operations/610.persona-reference-runners/300.approved
- generated reports should be readable under 920.meta/116.persona_reference_runner_reports
- index/registry/queue for runners should live under 132.operations/610.persona-reference-runners/900.index
- runner source lineage and runner report lineage may link to each other, but should not share a single mixed directory

topology_judgement:
- runner storage topology exists to keep authoring, approval, invocation, and reporting clearly separated
