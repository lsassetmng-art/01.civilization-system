# ============================================================
# LIFE PLANNER NOTIFICATION POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 020.notification-review
owner: Boss
prepared_by: Zero
schema: life

notification_types:
  - important_event_upcoming
  - review_cycle_due
  - reflection_candidate_arrived
  - family_update_received
  - scenario_decision_pending
  - stale_plan_warning

policy_rules:
  - important_event_upcoming:
      purpose:
        - 重要イベント接近の注意喚起
      default_enabled: true
      default_lead_days:
        - 30
        - 7
        - 1

  - review_cycle_due:
      purpose:
        - 定期見直しのきっかけ提示
      default_enabled: true
      default_frequency:
        - monthly_light_review
        - semiannual_review
        - annual_review

  - reflection_candidate_arrived:
      purpose:
        - 他アプリ起点の見直し候補通知
      default_enabled: true
      owner_only: true

  - family_update_received:
      purpose:
        - family_editor更新の通知
      default_enabled: true
      owner_only: true

  - scenario_decision_pending:
      purpose:
        - 比較済みシナリオの判断未完了通知
      default_enabled: false
      family_plan_only: true

  - stale_plan_warning:
      purpose:
        - 長期未更新の気づき提示
      default_enabled: true
      trigger_days_without_update:
        - 90
        - 180
        - 365

content_policy:
  - 不安を煽る文言は禁止
  - 法務、健康、終活カテゴリは具体内容を通知本文に出しすぎない
  - family roles への通知は share_scope 範囲内に限定する

delivery_scope:
  owner:
    - all allowed notifications
  family_editor:
    - shared scope updates only
  family_viewer:
    - read-only context notifications only
