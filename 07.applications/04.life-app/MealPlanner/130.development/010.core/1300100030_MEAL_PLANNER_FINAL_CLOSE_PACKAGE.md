# MealPlanner Final Close Package

## 1. purpose
MealPlanner の実装前設計フェーズを、どこまで閉じたかをまとめる最終パッケージ文書。

## 2. reached_scope
MealPlanner では、以下が設計として固定済みである。

### business
- アプリ位置づけ
- 無料 / 有料500円
- AIチャットのみサポート
- 日 / 週 / 月提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界

### data_and_api
- life schema
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
- event payload

### governance
- traceability
- consistency matrix
- freeze candidate documents
- review / signoff / post-freeze rules

## 3. not_in_scope_yet
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring
- background sync 実装
- notification delivery 実装

## 4. current_phase_statement
現在は「実装前の設計確定フェーズ」。
MealPlanner は freeze candidate として扱える水準にかなり近い。

## 5. recommended_use
- Boss review 用の最終入口
- freeze candidate 判断用
- 将来の実装移行前の棚卸し用
