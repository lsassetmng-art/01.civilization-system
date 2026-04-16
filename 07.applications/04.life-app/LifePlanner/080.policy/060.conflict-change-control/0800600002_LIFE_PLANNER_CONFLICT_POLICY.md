# ============================================================
# LIFE PLANNER CONFLICT POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 060.conflict-change-control
owner: Boss
prepared_by: Zero
schema: life

conflict_policy:
  - same editable target changed from stale basis should not be silently overwritten
  - user should be shown that latest value changed
  - major state-changing actions should prefer explicit re-confirmation
  - shared roles never win against owner-only restrictions

conflict_classes:
  low:
    examples:
      - note wording updates
      - non-structural description edits
    handling:
      - simple refresh and re-edit acceptable

  medium:
    examples:
      - goal priority change
      - target date change
      - event date change
    handling:
      - show current value and incoming value before saving

  high:
    examples:
      - share scope update
      - plan archive/delete/restore
      - scenario adoption
      - reflection candidate final action
    handling:
      - explicit confirmation required
      - owner-only finalization

policy_note:
  - conflict handling is about conceptual behavior for now
  - implementation mechanism is intentionally not fixed yet
