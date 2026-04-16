# ============================================================
# LIFE PLANNER PHASE1 IMPLEMENTATION PREP SCOPE
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 060.pre-implementation-package
owner: Boss
prepared_by: Zero
schema: life

phase1_when_implementation_starts_later:
  core_candidates:
    - life_plan create/detail/list/update
    - life_goal create/list/update
    - life_milestone create
    - life_event_timeline create/list/update
    - life_review_log append/view
    - home basic dashboard
    - life_plan_detail basic summary
    - screen access control for owner/family roles

phase1_not_required_yet:
  - scenario compare advanced
  - family collaboration advanced review queue
  - archive/delete full runtime
  - ai assist deep flows
  - workbook advanced flows
  - proposal mode for shared edits

note:
  - this is still design guidance only
  - no code or ddl is produced here
