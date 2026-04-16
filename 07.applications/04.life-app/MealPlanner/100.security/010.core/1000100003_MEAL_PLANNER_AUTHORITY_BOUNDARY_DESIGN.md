# MealPlanner Authority Boundary Design

## 1. purpose
MealPlanner の権限境界と公開境界を実装前に固定する。

## 2. authority_axes
- plan_axis:
  - free
  - paid
- role_axis:
  - planner
  - viewer
- visibility_axis:
  - private
  - household
  - lifeos_public

## 3. plan_boundary

### free
allowed:
- 日次 / 週次 / 月次の献立提案
- 朝昼夜間食管理
- budget_tier 設定
- 買い物リスト生成
- CSV 出力
- user_menu 追加
- user_menu 編集
- user_menu 公開申請
- family_settings basic
- history record basic

limited:
- template 保存数
- favorite 保存数
- history 閲覧期間

not_allowed_or_teaser:
- pantry_inventory full
- family 共同運用 full
- pantry priority suggestion
- nutrition summary
- LifeOS integration full
- shared notification
- AIチャットサポート

### paid
allowed:
- free の全機能
- pantry_inventory full
- family 共同運用
- shared shopping check
- pantry priority suggestion
- nutrition summary
- LifeOS integration full
- shared notification
- AIチャットサポート

## 4. role_boundary

### planner
allowed:
- meal_plan generate
- meal_slot update
- template save / apply
- favorite add / remove
- shopping_list generate
- shopping item check
- pantry edit
- family settings update
- budget settings update
- user_menu create / update
- publish request submit
- csv export

### viewer
allowed:
- meal_plan view
- daily / weekly / monthly view
- shopping_list view
- meal_history view
- csv export view action optional_by_policy
- own check action only if household policy allows

not_allowed:
- family settings update
- budget settings update
- pantry full edit
- publish request submit by default
- template save by default

## 5. visibility_boundary

### private
meaning:
- 作成 household 内の内部利用
allowed_access:
- same household の planner
- same household の viewer if shared in-app policy allows
not_allowed:
- other households
- LifeOS public catalog

### household
meaning:
- app 内 family / household 共有
allowed_access:
- same household members according to planner/viewer
not_allowed:
- outside household
- public catalog

### lifeos_public
meaning:
- 公開済み再利用候補
allowed_access:
- other users as read / suggestion candidate
not_allowed:
- 元作成者以外の直接上書き編集
rules:
- 公開は publish flow 通過後のみ
- 公開後の修正は版管理前提

## 6. action_boundary_matrix

### meal_plan
- create_generate:
  - free planner: yes
  - paid planner: yes
  - viewer: no
- update_slot:
  - planner: yes
  - viewer: no
- view:
  - planner: yes
  - viewer: yes

### shopping_list
- generate:
  - planner: yes
- check_item:
  - free: basic single use
  - paid: household shared
- view:
  - planner/viewer: yes

### pantry_inventory
- free planner: teaser_or_no
- paid planner: yes
- viewer: view_only optional
- paid viewer edit: no by default

### family_settings
- planner: yes
- viewer: no

### budget_settings
- planner: yes
- viewer: no

### user_menu
- create_private:
  - planner: yes
- edit_private:
  - creator planner: yes
- submit_publish_request:
  - planner: yes
- edit_published:
  - direct overwrite: no
  - revise as next version: allowed_by_future_policy

## 7. AI chat support boundary
- support_mode:
  - ai_chat_only
- included:
  - 操作案内
  - 一般案内
  - 基本トラブルシュート
- excluded:
  - 有人電話サポート
  - 個別コンサル
  - 医療相談
  - 手作業代行

## 8. security_rules
- household_id を跨ぐ更新は禁止
- private から public への直接確定遷移は禁止
- viewer に管理系 write action を渡さない
- publication_status は client override 不可
- source_type が cx22073jw_base の場合、編集導線に乗せない

## 9. non_goals
- RBAC を過剰に複雑化しない
- 企業向け強監査を持ち込まない
- LifeOS 公開審査内部権限まで MealPlanner に書かない
