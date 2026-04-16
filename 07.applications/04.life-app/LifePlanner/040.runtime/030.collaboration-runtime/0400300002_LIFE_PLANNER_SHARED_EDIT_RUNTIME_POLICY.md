# ============================================================
# LIFE PLANNER SHARED EDIT RUNTIME POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 030.collaboration-runtime
owner: Boss
prepared_by: Zero
schema: life

shared_edit_targets:
  owner_can_edit:
    - life.life_plan
    - life.life_goal
    - life.life_milestone
    - life.life_event_timeline
    - life.life_review_log
    - life.life_shared_member
    - life.life_scenario
    - life.life_scenario_decision
    - life.life_reflection_candidate final actions

  family_editor_can_edit_within_scope:
    - life.life_goal
    - life.life_milestone
    - life.life_event_timeline
    - life.life_review_log append
    - life.life_scenario notes or compare preparation if allowed

  family_viewer_can_edit:
    - none

shared_edit_behavior:
  - edits by family_editor are allowed only inside shared scope
  - edits on sensitive hidden categories are never allowed
  - owner-only fields remain locked even if related entity is visible
  - share settings themselves are always owner-only

major_change_examples:
  - plan basic identity changes
  - visibility_policy changes
  - share scope changes
  - final scenario adoption
  - reflection candidate apply or dismiss

runtime_note:
  - not all entity edits are equal
  - same entity may contain owner-only and shared-editable fields
