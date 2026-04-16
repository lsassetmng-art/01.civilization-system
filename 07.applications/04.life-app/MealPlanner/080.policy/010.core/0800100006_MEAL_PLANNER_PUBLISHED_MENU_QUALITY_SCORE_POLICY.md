# MealPlanner Published Menu Quality Score Policy

## 1. purpose
公開済み献立の quality score を MealPlanner 側でどう利用するかを固定する。

## 2. core_principles
- quality score は補助指標
- 公開可否そのものの決定権は MealPlanner に持たせない
- search / suggestion の並び順補助に使う
- 低品質だからといって無条件非表示にはしない
- deprecated / rejected の扱いは別ルールで制御する

## 3. usage_scope
- published menu search ranking
- published menu suggestion ranking
- same-score tie breaker
- future display badge candidate

## 4. not_usage_scope
- private user_menu の保存可否
- household 内利用可否
- MealPlanner 内での独自審査代替
- 医療的安全保証

## 5. quality_score_input_assumptions
想定される外部メタ:
- reviewed_flag
- quality_score_reference
- locale_validity_scope
- effective_version
- deprecated_flag

## 6. ranking_usage_rules

### direct_search
- exact match を最優先
- その後に quality score を加味
- quality score だけで exact match を逆転させすぎない

### suggestion
- dietary_fit
- budget_fit
- pantry_fit
- household_preference_fit
の後段で quality score を加味する

## 7. display_rules
- 初期版では score 数値そのものを前面表示しない
- 将来必要なら以下の軽い表現に変換可
  - 公開済み
  - レビュー済み
  - 安定版
- 数値のまま見せて誤解を生まないようにする

## 8. penalty_rules
- deprecated_flag = true:
  - 強い減点
- locale mismatch:
  - 中程度減点
- metadata incomplete:
  - 軽度減点

## 9. fallback_rules
- quality score がなくても published menu は利用可
- score null は 0 扱いではなく neutral 扱い
- reviewed_flag がある場合は軽い加点に使ってよい

## 10. non_goals
- social ranking 化
- popularity score 化
- 広告スコア化
