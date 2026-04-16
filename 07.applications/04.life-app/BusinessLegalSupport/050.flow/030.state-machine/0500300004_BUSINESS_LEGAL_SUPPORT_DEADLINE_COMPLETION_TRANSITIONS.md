# ============================================================
# BUSINESS LEGAL SUPPORT DEADLINE COMPLETION TRANSITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 030.state-machine
owner: Boss
prepared_by: Zero

deadline_state_model:
  managed_by_fields:
    - completed_flag
    - completed_at

logical_states:
  - pending
  - completed

state_rules:
  pending:
    condition:
      - completed_flag = false
      - completed_at = null

  completed:
    condition:
      - completed_flag = true
      - completed_at is not null

allowed_transitions:
  pending:
    can_move_to:
      - completed

  completed:
    can_move_to:
      - pending

reopen_rule:
  - if a completed deadline is reopened, completed_flag returns false and completed_at returns null

important_rules:
  - due_at past does not equal completed
  - completed deadline does not auto-complete issue
  - multiple deadlines on one issue may have mixed states
