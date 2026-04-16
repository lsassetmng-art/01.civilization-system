# ============================================================
# MONEY PLANNER TERMINOLOGY CANONICAL DICTIONARY
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 900.meta

purpose:
  - 用語の揺れを止める
  - 画面 / API / 設計書の表記を合わせる

canonical_terms:

  MoneyPlanner:
    ja: お金計画アプリ
    note:
      - 本アプリ正式名

  plan:
    ja: 計画
    note:
      - MoneyPlanner 全体の1管理単位

  income_item:
    ja: 収入項目

  expense_item:
    ja: 支出項目

  asset_item:
    ja: 資産項目

  liability_item:
    ja: 負債項目

  saving_goal:
    ja: 貯蓄目標
    alias_not_recommended:
      - 積立目標
      - 目標貯金
    note:
      - 正式には saving_goal で統一

  event_budget:
    ja: イベント費用計画
    alias_not_recommended:
      - ライフイベント予算
      - イベント予算
    note:
      - 正式には event_budget で統一

  financial_snapshot:
    ja: 資金スナップショット

  shared_member:
    ja: 共有メンバー

  receive_candidate:
    ja: 受入候補
    note:
      - 他アプリから受け取った候補情報

  duplicate_candidate:
    ja: 重複候補

  visibility_scope:
    ja: 可視範囲
    values:
      - private
      - shared
      - selected_only

  member_visibility_scope:
    ja: メンバー可視範囲
    values:
      - all
      - shared_only
      - selected_only

  owner_summary:
    ja: owner summary
    note:
      - owner 視点の集計
      - private/shared/selected_only を含みうる

  shared_summary:
    ja: shared summary
    note:
      - shared のみで再計算した集計

  monthly_review:
    ja: 月次レビュー

  yearly_review:
    ja: 年次レビュー

  linkage:
    ja: 連携
    note:
      - 他 LifeOS アプリとの接続設定

  manual_share:
    ja: 手動共有
    note:
      - owner の明示操作による共有実行

prohibited_or_avoid_terms:
  - 家計簿メイン
  - 自動投資
  - 税額確定
  - 法務確定
  - 相続割合確定
