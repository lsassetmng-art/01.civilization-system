# MealPlanner Domain Boundary

## app 固有責務
- meal_plan / meal_slot / meal_history の意味管理
- 日次 / 週次 / 月次提案ロジック
- 献立テンプレート運用
- 食事記録の運用意味
- CSV 出力
- private 献立編集
- 課金状態による画面出し分け

## 外部依存前提
- CX22073JW:
  - 食材基礎知識
  - 基本献立
  - 多言語辞書
  - 季節知識
  - 栄養参照
  - 公開済みユーザー献立
- LifeOS Publish:
  - ユーザー献立公開申請
  - 公開状態反映

## 非責務
- 医療診断
- 治療食の確定判断
- 食材EC自動発注
- 高度専門栄養管理
