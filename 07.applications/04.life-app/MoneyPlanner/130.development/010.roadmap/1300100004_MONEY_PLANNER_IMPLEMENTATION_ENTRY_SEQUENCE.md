# ============================================================
# MONEY PLANNER IMPLEMENTATION ENTRY SEQUENCE
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 130.development
subdomain: roadmap

purpose:
  - 実装開始時の順序を固定する
  - 手戻りを減らす

sequence:

  step_01:
    name: model constants foundation
    includes:
      - enum constants
      - terminology constants
      - error key constants
      - api route constants

  step_02:
    name: life schema logical model to repository model
    includes:
      - mp_plan
      - mp_income_item
      - mp_expense_item
      - mp_asset_item
      - mp_liability_item
      - mp_saving_goal
      - mp_event_budget
      - mp_scenario
      - mp_shared_member
      - mp_memo_item
      - mp_financial_snapshot
      - mp_receive_candidate_registry

  step_03:
    name: read side foundation
    includes:
      - dashboard summary read model
      - monthly projection read model
      - yearly projection read model
      - alerts read model

  step_04:
    name: basic CRUD implementation
    includes:
      - income
      - expense
      - asset
      - liability
      - saving_goal
      - event_budget
      - memo

  step_05:
    name: scenario and family sharing
    includes:
      - scenario compare
      - shared_member
      - visible summary

  step_06:
    name: linkage settings and manual share
    includes:
      - linkage setting state
      - manual share payload builder
      - visibility filtering

  step_07:
    name: receive candidate workflow
    includes:
      - candidate registry
      - review screen
      - duplicate handling
      - confirm / reject / archive

  step_08:
    name: audit history review flow
    includes:
      - audit_event
      - change_log
      - history_snapshot
      - monthly review checkpoint
      - yearly review checkpoint

entry_rules:
  - dashboard を最初に動かせる read side を優先する
  - write side は basic CRUD から始める
  - candidate workflow は sharing / linkage 後に着手する
  - audit/history は最後に横断で入れる
