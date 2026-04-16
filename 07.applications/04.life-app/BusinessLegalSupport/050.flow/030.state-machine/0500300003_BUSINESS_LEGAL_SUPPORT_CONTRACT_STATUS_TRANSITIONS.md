# ============================================================
# BUSINESS LEGAL SUPPORT CONTRACT STATUS TRANSITIONS
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

contract_status_set:
  - draft
  - signed
  - active
  - expiring
  - ended
  - canceled

allowed_transitions:

  draft:
    can_move_to:
      - signed
      - canceled

  signed:
    can_move_to:
      - active
      - canceled

  active:
    can_move_to:
      - expiring
      - ended
      - canceled

  expiring:
    can_move_to:
      - active
      - ended
      - canceled

  ended:
    can_move_to:
      - active

  canceled:
    can_move_to:
      - active

transition_rules:
  - signed means concluded but not necessarily in active period yet
  - active means effective and ongoing
  - expiring is warning-oriented state
  - ended means term finished
  - canceled means terminated before or outside normal term logic

automation_notes:
  - expiring may be suggested from effective_to proximity
  - expiring should not be forced without review
  - ended should not auto-close parent issue
