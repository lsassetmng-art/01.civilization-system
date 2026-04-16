# MealPlanner Design Status Summary

## 1. current_status
MealPlanner は、実装前の設計確定をかなり進めた状態にある。

## 2. fixed_major_items
- アプリの位置づけ
- 無料 / 有料 500円
- AIチャットサポートのみ
- 日 / 週 / 月提案
- budget_tier
- CSV 出力
- user_menu 追加
- LifeOS 公開申請
- CX22073JW 境界
- API exact payload
- DB logical schema
- 画面 exact I/O
- required / optional / nullable
- index / unique / FK / audit 方針
- 状態遷移
- 権限境界
- UI copy
- validation copy
- CSV free / paid 差
- published menu 版管理方針

## 3. implementation_readiness_view
- business_readiness:
  - high
- design_readiness:
  - high
- implementation_readiness:
  - medium_high

## 4. still_open_but_not_blocking
- favorite / template の version 追従方針詳細
- 公開済み献立の quality score 利用詳細
- notification settings API 詳細
- FAQ のストア返金案内導線詳細
- component props exact

## 5. intentionally_not_done
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring

## 6. next_possible_design_steps
- component props 設計
- favorite / template の version 追従詳細
- 公開済み献立の検索並び順ルール
- AIチャット FAQ の store / billing 導線詳細

## 7. phase_statement
現在は「実装準備前の設計確定フェーズ」。
実装はまだ開始しない。
