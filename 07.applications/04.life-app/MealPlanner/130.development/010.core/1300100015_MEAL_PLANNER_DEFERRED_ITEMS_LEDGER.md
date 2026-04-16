# MealPlanner Deferred Items Ledger

## 1. purpose
今は実装前設計フェーズのため、あえて後回しにしている項目を整理する。

## 2. deferred_now_but_known

### implementation_side
- DDL
- SQL
- migration
- API server implementation
- UI implementation
- notification delivery implementation
- sync scheduler
- auth wiring
- background job design

### design_refinement_side
- framework 別 component props 書き換え
- deep link 詳細
- animation / transition 詳細
- notification OS permission flow
- favorite/template 最新版候補提示 UI の細部
- published menu version 履歴閲覧 UI
- search card の quality badge 詳細
- CSV locale 見出しの全言語定義

### cross_system_side
- LifeOS publish 審査内部状態
- CX22073JW 側の物理 schema
- MoneyPlanner / BodyMetrics / TrainingCoach 側の exact transport
- store refund flow の詳説

## 3. defer_reason_patterns
- まだ実装に入らないため
- 他システム責務のため
- 現時点で business 決定を必要としないため
- UI 微調整のため
- 物理設計に寄りすぎるため

## 4. safe_to_defer_judgement
現時点で deferred item は、
MealPlanner の主要 business / data / api / ui / boundary を壊さない範囲に収まっている。

## 5. when_to_reopen
- 実装フェーズ移行時
- 別チャットの共通部品正式採用時
- LifeOS publish 側の contract 詳細が固まった時
- framework 決定時
