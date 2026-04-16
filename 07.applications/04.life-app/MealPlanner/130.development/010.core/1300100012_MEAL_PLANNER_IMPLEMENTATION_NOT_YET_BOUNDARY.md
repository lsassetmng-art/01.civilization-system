# MealPlanner Implementation Not Yet Boundary

## 1. purpose
今は設計フェーズであり、まだ実装に入らないことを明確化する。

## 2. not_yet_items
- DDL
- SQL
- migration
- API server code
- UI code
- DB apply 手順
- edge function 実装
- scheduler 実装
- auth wiring
- background sync wiring

## 3. allowed_now
- 設計文書更新
- 境界固定
- 状態遷移整理
- API / DB / UI の意味合わせ
- CSV仕様固定
- policy 固定
- integration contract 整理

## 4. why_not_yet
- 先に設計のズレを減らすため
- 公開境界、課金境界、知識正本境界が大きいアプリだから
- いきなり SQL に落とすと手戻りが大きくなるため

## 5. move_to_implementation_condition
- 主要設計の棚卸し完了
- integrated document 反映完了
- review checklist で大きな穴なし
- Boss 判断で実装フェーズ移行

## 6. current_phase_statement
現在は「実装前の設計確定フェーズ」。
