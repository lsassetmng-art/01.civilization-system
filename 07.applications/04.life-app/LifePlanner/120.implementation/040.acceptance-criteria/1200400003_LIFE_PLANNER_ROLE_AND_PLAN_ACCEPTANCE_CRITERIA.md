# ============================================================
# LIFE PLANNER ROLE AND PLAN ACCEPTANCE CRITERIA
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 040.acceptance-criteria
owner: Boss
prepared_by: Zero
schema: life

role_acceptance:
  owner:
    - can create and update plan
    - can manage family share
    - can apply or dismiss reflection candidate
    - can make final scenario decision

  family_editor:
    - can edit only within shared scope
    - cannot control share settings
    - cannot finalize reflection candidate
    - cannot make final scenario adoption decision

  family_viewer:
    - can view only within shared scope
    - cannot edit any entity
    - cannot finalize any action

plan_scope_acceptance:
  free:
    - core planning features are usable
    - family share setting is not usable
    - scenario compare is not usable
    - pricing guide appears for blocked premium features

  family:
    - all free features remain usable
    - family collaboration is usable
    - scenario compare is usable
    - age view and broader shared flow are usable
