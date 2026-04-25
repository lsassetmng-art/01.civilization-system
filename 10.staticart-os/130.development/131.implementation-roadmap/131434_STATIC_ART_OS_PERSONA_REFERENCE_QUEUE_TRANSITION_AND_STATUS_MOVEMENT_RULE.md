# ============================================================
# STATIC ART OS PERSONA REFERENCE QUEUE TRANSITION AND STATUS MOVEMENT RULE
# ============================================================

status: active-exact-transition-rule
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define how blocks move between statuses and queues.

transitions:
  draft_to_review_ready:
    allowed_when:
      - authoring required sections complete
      - scope bounded
      - evidence expectation defined
    move:
      - review_queue

  review_ready_to_approved:
    allowed_when:
      - review outcome is APPROVED or APPROVED_WITH_LIMITS
      - dependency state is acceptable
    move:
      - execution_queue or blocked_queue depending on prerequisites

  review_ready_to_returned_for_fix:
    allowed_when:
      - ambiguity, missing evidence, or boundary issue exists
    move:
      - review_queue or blocked_queue depending on severity

  approved_to_executed:
    allowed_when:
      - actual execution occurred
      - execution evidence linked
    move:
      - archive_reference_queue with executed lineage visibility

  approved_to_blocked:
    allowed_when:
      - newly discovered blocker or upstream gate reopened
    move:
      - blocked_queue

  any_to_superseded:
    allowed_when:
      - explicit successor block replaces it
    move:
      - archive_reference_queue

transition_forbidden:
- draft პირდაპირ to executed
- review_ready to executed without approval
- superseded back to active without explicit successor/lineage handling
- executed marked complete without linked evidence when evidence is required
- approval state changed without updating registry and queue together

transition_rule:
- status, queue, and storage stage should move coherently
- lineage should remain traceable after every transition
