# MealPlanner Design Freeze Declaration

## 1. declaration
MealPlanner は、**実装前の設計 Freeze** 状態として扱う。

## 2. freeze_date
- 2026-04-15

## 3. freeze_timestamp
- 2026-04-15 05:14:44 +0900

## 4. freeze_scope
以下を Freeze 対象とする。

### business
- アプリ位置づけ
- 無料 / 有料500円
- サポートは AIチャットのみ
- 日 / 週 / 月提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界

### data_and_api
- schema は life
- 主要 entity 群
- API exact payload
- screen exact I/O
- required / optional / nullable
- index / unique / FK / audit 方針
- notification settings API / logical shape

### policy_and_runtime
- 状態遷移
- 権限境界
- published menu versioning
- favorite / template snapshot-first
- history retention
- CSV free / paid 差
- quality score 利用方針

### interface
- UI copy
- validation copy
- CSV exact columns
- component decomposition
- component props
- component event payload

### governance
- traceability
- consistency matrix
- freeze candidate documents
- post-freeze change rule

## 5. explicitly_not_included
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring
- notification delivery 実装

## 6. freeze_meaning
- 大きな business rule は軽く動かさない
- 小さな wording 調整はありうる
- 変更が必要な場合は post-freeze 変更ルールに従う

## 7. current_phase
- design_freeze

## 8. implementation_status
- not_started

## 9. note
この Freeze は **設計 Freeze** であり、**実装開始宣言ではない**。
