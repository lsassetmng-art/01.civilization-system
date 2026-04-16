# MealPlanner Final Review Checklist

## 1. purpose
実装前に、設計が十分そろっているかを確認するための最終レビュー観点。

## 2. business_check
- アプリの価値は明確か
- 無料 / 有料 500円 の差は自然か
- AIチャットのみサポートの説明は十分か
- 日 / 週 / 月提案の使い分けは明確か
- CSV出力の価値は十分か
- user_menu 追加と公開申請の意味は明確か

## 3. boundary_check
- schema が life で統一されているか
- CX22073JW 正本との境界は明確か
- LifeOS Publish との境界は明確か
- private / household / lifeos_public の違いは明確か
- free / paid と planner / viewer を混同していないか

## 4. data_check
- 主要 entity は揃っているか
- plan_horizon / budget_tier / source_type / publication_status の意味が固定されているか
- snapshot の必要性が明文化されているか
- 履歴は削除ではなく表示制御と整理できているか

## 5. api_check
- 主要 API payload は固定済みか
- request / response の語彙はそろっているか
- required / optional / nullable は固定済みか
- notification settings API の shape はあるか

## 6. ui_check
- 主要画面は揃っているか
- 画面ごとの exact I/O はあるか
- component 分解は済んでいるか
- props / event payload はあるか
- 文言ゆれは抑えられているか

## 7. policy_check
- published menu versioning は固定済みか
- quality score の使い方は限定されているか
- CSV free / paid 差は明確か
- history retention は UI 制御方針で整理できているか

## 8. intentionally_not_done_check
- DDL はまだ出していないか
- SQL はまだ出していないか
- 実装コードはまだ出していないか
- migration はまだ出していないか

## 9. exit_condition
以下を満たせば、実装前設計フェーズはかなり整ったとみなせる
- business / boundary / data / api / ui / policy が一通り固定済み
- 大きな意味変更が残っていない
- あとは実装前の最終棚卸しで進められる
