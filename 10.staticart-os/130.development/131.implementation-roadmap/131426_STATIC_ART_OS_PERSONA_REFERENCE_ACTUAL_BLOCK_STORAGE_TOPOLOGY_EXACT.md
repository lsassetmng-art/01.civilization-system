# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK STORAGE TOPOLOGY EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the canonical storage topology for authored/reviewed/executable
Persona reference actual blocks.

core_rule:
- authored block storage must be separate from execution evidence storage
- one block has one canonical storage lineage
- storage topology must make stage and review status visible
- storage topology must not blur draft, approved, executed, and archived states

recommended_storage_topology:
  authored_block_root:
    path:
      - 132.operations/600.actual-blocks
    purpose:
      - canonical storage root for actual block files

  authored_block_subzones:
    100.authoring-drafts:
      purpose:
        - in-progress authored blocks not yet review-ready
    200.review-ready:
      purpose:
        - authored blocks ready for review
    300.approved-for-execution:
      purpose:
        - reviewed blocks approved to execute
    400.superseded-or-returned:
      purpose:
        - returned for fix or superseded authored blocks
    500.executed-block-references:
      purpose:
        - lightweight references from approved block to execution evidence
    900.index:
      purpose:
        - block index, status ledger, and package/block navigation

  execution_evidence_root:
    path:
      - 920.meta/085.execution_runs
    purpose:
      - timestamped execution evidence only
    rule:
      - do not store authored block source-of-truth here

topology_rule:
- authored blocks live under 132.operations/600.actual-blocks
- execution evidence lives under 920.meta/085.execution_runs
- index/ledger lives under 132.operations/600.actual-blocks/900.index
- cross-linking is allowed, storage mixing is not

topology_judgement:
- storage topology exists to preserve review lineage and execution traceability
