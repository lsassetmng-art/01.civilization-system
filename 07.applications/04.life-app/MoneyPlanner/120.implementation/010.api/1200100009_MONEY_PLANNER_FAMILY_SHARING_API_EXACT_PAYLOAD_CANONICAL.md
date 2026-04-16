# ============================================================
# MONEY PLANNER FAMILY SHARING API EXACT PAYLOAD CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - family sharing 画面の exact payload を固定する
  - shared_member 一覧、招待、更新、削除、visible summary を正本化する
  - visibility_scope と role の境界を API 上で明確にする

api_group:
  - list_members
  - invite_member
  - update_member
  - remove_member
  - get_member_visible_summary

list_members:
  method: GET
  path: /v1/money-planner/sharing/members
  query:
    status:
      type: enum[pending,active,removed]
      required: false
    role:
      type: enum[owner,partner_editor,viewer]
      required: false
  response_200:
    success: true
    data:
      items:
        - shared_member_id: "uuid"
          plan_id: "uuid"
          user_ref: "family_user_01"
          display_name: "家族A"
          role: "partner_editor"
          visibility_scope: "all"
          invited_at: "2026-04-14T20:00:00+09:00"
          accepted_at: "2026-04-14T20:10:00+09:00"
          status: "active"
          visible_summary:
            visible_income_count: 5
            visible_expense_count: 8
            visible_asset_count: 2
            visible_liability_count: 1
            visible_saving_goal_count: 2
            visible_event_budget_count: 3
            visible_memo_count: 1
      total_count: 1
    error: null

invite_member:
  method: POST
  path: /v1/money-planner/sharing/members
  request:
    user_ref: "family_user_01"
    display_name: "家族A"
    role: "partner_editor"
    visibility_scope: "all"
  response_201:
    success: true
    data:
      shared_member_id: "uuid"
      invited_at: "2026-04-14T20:00:00+09:00"
      status: "pending"
    error: null

update_member:
  method: PATCH
  path: /v1/money-planner/sharing/members/{shared_member_id}
  request:
    role: "viewer"
    visibility_scope: "shared_only"
  response_200:
    success: true
    data:
      shared_member_id: "uuid"
      role: "viewer"
      visibility_scope: "shared_only"
      updated_at: "2026-04-14T20:20:00+09:00"
    error: null

remove_member:
  method: DELETE
  path: /v1/money-planner/sharing/members/{shared_member_id}
  response_200:
    success: true
    data:
      shared_member_id: "uuid"
      status: "removed"
      removed_at: "2026-04-14T20:30:00+09:00"
    error: null

get_member_visible_summary:
  method: GET
  path: /v1/money-planner/sharing/members/{shared_member_id}/visible-summary
  response_200:
    success: true
    data:
      shared_member_id: "uuid"
      role: "partner_editor"
      visibility_scope: "all"
      visible_income_count: 5
      visible_expense_count: 8
      visible_asset_count: 2
      visible_liability_count: 1
      visible_saving_goal_count: 2
      visible_event_budget_count: 3
      visible_memo_count: 1
      calculated_at: "2026-04-14T20:00:00+09:00"
    error: null

role_rules:
  owner:
    - list_members
    - invite_member
    - update_member
    - remove_member
    - get_member_visible_summary
  partner_editor:
    - list_members(read_limited)
    - get_member_visible_summary(self_only_or_limited)
  viewer: []

business_rules:
  - owner は招待・役割変更・削除可
  - partner_editor は他 member の role 変更不可
  - viewer は共有管理 API 不可
  - owner は owner 以外のみ招待可能
  - role=owner の追加作成は不可
  - visibility_scope=selected_only の詳細選択は別設計で扱う

error_code_candidates:
  - MP-403-005: only owner can manage shared members
  - MP-404-012: shared member not found
  - MP-409-005: shared member already invited
  - MP-422-006: invalid role transition
