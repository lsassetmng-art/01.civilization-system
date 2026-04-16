# MealPlanner Cross Document Audit Playbook

## 1. purpose
MealPlanner 配下の文書を横断して、設計矛盾を見つけるための監査観点を整理する。

## 2. audit_targets
- 00_MEAL_PLANNER_INTEGRATED.md
- overview 群
- API / model / interface / policy / runtime / integration 文書
- meta / review / freeze 系文書

## 3. audit_points

### audit_01_schema_name
look_for:
- app_meal_planner
- app schema
pass_condition:
- life を正として統一されている

### audit_02_pricing
look_for:
- plus
- family
- 300円
- 700円
pass_condition:
- 無料 / 有料500円 に統一されている

### audit_03_support_mode
look_for:
- 電話サポート
- 有人サポート
- メール個別対応
pass_condition:
- AIチャットのみ に統一されている

### audit_04_plan_horizon
look_for:
- 週のみ前提
- 日/月が抜けている箇所
pass_condition:
- daily / weekly / monthly が主要文書で一致している

### audit_05_csv_policy
look_for:
- free で CSV 不可
- paid only csv
pass_condition:
- free / paid とも CSV 可
- paid は optional columns 可

### audit_06_cx22073jw_boundary
look_for:
- MealPlanner が基礎知識正本のように書かれている箇所
pass_condition:
- CX22073JW が基礎知識 / 公開知識 / 辞書知識の正本

### audit_07_publish_policy
look_for:
- private -> published 直接確定
- published 直接上書き
pass_condition:
- publish flow 経由
- versioning 前提

### audit_08_history_retention
look_for:
- free 用短期削除
- paid only storage
pass_condition:
- DB保持
- UI 閲覧範囲差

### audit_09_notification_scope
look_for:
- household が notification 正本と断定
pass_condition:
- user 単位正本
- household は文脈保持

### audit_10_implementation_leak
look_for:
- DDL
- CREATE TABLE
- migration
- 実装コード
pass_condition:
- 実装まだ禁止境界が守られている

## 4. audit_method
1. integrated doc を読む
2. consistency matrix を読む
3. requirement traceability matrix を読む
4. 各 major theme を spot check する
5. 差分があれば integrated / overview / detail のどこが古いかを切り分ける

## 5. outcome_types
- pass:
  - 問題なし
- minor_adjustment:
  - 文言微修正で吸収可
- major_conflict:
  - 設計ルール再確認が必要

## 6. non_goals
- physical implementation review
- performance review
- production rollout review
