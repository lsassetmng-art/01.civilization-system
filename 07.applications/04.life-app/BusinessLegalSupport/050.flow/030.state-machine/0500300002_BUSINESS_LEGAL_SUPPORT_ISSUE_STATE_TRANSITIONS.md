# ============================================================
# BUSINESS LEGAL SUPPORT ISSUE STATE TRANSITIONS
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

issue_status_set:
  - draft
  - active
  - waiting_external_reply
  - waiting_owner_action
  - completed
  - archived

allowed_transitions:

  draft:
    can_move_to:
      - active
      - archived

  active:
    can_move_to:
      - waiting_external_reply
      - waiting_owner_action
      - completed
      - archived

  waiting_external_reply:
    can_move_to:
      - active
      - waiting_owner_action
      - completed
      - archived

  waiting_owner_action:
    can_move_to:
      - active
      - waiting_external_reply
      - completed
      - archived

  completed:
    can_move_to:
      - active
      - archived

  archived:
    can_move_to:
      - active

transition_meaning:
  draft:
    - まだ整理途中
  active:
    - 現在対応中
  waiting_external_reply:
    - 相手方や外部返答待ち
  waiting_owner_action:
    - owner 側の次アクション待ち
  completed:
    - 一旦完了扱い
  archived:
    - 現役一覧から外した保管状態

important_rules:
  - completed is reversible
  - archived is reversible
  - deadline completion alone must not auto-set completed
  - issue delete is outside status transition and handled by soft delete
