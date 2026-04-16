# ============================================================
# LIFE PLANNER ACTIVITY HISTORY POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 060.conflict-change-control
owner: Boss
prepared_by: Zero
schema: life

activity_history_purpose:
  - shared planning needs lightweight accountability
  - user should understand who changed what in broad terms

history_should_capture:
  - editor role
  - changed entity type
  - changed entity id
  - changed_at
  - broad change summary
  - whether change required owner confirmation

history_should_not_be:
  - overwhelming raw technical diff log
  - privacy leaking detail outside allowed scope

owner_view:
  - can see broader history context

family_editor_view:
  - sees history within shared scope only

family_viewer_view:
  - sees simplified history within shared scope only
