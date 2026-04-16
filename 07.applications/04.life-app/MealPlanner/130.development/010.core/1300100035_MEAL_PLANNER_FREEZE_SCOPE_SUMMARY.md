# MealPlanner Freeze Scope Summary

## 1. purpose
Freeze 時点で、何が固定済みで何が未着手かを短く示す。

## 2. fixed
- schema: life
- pricing: 無料 / 有料500円
- support: AIチャットのみ
- plan_horizon: daily / weekly / monthly
- budget input: 節約 / 普通 / 多め
- csv: free / paid とも利用可
- user_menu: private 起点
- publish flow: LifeOS 経由
- source of truth: CX22073JW
- state transitions
- authority boundary
- API exact payload
- DB logical schema
- screen exact I/O
- component props / event payload
- history retention
- versioning
- notification settings policy

## 3. not_started
- DDL
- SQL
- migration
- implementation
- runtime wiring

## 4. change_rule
Freeze 後に major change が必要なら、
- consistency matrix
- traceability matrix
- integrated document
- related detail docs
を再確認する。
