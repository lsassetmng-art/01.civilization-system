# MealPlanner Document Update Rules

## 1. purpose
MealPlanner 配下の文書を更新する時の基本ルールを固定する。

## 2. update_principles
- integrated document と下位文書の意味をずらさない
- overview は要約、detail は正本詳細として扱う
- 新しい business rule を入れたら、traceability と consistency も見る
- old wording を残さない
- 実装文脈を設計文書へ混入させない

## 3. mandatory_check_targets_when_updating
新しい設計変更を入れたら、最低限以下を確認する
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- relevant overview docs
- relevant detailed docs

## 4. update_priority_order
1. detail 正本更新
2. integrated document 更新
3. overview 更新
4. consistency / traceability 更新
5. freeze / review 系文書の必要反映

## 5. wording_rules
- schema は life に統一
- pricing は 無料 / 有料500円 に統一
- support は AIチャットのみ に統一
- user_menu は private 起点
- publish は 公開申請 / 審査中 / 公開済み で統一
- CSV は free / paid とも利用可 に統一

## 6. forbidden_update_patterns
- detail を変えずに integrated だけ変える
- old naming を残したまま新 naming を足す
- 実装都合で business rule を黙って変える
- 別責務のシステム境界を MealPlanner 側文書へ取り込む

## 7. non_goals
- Git 運用ルールの詳細
- branch naming
- commit policy
