# ============================================================
# LIFE PLANNER OWNER CONFIRMATION RUNTIME
# ============================================================

status: draft
system: LifePlanner
layer: 040.runtime
subfolder: 030.collaboration-runtime
owner: Boss
prepared_by: Zero
schema: life

owner_confirmation_needed_for:
  - reflection candidate apply
  - reflection candidate dismiss
  - scenario final decision
  - family share role change
  - family share scope update
  - archive plan
  - delete plan
  - restore archived plan
  - visibility_policy update
  - any change outside shared scope

owner_confirmation_may_be_skipped_for:
  - family_editor updating shared goal note within scope
  - family_editor updating allowed event note within scope
  - family_editor appending review proposal within scope

confirmation_patterns:
  direct_owner_action:
    - owner executes and confirms immediately

  review_after_family_update:
    - family_editor updates
    - owner receives awareness notification
    - no extra approval unless action is major

  proposal_pattern:
    - family_editor drafts suggestion
    - owner explicitly accepts or rejects later
    - reserved for sensitive or structural changes

guiding_rule:
  - minimize friction for safe shared edits
  - require owner confirmation for structural or sensitive changes
