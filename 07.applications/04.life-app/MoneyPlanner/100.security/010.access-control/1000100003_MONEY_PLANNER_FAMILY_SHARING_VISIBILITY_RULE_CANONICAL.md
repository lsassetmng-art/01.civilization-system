# ============================================================
# MONEY PLANNER FAMILY SHARING VISIBILITY RULE CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 100.security
subdomain: access-control

purpose:
  - 家族共有時の見える範囲を固定する
  - private / shared / selected の境界を明確化する
  - owner / partner_editor / viewer の閲覧差を定義する

core_rules:
  - owner は全件閲覧可能
  - partner_editor は共有対象のみ閲覧可能
  - viewer は共有対象の閲覧のみ可能
  - private は owner 専用
  - shared は共有メンバーへ開放可能
  - selected_only は owner が個別指定した対象のみ

visibility_levels:
  private:
    readable_by:
      - owner
    writable_by:
      - owner
    notes:
      - 共同編集者にも非表示
      - 外部共有対象にも含めない

  shared:
    readable_by:
      - owner
      - partner_editor
      - viewer
    writable_by:
      - owner
      - partner_editor
    notes:
      - viewer は閲覧のみ
      - 外部共有候補になりうるが owner 明示操作が必要

  selected_only:
    readable_by:
      - owner
      - individually_selected_member
    writable_by:
      - owner
    notes:
      - partner_editor 一律公開ではない
      - viewer 一律公開ではない

member_visibility_scope:
  all:
    can_read:
      - shared
      - selected_only_when_explicitly_selected
    cannot_read:
      - private

  shared_only:
    can_read:
      - shared
    cannot_read:
      - private
      - selected_only_unless_selected

  selected_only:
    can_read:
      - selected_only_when_explicitly_selected
    cannot_read:
      - private
      - shared_if_not_selected_by_rule
    note:
      - このモードは厳格公開を意図する

object_level_rules:
  income_item:
    default_visibility_recommendation: shared
  expense_item:
    default_visibility_recommendation: shared
  asset_item:
    default_visibility_recommendation: private
    note:
      - センシティブ度が高いため初期値は private 推奨
  liability_item:
    default_visibility_recommendation: private
  saving_goal:
    default_visibility_recommendation: shared
  event_budget:
    default_visibility_recommendation: shared
  memo_item:
    default_visibility_recommendation: private

role_specific_constraints:
  owner:
    allowed:
      - create_any_visibility
      - update_any_visibility
      - invite_member
      - remove_member
      - manual_external_share

  partner_editor:
    allowed:
      - read_shared
      - read_selected_when_selected
      - update_shared_only
    denied:
      - read_private
      - change_private_to_shared
      - manual_external_share
      - invite_member
      - role_change

  viewer:
    allowed:
      - read_shared
      - read_selected_when_selected
    denied:
      - create
      - update
      - delete
      - invite
      - role_change
      - external_share

external_share_rules:
  - owner のみ実行可能
  - private は payload に含めない
  - selected_only は共有目的と整合する時だけ含める
  - 共有実行時は audit_event を残す

screen_behavior_rules:
  - private 項目は非対象メンバー一覧に表示しない
  - 集計画面でも private 項目は非対象者向け合算に含めない
  - shared 項目だけで再計算した shared summary を持てる
  - selected_only 項目は対象者ごとに summary を分離してもよい
