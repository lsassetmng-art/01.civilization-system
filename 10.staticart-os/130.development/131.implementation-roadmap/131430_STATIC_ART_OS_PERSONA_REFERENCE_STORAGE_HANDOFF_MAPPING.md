# ============================================================
# STATIC ART OS PERSONA REFERENCE STORAGE HANDOFF MAPPING
# ============================================================

status: active-exact-handoff-mapping
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Map block lifecycle stage to handoff target and storage expectation.

handoff_mapping:
  draft_to_review_ready:
    trigger:
      - authoring complete enough for review
    move_to:
      - 132.operations/600.actual-blocks/200.review-ready
    update:
      - review queue
      - block status ledger

  review_ready_to_approved:
    trigger:
      - approval outcome is APPROVED or APPROVED_WITH_LIMITS
    move_to:
      - 132.operations/600.actual-blocks/300.approved-for-execution
    update:
      - approval state
      - execution intent note if needed

  review_ready_to_returned:
    trigger:
      - approval outcome is RETURN_FOR_FIX
    move_to:
      - 132.operations/600.actual-blocks/400.superseded-or-returned
    update:
      - return reason
      - successor expectation if applicable

  approved_to_executed_reference:
    trigger:
      - block execution actually occurred
    keep_or_link:
      - approved block remains authoritative authored source
      - add linkage under 500.executed-block-references
      - link to 920.meta/085.execution_runs/<stamp>
    update:
      - ledger executed status
      - linked_execution_run_dir

  superseded_lineage:
    trigger:
      - newer replacement block approved
    move_or_mark:
      - superseded-or-returned
    update:
      - predecessor/successor lineage fields

mapping_rule:
- authored block identity and execution evidence identity should be linked, not merged
- handoff stage changes must be visible in ledger and storage path

final_mapping_judgement:
- storage handoff mapping exists to keep lifecycle movement explainable and low-risk
