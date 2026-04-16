# MealPlanner Old Wording Cleanup Checklist

## 1. purpose
旧案や旧表現の残骸を見つけるためのチェックリスト。

## 2. critical_old_wordings

### pricing_old
search_for:
- plus
- family
- 300円
- 700円
pass_condition:
- 無料 / 有料500円 に統一

### schema_old
search_for:
- app_meal_planner
- app schema
pass_condition:
- life に統一

### support_old
search_for:
- 電話サポート
- 有人サポート
- メール個別サポート
pass_condition:
- AIチャットのみ に統一

### horizon_old
search_for:
- 週次のみ
- weekly only
pass_condition:
- 日 / 週 / 月 に統一

### publish_old
search_for:
- private から直接公開
- published 直接更新
pass_condition:
- 公開申請 / 審査中 / 公開済み の流れに統一

### csv_old
search_for:
- free では csv 不可
- paid only csv
pass_condition:
- free / paid とも csv 可 に統一

## 3. soft_old_wordings

### ui_words
prefer:
- 献立を作る
- 差し替える
- 実績を記録
- 公開準備中
- 審査中
- 公開済み
- 却下

avoid_when_possible:
- プラン生成
- スロット更新
- draft
- review_pending
- published
- rejected

## 4. review_note
old wording が見つかったら、
detail -> integrated -> overview の順で整合を確認する。
