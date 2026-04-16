# ============================================================
# LEGAL SUPPORT STATUS TRANSITION POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

entity:
  life.legal_case

statuses:
  - draft
  - active
  - on_hold
  - completed
  - archived

allowed_transitions:
  draft:
    - active
    - archived
  active:
    - on_hold
    - completed
    - archived
  on_hold:
    - active
    - archived
  completed:
    - active
    - archived
  archived:
    - active

transition_rules:
  - draft は作成直後の初期状態
  - active は通常進行状態
  - on_hold は一時停止状態
  - completed は案件整理終了状態
  - archived は参照保持状態
  - archived は通常通知停止
  - completed は child update を許可してもよいが、新規 child create は抑制してもよい
  - archived は reopen なしで更新不可

ui_guidance:
  - status変更時は確認メッセージを出す
  - archived 遷移時は通知停止を明示する
  - completed 遷移時は「必要なら再開可能」と表示する
