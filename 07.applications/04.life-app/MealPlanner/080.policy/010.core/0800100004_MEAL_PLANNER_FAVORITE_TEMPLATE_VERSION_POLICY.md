# MealPlanner Favorite Template Version Policy

## 1. purpose
favorite / template が published menu version とどう付き合うかを固定する。

## 2. core_conclusion
- 既定は snapshot 優先
- 自動で最新版へ強制追従しない
- 明示的な再提案 / 再適用時に最新版候補へ寄せる

## 3. favorite_menu policy

### favorite が保持すべきもの
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- created_at 時点の表示文脈

### default_behavior
- お気に入り登録時点の参照と snapshot を保持
- 既存 favorite を自動で最新版へ差し替えない

### when_latest_can_be_suggested
- 再提案時
- 検索結果再表示時
- ユーザーが最新版候補を確認したい時

### rationale
- 突然お気に入りの意味が変わるのを避ける
- household 運用の安定性を優先する

## 4. meal_template policy

### template が保持すべきもの
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- servings
- meal_category
- relative_day_no

### default_behavior
- template は保存時点の snapshot を保持
- template 適用時に、保存済み参照を基本に使う

### rehydrate_policy
- 適用時に参照元が存在しない場合:
  - snapshot 表示で fallback
  - 再提案候補を提示可
- 適用時に最新版候補が存在する場合:
  - 自動差し替えはしない
  - optional update suggestion を出してよい

## 5. published menu version relation

### published menu revised
- version_no が上がっても existing favorite/template は自動更新しない

### user visible note
- 最新版候補があります
- 現在の保存内容をそのまま使うこともできます

## 6. weekly/monthly plan generation relation
- favorite/template を使って plan を作る時:
  - まず保存済み参照 + snapshot を使う
  - その後、suggestion engine が最新版候補を補助提示してよい

## 7. edit_policy
- favorite:
  - 再保存時に最新版へ貼り替えるのは可
- template:
  - 明示編集時に最新版へ差し替えるのは可
- silent migration:
  - 禁止

## 8. non_goals
- favorite/template の自動一括更新
- 過去 plan の後追い一括書き換え
