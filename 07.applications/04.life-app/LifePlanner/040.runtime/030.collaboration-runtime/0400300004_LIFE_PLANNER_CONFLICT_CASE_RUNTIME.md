# ============================================================
# LIFE PLANNER CONFLICT CASE RUNTIME
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 030.collaboration-runtime
owner: Boss
prepared_by: Zero
schema: life

conflict_cases:
  - case_id: LP-COL-001
    case:
      - owner and family_editor edit the same goal close in time
    runtime_policy:
      - detect changed basis conceptually
      - request re-open and review latest value before overwrite

  - case_id: LP-COL-002
    case:
      - family_editor edits an entity that was removed from shared scope meanwhile
    runtime_policy:
      - block save
      - explain scope changed

  - case_id: LP-COL-003
    case:
      - owner archives a plan while family_editor still has edit screen open
    runtime_policy:
      - future save blocked
      - reopen in archived read-heavy mode

  - case_id: LP-COL-004
    case:
      - scenario compare result exists but owner changes underlying goals/events before decision
    runtime_policy:
      - mark compare result as potentially stale
      - ask user to recheck before final adoption

  - case_id: LP-COL-005
    case:
      - duplicate family updates create noisy owner notifications
    runtime_policy:
      - conceptually group notifications by entity/time window
      - do not treat every minor edit as separate urgent event

conflict_priority:
  - protect final owner control
  - preserve user intent
  - avoid silent data loss
