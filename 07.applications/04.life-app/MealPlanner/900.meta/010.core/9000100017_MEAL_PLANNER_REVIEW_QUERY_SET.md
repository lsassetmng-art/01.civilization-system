# MealPlanner Review Query Set

## 1. purpose
grep / find などで設計監査する時の検索観点をまとめる。

## 2. query_groups

### old_pricing
- plus
- family
- 300円
- 700円

### old_schema
- app_meal_planner
- app schema

### old_support
- 電話サポート
- 有人サポート
- メールサポート

### old_publish
- directly published
- private to published
- published direct update

### implementation_leak
- CREATE TABLE
- ALTER TABLE
- INSERT INTO
- UPDATE life.
- psql
- migration

### missing_key_rules
- AIチャットのみ
- 無料 / 有料500円
- schema は life
- CX22073JW
- snapshot-first
