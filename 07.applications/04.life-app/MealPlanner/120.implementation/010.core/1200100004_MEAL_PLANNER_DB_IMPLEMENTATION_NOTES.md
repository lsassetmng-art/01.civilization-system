# MealPlanner DB Implementation Notes

## 1. implementation_direction
- 初期実装では logical schema を優先し、物理型は後で固定する
- JSON 配列で始めてよい列は後で正規化可能にする
- app 単体で動かすため、reference_cache は先に導入してよい
- MealPlanner の物理配置 schema は life を正とする
- MealPlanner 固有表も life schema 配下に配置する

## 2. first_wave_tables
優先して作る表:
- family_profile
- family_member_preference
- budget_profile
- goal_profile
- dietary_rule
- meal_plan
- meal_slot
- meal_history
- pantry_item
- shopping_list
- shopping_list_item
- user_menu
- user_menu_ingredient
- user_menu_publish_request
- meal_plan_export_job

## 3. second_wave_tables
- meal_template
- meal_template_slot
- favorite_menu
- catalog_source_ref
- ingredient_reference_cache
- menu_reference_cache
- published_user_menu_reference_cache

## 4. implementation_warnings
- menu_reference_id は source_type と組で扱う
- snapshot 列を軽視しない
- private / household / public の境界を曖昧にしない
- budget_tier を金額入力の従属にしない
- CSV 出力対象列は API exact payload と合わせる
- life schema はユーザー自身の生活データ領域として扱う
- CX22073JW 正本知識を life schema 側へ無秩序に複製しない

## 5. next_fix_items
- 各列の型 exact 固定
- nullability exact 固定
- index exact 固定
- unique 制約 exact 固定
- 監査列 exact 固定
- 論理参照を FK に落とす範囲の確定
