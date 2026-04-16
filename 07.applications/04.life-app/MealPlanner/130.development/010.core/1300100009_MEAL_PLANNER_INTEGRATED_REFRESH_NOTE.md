# MealPlanner Integrated Refresh Note

## 1. purpose
ここまでの設計確定内容を統合入口へ反映するための更新メモ。

## 2. refresh_targets
- 00_MEAL_PLANNER_INTEGRATED.md
- architecture overview
- model overview
- interface overview
- operations / policy overview

## 3. reflect_items
- schema is life
- support is ai_chat_only
- csv is available on both free and paid
- paid optional csv columns policy
- notification settings api exact exists
- published menu versioning is snapshot-first
- published menu quality score is ranking helper only
- history retention is ui visibility difference, not short-term delete
- component props and event payload detail are fixed

## 4. no_new_business_change
今回の更新は新しい business rule を増やすものではなく、
既存設計の統合反映である。

## 5. phase_statement
実装はまだ開始しない。
