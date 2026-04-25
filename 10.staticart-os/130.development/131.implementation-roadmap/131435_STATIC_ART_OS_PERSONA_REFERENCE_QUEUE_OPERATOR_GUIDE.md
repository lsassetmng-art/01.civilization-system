# ============================================================
# STATIC ART OS PERSONA REFERENCE QUEUE OPERATOR GUIDE
# ============================================================

status: active-exact-operator-guide
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Explain how an operator should use the block registry and queues.

operator_questions:
  what_needs_review_now:
    check:
      - review_queue
      - returned_for_fix items
      - boundary-sensitive items first

  what_can_execute_now:
    check:
      - execution_queue
      - prerequisite closure
      - approval state
      - evidence workspace readiness

  what_is_blocked:
    check:
      - blocked_queue
      - blocker register
      - close_gate_status
      - contradiction scan result

  what_already_ran:
    check:
      - executed status
      - linked_execution_run_dir_if_any
      - post-run summary linkage

  what_was_replaced:
    check:
      - superseded lineage
      - predecessor/successor mapping

operator_rules:
- never execute from draft status
- never treat approval as execution evidence
- never treat execution evidence as review approval by itself
- if queue status and storage stage disagree, fix registry/ledger before proceeding
- if boundary ambiguity exists, prefer blocked_queue over casual advancement

operator_judgement:
- queue operation is part of safety and review discipline, not mere convenience
