# ============================================================
# LIFE PLANNER ARCHIVE DELETE RESTORE POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 050.retention-deletion
owner: Boss
prepared_by: Zero
schema: life

archive_policy:
  who:
    - owner only
  when:
    - plan is complete
    - plan is replaced
    - plan should remain reference-only
  result:
    - plan moves to archived state
    - normal edit flows become restricted

restore_policy:
  who:
    - owner only
  when:
    - archived plan becomes relevant again
  result:
    - plan returns to active state
    - normal edit flows re-open

delete_policy:
  who:
    - owner only
  when:
    - accidental or valueless plan
    - test data
    - explicit user intention
  safeguards:
    - stronger confirmation than archive
    - summary of what will be removed
    - encourage archive when historical value exists

shared_view_policy:
  - archived plans may remain viewable within scope if owner allows
  - deleted plans must not remain accessible to shared roles
