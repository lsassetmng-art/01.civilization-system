# ============================================================
# TRAINING COACH PAYLOAD VERSIONING POLICY
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
  - request / response / integration payload の版管理ルールを固定する
  - additive 原則を守り、破壊的変更を抑止する
  - LifeOS連携時の整合性を保つ

versioning_policy:
  rule_1:
    - payload は major / minor を持つ
  rule_2:
    - 項目追加は minor アップで扱う
  rule_3:
    - 項目削除、必須化、意味変更は major アップで扱う
  rule_4:
    - 同一 major 内では後方互換を維持する
  rule_5:
    - enum 値追加は原則 minor とする
    - ただし consumer が unknown 非対応なら major 候補としてレビュー対象とする
  rule_6:
    - field rename は禁止
    - add new + deprecate old で扱う
  rule_7:
    - deprecated は即時削除せず、明示期間を経て廃止する

payload_header_contract:
  fields:
    payload_name: string
    payload_major_version: integer
    payload_minor_version: integer
    produced_at: timestamp
    producer_system: string

current_versions:
  dashboard_screen_payload:
    major: 1
    minor: 0
  today_plan_screen_payload:
    major: 1
    minor: 0
  plan_editor_save_payload:
    major: 1
    minor: 0
  session_complete_payload:
    major: 1
    minor: 0
  bodymetrics_trainingcoach_daily_summary:
    major: 1
    minor: 0
  trainingcoach_mealplanner_activity_summary:
    major: 1
    minor: 0
  trainingcoach_lifeplanner_goal_progress:
    major: 1
    minor: 0

deprecation_policy:
  states:
    - active
    - deprecated
    - retired
  required_metadata:
    - deprecated_since_version
    - removal_target_version
    - replacement_field_or_payload

review_rule:
  - major 変更は設計レビュー必須
  - LifeOS outbound payload の major 変更は受信先影響確認必須
