# ============================================================
# STATIC ART OS PERSONA REFERENCE REVIEW QUEUE AND EXECUTION QUEUE EXACT
# ============================================================

status: active-exact-queue
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact review queue and execution queue behavior for actual
blocks.

queue_types:
  review_queue:
    includes:
      - blocks in review_ready
      - blocks returned_for_fix and waiting rework review
    excludes:
      - approved-only items unless re-review required
      - executed evidence-only items

  execution_queue:
    includes:
      - approved blocks with prerequisites closed
      - approved blocks waiting bounded execution slot
    excludes:
      - draft blocks
      - review_ready blocks not yet approved
      - superseded blocks

  blocked_queue:
    includes:
      - blocks whose prerequisite, boundary, or blocker issue is unresolved

  archive_reference_queue:
    includes:
      - executed or superseded lineage references kept for navigation only

queue_ordering_hint:
- dependency closure first
- earlier package blocks before later package blocks
- returned_for_fix should not silently jump ahead of unresolved upstream gates
- higher boundary-risk block may deserve earlier review even if authored later

queue_visibility:
- every block should be visible in exactly one primary active queue at a time
- archive_reference_queue may hold lineage references after active lifecycle ends

queue_rule:
- review queue is for approval safety
- execution queue is for controlled execution readiness
- blocked queue is for unresolved dependencies or boundary concerns
