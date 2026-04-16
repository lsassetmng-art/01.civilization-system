# MealPlanner Canonical Folder Map

## 1. purpose
MealPlanner 配下の主要フォルダの正本役割を簡潔に示す。

## 2. folder_map

### 010.constitution
- 基本原則
- 責務
- 境界

### 020.architecture
- 構造
- 依存
- 分割
- 受け入れ条件

### 030.model
- entity
- logical schema
- relation
- nullability
- notification logical shape

### 040.runtime
- 実行挙動
- 状態遷移

### 050.flow
- 利用フロー
- 画面遷移

### 060.integration
- CX22073JW
- LifeOS Publish
- LifeOS app integration summary
- notification API exact

### 070.operations
- AIチャットサポート
- ストア境界

### 080.policy
- free / paid
- versioning
- search sort
- quality score
- retention

### 090.interface
- 画面
- 文言
- CSV
- component
- props
- event payload

### 100.security
- private / household / public
- planner / viewer
- security boundary

### 110.infrastructure
- 基盤前提
- 実行基盤観点

### 120.implementation
- 実装境界
- required/optional/nullable
- audit/delete
- physical constraint rules
- ただし実装コードはまだ持たない

### 130.development
- 設計進捗
- レビュー
- 実装まだ禁止の境界
- closeout notes

### 900.meta
- master index
- canonical map
- traceability
- メタ整理

## 3. usage_note
- 新規文書を追加する時は、まず役割に合うフォルダを選ぶ
- 同じテーマの重複文書を増やしすぎない
