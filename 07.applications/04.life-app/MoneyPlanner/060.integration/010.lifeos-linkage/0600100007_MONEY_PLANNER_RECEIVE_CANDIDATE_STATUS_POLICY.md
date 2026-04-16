# ============================================================
# MONEY PLANNER RECEIVE CANDIDATE STATUS POLICY
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 060.integration

purpose:
  - 他 LifeOS アプリから受け取った候補情報の状態遷移を固定する
  - 自動確定を避け、owner review を前提にする
  - 重複・却下・採用の区別を明確にする

status_definitions:
  received:
    meaning:
      - 受信完了直後
      - 未レビュー
  draft_candidate:
    meaning:
      - MoneyPlanner 内の候補として作成済み
      - まだ確定保存ではない
  reviewed:
    meaning:
      - owner が確認済み
      - 採用可否は未最終
  confirmed:
    meaning:
      - MoneyPlanner 本体データへ正式反映済み
  rejected:
    meaning:
      - 受入不採用
  archived:
    meaning:
      - 履歴保持のみ
      - 画面の通常候補一覧からは外す

state_transitions:
  - received -> draft_candidate
  - draft_candidate -> reviewed
  - reviewed -> confirmed
  - reviewed -> rejected
  - confirmed -> archived
  - rejected -> archived

transition_rules:
  - received から confirmed へ直接遷移しない
  - partner_editor は confirmed へ遷移させられない
  - viewer は状態変更不可
  - duplicate_candidate_flag = true の場合は reviewed を経由必須
  - rejected 後の再採用は新 candidate として扱う

owner_review_requirements:
  - source_system を確認する
  - 金額妥当性を確認する
  - visibility 初期値を確認する
  - duplicate 判定結果を確認する
  - shared 化するか private のままにするか決める

mapping_after_confirmed:
  event_budget:
    target_table:
      - life.mp_event_budget
  saving_goal:
    target_table:
      - life.mp_saving_goal
  memo:
    target_table:
      - life.mp_memo_item
  asset:
    target_table:
      - life.mp_asset_item
  liability:
    target_table:
      - life.mp_liability_item
