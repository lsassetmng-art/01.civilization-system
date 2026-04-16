# ============================================================
# MONEY PLANNER DASHBOARD ALERT API EXACT PAYLOAD CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - dashboard alerts の exact payload を固定する
  - shortage / duplicate candidate / review pending を統一形式で扱う
  - alert 一覧と acknowledge を正本化する

api_group:
  - list_alerts
  - acknowledge_alert

list_alerts:
  method: GET
  path: /v1/money-planner/alerts
  query:
    severity:
      type: enum[high,medium,low]
      required: false
    alert_type:
      type: enum[shortage_risk,duplicate_candidate,review_pending,goal_delay,sharing_visibility_warning]
      required: false
  response_200:
    success: true
    data:
      items:
        - alert_id: "uuid"
          alert_type: "shortage_risk"
          severity: "high"
          target_month: "2026-09"
          related_goal_id: null
          related_event_budget_id: "uuid"
          related_candidate_registry_id: null
          title: "2026-09 資金不足見込み"
          message: "大型イベント費用により月次残高がマイナス見込みです。"
          acknowledged_flag: false
          created_at: "2026-04-14T20:00:00+09:00"
        - alert_id: "uuid"
          alert_type: "duplicate_candidate"
          severity: "medium"
          target_month: null
          related_goal_id: null
          related_event_budget_id: null
          related_candidate_registry_id: "uuid"
          title: "重複候補があります"
          message: "受入候補レビューで確認が必要です。"
          acknowledged_flag: false
          created_at: "2026-04-14T20:05:00+09:00"
      total_count: 2
    error: null

acknowledge_alert:
  method: PATCH
  path: /v1/money-planner/alerts/{alert_id}/acknowledge
  request:
    acknowledged_flag: true
  response_200:
    success: true
    data:
      alert_id: "uuid"
      acknowledged_flag: true
      acknowledged_at: "2026-04-14T20:10:00+09:00"
    error: null

role_rules:
  owner:
    - list_alerts
    - acknowledge_alert
  partner_editor:
    - list_alerts(limited)
  viewer:
    - list_alerts(shared_scope_only)

alert_generation_policy:
  shortage_risk:
    generated_when:
      - monthly_projection.shortage_flag = true
  duplicate_candidate:
    generated_when:
      - duplicate_candidate_count > 0
  review_pending:
    generated_when:
      - received_count > 0 or draft_candidate_count > 0
  goal_delay:
    generated_when:
      - active goal の達成見込みが遅延
  sharing_visibility_warning:
    generated_when:
      - shared summary と owner summary の差が大きい場合の注意候補
