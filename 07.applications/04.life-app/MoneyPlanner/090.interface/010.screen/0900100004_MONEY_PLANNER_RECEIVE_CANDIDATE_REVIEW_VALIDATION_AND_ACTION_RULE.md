# ============================================================
# MONEY PLANNER RECEIVE CANDIDATE REVIEW VALIDATION AND ACTION RULE
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 090.interface
subdomain: screen

action_rules:
  convert_to_draft_candidate:
    executable_by:
      - owner
    preconditions:
      - import_status = received
    result:
      - import_status -> draft_candidate

  mark_reviewed:
    executable_by:
      - owner
    preconditions:
      - import_status in [draft_candidate, received]
    result:
      - import_status -> reviewed

  confirm_import:
    executable_by:
      - owner
    preconditions:
      - import_status = reviewed
      - duplicate_candidate_flag = false or duplicate review 完了
      - target mapping が確定している
    result:
      - import_status -> confirmed
      - mapped_target_object_id を記録
      - audit_event 候補を記録

  reject_candidate:
    executable_by:
      - owner
    preconditions:
      - import_status in [received, draft_candidate, reviewed]
    result:
      - import_status -> rejected

  archive_candidate:
    executable_by:
      - owner
    preconditions:
      - import_status in [confirmed, rejected]
    result:
      - import_status -> archived

validation_rules:
  - received から confirmed へ直接遷移しない
  - duplicate_candidate_flag = true の場合は reviewed 必須
  - visibility は owner のみ変更可
  - partner_editor は confirm/reject/archive 不可
  - viewer は画面表示対象外
