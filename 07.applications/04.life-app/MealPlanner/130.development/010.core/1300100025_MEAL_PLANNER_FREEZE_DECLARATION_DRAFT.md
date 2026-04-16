# MealPlanner Freeze Declaration Draft

## 1. purpose
MealPlanner を実装前の設計 freeze candidate として扱うための宣言草案。

## 2. draft
MealPlanner は、以下の主要論点について実装前設計として固定済みとみなす。

- schema は life
- 課金は 無料 / 有料500円
- サポートは AIチャットのみ
- 日 / 週 / 月の献立提案を扱う
- 予算入力は 節約 / 普通 / 多め
- CSV は free / paid とも利用可
- user_menu は private 起点で、LifeOS 公開申請を通じて公開可能
- 基礎知識の正本は CX22073JW 前提
- published menu は直接上書きしない
- favorite / template は snapshot-first
- 履歴は DB保持し、free / paid 差は閲覧範囲で制御する
- 通知設定の正本は user 単位
- 実装はまだ開始しない

## 3. freeze_meaning
- 大きな business rule は動かさない
- 小さな文言調整はありうる
- 実装前の手戻りを減らすための freeze candidate とする

## 4. not_included
- DDL
- SQL
- migration
- 実装コード
- runtime wiring

## 5. activation_condition
- final review checklist を通す
- change impact 観点で大きな抜けがない
- Boss 判断で freeze candidate 化する
