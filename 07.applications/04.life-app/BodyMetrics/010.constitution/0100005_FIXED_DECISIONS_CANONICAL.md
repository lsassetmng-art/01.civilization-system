# ============================================================
# FIXED DECISIONS CANONICAL
# ============================================================

status: fixed-canonical

fixed_identity:
  app_name:
    en: BodyMetrics
    ja: 基礎情報測定アプリ
  runtime_schema: life
  support_policy: ai-chat-only

fixed_billing:
  free:
    monthly_jpy: 0
  family_care:
    monthly_jpy: 300

fixed_boundaries:
  - 診断しない
  - 治療方針を決めない
  - 緊急医療判断をしない
  - 医療断定表現をしない

fixed_core_features:
  - 平均比較グラフあり
  - 健康スコアあり
  - Family Care 共有あり
  - reference range 表示あり
  - 個人利用コア無料
  - 家族見守り共有のみ課金

fixed_design_handling:
  - 共通部品採否は別チャット扱い
  - 以後の変更は change request 扱いとする
