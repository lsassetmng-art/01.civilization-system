# MealPlanner Publish Contract Summary

## 1. purpose
user_menu 公開申請まわりの contract を簡潔に固定する。

## 2. request_from_mealplanner
- menu_master_id_or_user_menu_id
- requested_visibility_scope
- publish_note_nullable
- source_app = MealPlanner
- user_id
- household_id
- submitted_at_context

## 3. response_to_mealplanner
- submission_id
- submission_status
- publication_status
- requested_visibility_scope
- review_note_nullable
- reflected_at

## 4. allowed_requested_visibility_scope
- lifeos_public

## 5. mealplanner_side_rules
- private から直接 published 確定しない
- publish request 前に最低限の user_menu 完成度を満たす
- published になっても private 元データの household 文脈は保持する
- reject 後は revise -> re-request を許可する

## 6. lifecycle_summary
- create private
- prepare publish
- request publish
- review pending
- approved or rejected
- reflected published if approved

## 7. non_goals
- 審査アルゴリズム
- 収益分配
- ライセンス条文
