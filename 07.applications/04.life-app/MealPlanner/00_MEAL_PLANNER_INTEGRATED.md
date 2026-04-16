# MealPlanner Integrated Design

## 1. アプリ基本情報
- app_name_en: MealPlanner
- app_name_ja: 献立管理アプリ
- placement: 01.civilization-system/07.applications/04.life-app/MealPlanner
- schema_name: life
- support_mode: ai_chat_only

## 2. ポジショニング
- 毎日の献立作成に特化した健康支援アプリ
- 医療診断ではなく生活改善支援を主目的とする
- 日 / 週 / 月の3粒度で献立提案を扱う
- 家族人数、予算帯、好み、制約、在庫、実績を踏まえて献立運用を支援する
- 買い物導線、CSV出力、ユーザー献立追加と公開申請までを扱う

## 3. 課金設計
- 無料: 0円
- 有料: 500円 / 月
- サポート: AIチャットのみ

### 無料で使える主機能
- 日 / 週 / 月の献立提案
- 朝 / 昼 / 夜 / 間食管理
- budget_tier 設定（節約 / 普通 / 多め）
- 買い物リスト生成
- CSV出力
- user_menu 追加 / 編集
- 公開申請
- family settings basic
- meal history basic

### 有料で解放される主機能
- pantry_inventory full
- 家族共有
- 共同買い物チェック
- 栄養簡易表示
- 余り食材優先提案
- LifeOS連携
- 共有通知
- AIチャットサポート

## 4. 主機能
- 日次献立提案
- 週次献立提案
- 月次献立提案
- 朝 / 昼 / 夜 / 間食管理
- 買い物リスト生成
- 献立表CSV出力
- user_menu 追加 / 編集
- user_menu の LifeOS 公開申請
- 家族設定
- 予算帯設定
- 食事制約設定
- 実績記録
- 履歴閲覧

## 5. 主要設計原則
- schema は life を正とする
- 基礎知識 / 公開知識 / 辞書知識の正本は CX22073JW 側を前提とする
- MealPlanner は household 固有設定、private データ、実績、運用状態を持つ
- 公開審査本体は LifeOS 側責務
- MealPlanner は公開申請と状態反映を扱う
- 共通部品の正式採用判断は別チャットで扱う
- MealPlanner 側では依存前提のみを保持する
- app 単体でMVP開始可能、後で共通化差し替え可能な構造にする

## 6. 主要データ境界

### MealPlanner 側で持つもの
- family_profile
- family_member_preference
- budget_profile
- goal_profile
- dietary_rule
- meal_plan
- meal_slot
- meal_history
- shopping_list
- shopping_list_item
- pantry_item
- user_menu
- user_menu_ingredient
- user_menu_publish_request
- meal_plan_export_job
- notification_preference
- reference cache / overlay / snapshot

### CX22073JW を正本とするもの
- ingredient_master_base
- ingredient_multilingual_name_dictionary
- ingredient_synonym_dictionary
- ingredient_category_taxonomy
- allergen_tag_master
- dietary_tag_master
- nutrition_reference_base
- seasonality_reference
- menu_master_base
- menu_category_taxonomy
- cuisine_type_master
- meal_timing_tag_master
- substitution_knowledge
- shopping_knowledge
- daily / weekly / monthly pattern knowledge
- published_user_menu_catalog
- provenance_and_quality_metadata

## 7. 外部連携
- CX22073JW:
  - 基礎知識 / 公開知識 / 辞書知識 / 参照知識の読取
- LifeOS Publish:
  - user_menu 公開申請
  - 公開状態同期
- BodyMetrics:
  - 体重目標 / 傾向連携
- TrainingCoach:
  - 活動量ヒント連携
- MoneyPlanner:
  - 食費予算傾向連携

## 8. 状態遷移
### meal_plan.plan_status
- draft
- active
- completed
- archived

### meal_slot.actual_status
- planned
- changed
- skipped
- eating_out
- convenience_food

### shopping_list.purchase_status
- draft
- active
- completed
- archived

### user_menu.publication_status
- private
- draft
- review_pending
- published
- rejected

### user_menu_publish_request.submission_status
- draft
- requested
- review_pending
- approved
- rejected
- published

### meal_plan_export_job.export_status
- requested
- generated
- failed

## 9. CSV方針
- CSV出力は free / paid の両方で利用可
- UTF-8 を正とする
- 1食1行を基本とする
- free:
  - standard column set
- paid:
  - standard column set + optional column set

### standard column set
- plan_scope
- date
- weekday
- meal_category
- menu_name
- source_type
- servings
- estimated_cost
- currency_code
- memo
- actual_status

### optional column set
- household_name
- budget_tier
- derived_budget_amount
- estimated_kcal
- changed_flag
- changed_reason
- publication_status
- export_generated_at

## 10. user_menu / 公開方針
- user_menu は初期状態 private
- household 共有は app 内で扱う
- lifeos_public は publish flow 通過後のみ
- 公開済み献立は直接上書きしない
- 公開後の修正は新しい版として扱う
- favorite / template は snapshot 優先
- 自動で最新版へ強制追従しない

## 11. 履歴方針
- DB では短期削除しない
- free:
  - 直近30日を標準閲覧範囲
- paid:
  - 長期閲覧可
- 課金差は削除ではなく表示制御で扱う

## 12. 通知方針
- notification_preference を user 単位で保持
- daily / weekly / monthly / shopping / expiry を扱う
- shared_notice は paid のみ
- 医療的注意喚起は扱わない

## 13. UI / 文言方針
- 家庭向け
- わかりやすい
- 強すぎない
- 医療判断を想起させない
- 課金訴求は押しつけすぎない
- サポートはAIチャットのみです
- 本アプリは生活改善支援を目的としています
- 医療診断や治療判断は行いません

## 14. 現在の設計状態
- business_readiness: high
- design_readiness: high
- implementation_readiness: medium_high

## 15. 現段階で intentionally not doing
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring

## 16. 次に進める設計候補
- component props の framework 別落とし込み
- notification settings の保存形と画面結線の細部調整
- 公開済み献立の quality score 利用詳細
- integrated note の最終棚卸し
