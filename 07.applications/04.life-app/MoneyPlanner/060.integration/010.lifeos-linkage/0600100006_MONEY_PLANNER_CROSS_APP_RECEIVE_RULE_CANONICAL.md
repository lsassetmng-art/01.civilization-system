# ============================================================
# MONEY PLANNER CROSS APP RECEIVE RULE CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 060.integration

receive_sources:
  - LifePlanner
  - EndOfLifePlanner
  - InheritanceSupport

common_receive_rules:
  - 受入は owner 明示操作のみ
  - 自動作成ではなく candidate / draft 化を基本とする
  - source_system と share_scope を必須とする
  - base_currency を必須とする
  - private 初期値を許容する
  - 受入結果は audit_event 候補に記録する
  - 外部アプリの判断を MoneyPlanner の確定値として扱わない

canonical_target_mapping:
  event_like_information:
    target:
      - mp_event_budget candidate
  target_saving_like_information:
    target:
      - mp_saving_goal candidate
  note_like_information:
    target:
      - mp_memo_item
  summary_like_information:
    target:
      - dashboard helper summary candidate
    note:
      - 保存必須ではない

visibility_policy_after_receive:
  default:
    - private
  owner_can_change_to_shared:
    - yes
  partner_editor_can_change_visibility:
    - no
  viewer_can_view_received_private:
    - no

conflict_resolution:
  - 同名イベントがあっても自動上書きしない
  - 既存候補との重複は duplicate_candidate_flag で扱う
  - 金額未設定は memo 化または incomplete_candidate 化する

rejected_information_examples:
  - 投資助言
  - 税額確定
  - 法務結論
  - 医療判断
  - 相続割合確定結論
