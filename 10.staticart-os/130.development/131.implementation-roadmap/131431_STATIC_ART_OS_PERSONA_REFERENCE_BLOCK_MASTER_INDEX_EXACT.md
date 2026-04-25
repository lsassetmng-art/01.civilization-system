# ============================================================
# STATIC ART OS PERSONA REFERENCE BLOCK MASTER INDEX EXACT
# ============================================================

status: active-exact-index
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the canonical master index concept for Persona reference actual
blocks.

core_rule:
- every actual block must appear in the master index
- master index is the top navigation layer for authored/reviewed/executed blocks
- master index does not replace evidence; it points to it
- master index must reflect lineage and current status clearly

required_index_views:
  by_package:
    purpose:
      - group blocks by PR-A01 through PR-A07

  by_status:
    purpose:
      - show draft / review_ready / approved / executed / returned / superseded

  by_stage:
    purpose:
      - show where the block currently lives in storage topology

  by_dependency:
    purpose:
      - show prerequisite block/package relationships

  by_execution_linkage:
    purpose:
      - show which approved blocks already have linked run evidence

minimum_index_fields:
- block_id
- package_id
- block_title
- current_status
- current_stage
- current_storage_path
- prerequisite_blocks
- close_gate_status
- linked_execution_run_dir_if_any
- latest_review_outcome_if_any

index_rule:
- one block_id = one canonical current entry
- history and lineage may be linked, but the current active record must be obvious
- master index must help reviewers and operators find the next correct action quickly

index_judgement:
- master index exists to eliminate ambiguity in block lifecycle tracking
