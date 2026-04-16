# ============================================================
# LIFE PLANNER RETENTION POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 050.retention-deletion
owner: Boss
prepared_by: Zero
schema: life

retention_targets:
  life_plan:
    default_policy:
      - retain until owner archives or deletes
    recommended:
      - archive meaningful old plans

  life_goal:
    default_policy:
      - retain as part of parent plan context
    recommended:
      - keep completed goals for historical understanding

  life_milestone:
    default_policy:
      - retain with goal history

  life_event_timeline:
    default_policy:
      - retain with plan history

  life_review_log:
    default_policy:
      - retain strongly
    note:
      - review history is central longitudinal context

  life_reflection_candidate:
    default_policy:
      - retain status history while plan exists
    note:
      - applied / dismissed context remains useful

  life_shared_member:
    default_policy:
      - retain membership history conceptually
    note:
      - access may end even if historical share record remains

  life_scenario:
    default_policy:
      - retain for future reconsideration
    recommended:
      - archive rather than delete when meaningful

retention_principle_note:
  - retention is about design intent, not storage duration implementation yet
