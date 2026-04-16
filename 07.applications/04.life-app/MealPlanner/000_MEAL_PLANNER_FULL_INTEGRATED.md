# MealPlanner Full Integrated

## 1. purpose
- MealPlanner 配下の Markdown 設計書を 1 本へ統合した再生成版

## 2. root
- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/MealPlanner

## 3. output
- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/MealPlanner/000_MEAL_PLANNER_FULL_INTEGRATED.md

## 4. generated_at
- 2026-04-15 05:20:57 +0900

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

## 5. manifest
- 00_MEAL_PLANNER_INTEGRATED.md
- 010.constitution/010.core/0100100000_CORE_INDEX.md
- 010.constitution/010.core/0100100001_CORE_OVERVIEW.md
- 010.constitution/010.core/0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
- 010.constitution/0100000_CONSTITUTION_INDEX.md
- 010.constitution/0100001_CONSTITUTION_OVERVIEW.md
- 010.constitution/020.domain/0100200000_DOMAIN_INDEX.md
- 010.constitution/020.domain/0100200001_DOMAIN_OVERVIEW.md
- 010.constitution/020.domain/0100200002_MEAL_PLANNER_DOMAIN_BOUNDARY.md
- 020.architecture/010.core/0200100000_CORE_INDEX.md
- 020.architecture/010.core/0200100001_CORE_OVERVIEW.md
- 020.architecture/010.core/0200100002_MEAL_PLANNER_ARCHITECTURE.md
- 020.architecture/010.core/0200100003_MEAL_PLANNER_ARCHITECTURE_ACCEPTANCE_CONDITIONS.md
- 020.architecture/010.core/0200100004_MEAL_PLANNER_ARCHITECTURE_REVIEW_LENS.md
- 020.architecture/020.domain/0200200000_DOMAIN_INDEX.md
- 020.architecture/020.domain/0200200001_DOMAIN_OVERVIEW.md
- 020.architecture/0200000_ARCHITECTURE_INDEX.md
- 020.architecture/0200001_ARCHITECTURE_OVERVIEW.md
- 020.architecture/030.integration/0200300000_INTEGRATION_INDEX.md
- 020.architecture/030.integration/0200300001_INTEGRATION_OVERVIEW.md
- 030.model/010.core/0300100000_CORE_INDEX.md
- 030.model/010.core/0300100001_CORE_OVERVIEW.md
- 030.model/020.domain/0300200000_DOMAIN_INDEX.md
- 030.model/020.domain/0300200001_DOMAIN_OVERVIEW.md
- 030.model/020.domain/0300200002_MEAL_PLANNER_DOMAIN_MODEL.md
- 030.model/020.domain/0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- 030.model/020.domain/0300200004_MEAL_PLANNER_TABLE_RELATION_OVERVIEW.md
- 030.model/020.domain/0300200005_MEAL_PLANNER_NULLABILITY_AND_DEFAULT_POLICY.md
- 030.model/020.domain/0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md
- 030.model/020.domain/0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md
- 030.model/0300000_MODEL_INDEX.md
- 030.model/0300001_MODEL_OVERVIEW.md
- 040.runtime/010.core/0400100000_CORE_INDEX.md
- 040.runtime/010.core/0400100001_CORE_OVERVIEW.md
- 040.runtime/020.domain/0400200000_DOMAIN_INDEX.md
- 040.runtime/020.domain/0400200001_DOMAIN_OVERVIEW.md
- 040.runtime/020.domain/0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md
- 040.runtime/020.domain/0400200003_MEAL_PLANNER_STATE_TRANSITION_DESIGN.md
- 040.runtime/0400000_RUNTIME_INDEX.md
- 040.runtime/0400001_RUNTIME_OVERVIEW.md
- 050.flow/010.core/0500100000_CORE_INDEX.md
- 050.flow/010.core/0500100001_CORE_OVERVIEW.md
- 050.flow/020.domain/0500200000_DOMAIN_INDEX.md
- 050.flow/020.domain/0500200001_DOMAIN_OVERVIEW.md
- 050.flow/020.domain/0500200002_MEAL_PLANNER_USER_FLOW.md
- 050.flow/020.domain/0500200003_MEAL_PLANNER_SCREEN_NAVIGATION_TRANSITION_MATRIX.md
- 050.flow/0500000_FLOW_INDEX.md
- 050.flow/0500001_FLOW_OVERVIEW.md
- 060.integration/010.core/0600100000_CORE_INDEX.md
- 060.integration/010.core/0600100001_CORE_OVERVIEW.md
- 060.integration/010.core/0600100002_API_REQUEST_RESPONSE_EXACT_PAYLOAD_POLICY.md
- 060.integration/010.core/0600100003_NOTIFICATION_SETTINGS_API_EXACT.md
- 060.integration/010.core/0600100004_MEAL_PLANNER_LIFEOS_INTEGRATION_CONTRACT_SUMMARY.md
- 060.integration/020.cx22073jw/0600200000_CX22073JW_INDEX.md
- 060.integration/020.cx22073jw/0600200001_CX22073JW_OVERVIEW.md
- 060.integration/020.cx22073jw/0600200002_CX22073JW_INTEGRATION.md
- 060.integration/020.cx22073jw/0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- 060.integration/030.lifeos_publish/0600300000_LIFEOS_PUBLISH_INDEX.md
- 060.integration/030.lifeos_publish/0600300001_LIFEOS_PUBLISH_OVERVIEW.md
- 060.integration/030.lifeos_publish/0600300002_LIFEOS_PUBLISH_INTEGRATION.md
- 060.integration/030.lifeos_publish/0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md
- 060.integration/0600000_INTEGRATION_INDEX.md
- 060.integration/0600001_INTEGRATION_OVERVIEW.md
- 070.operations/010.core/0700100000_CORE_INDEX.md
- 070.operations/010.core/0700100001_CORE_OVERVIEW.md
- 070.operations/010.core/0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
- 070.operations/010.core/0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md
- 070.operations/0700000_OPERATIONS_INDEX.md
- 070.operations/0700001_OPERATIONS_OVERVIEW.md
- 080.policy/010.core/0800100000_CORE_INDEX.md
- 080.policy/010.core/0800100001_CORE_OVERVIEW.md
- 080.policy/010.core/0800100002_MEAL_PLANNER_POLICY.md
- 080.policy/010.core/0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- 080.policy/010.core/0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
- 080.policy/010.core/0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md
- 080.policy/010.core/0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md
- 080.policy/010.core/0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
- 080.policy/0800000_POLICY_INDEX.md
- 080.policy/0800001_POLICY_OVERVIEW.md
- 090.interface/010.core/0900100000_CORE_INDEX.md
- 090.interface/010.core/0900100001_CORE_OVERVIEW.md
- 090.interface/010.core/0900100002_MEAL_PLANNER_UI_GATING.md
- 090.interface/010.core/0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- 090.interface/010.core/0900100004_MEAL_PLANNER_VALIDATION_COPY_EXACT.md
- 090.interface/010.core/0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
- 090.interface/010.core/0900100007_MEAL_PLANNER_TINY_COPY_ADJUSTMENTS.md
- 090.interface/010.core/0900100008_MEAL_PLANNER_INTERFACE_ACCEPTANCE_CHECK.md
- 090.interface/020.screen/0900200000_SCREEN_INDEX.md
- 090.interface/020.screen/0900200001_SCREEN_OVERVIEW.md
- 090.interface/020.screen/0900200002_MEAL_PLANNER_SCREEN_LIST.md
- 090.interface/020.screen/0900200003_SCREEN_API_MAPPING.md
- 090.interface/020.screen/0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- 090.interface/020.screen/0900200005_MEAL_PLANNER_SCREEN_STATE_GATING.md
- 090.interface/020.screen/0900200006_MEAL_PLANNER_SCREEN_EVENT_ACTION_MATRIX.md
- 090.interface/020.screen/0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
- 090.interface/020.screen/0900200008_MEAL_PLANNER_UI_COMPONENT_DECOMPOSITION.md
- 090.interface/020.screen/0900200009_MEAL_PLANNER_COMPONENT_PROPS_DESIGN.md
- 090.interface/020.screen/0900200010_MEAL_PLANNER_COMPONENT_EVENT_PAYLOAD_DETAIL.md
- 090.interface/020.screen/0900200011_MEAL_PLANNER_COMPONENT_PROPS_REQUIRED_OPTIONAL_MATRIX.md
- 090.interface/0900000_INTERFACE_INDEX.md
- 090.interface/0900001_INTERFACE_OVERVIEW.md
- 100.security/010.core/1000100000_CORE_INDEX.md
- 100.security/010.core/1000100001_CORE_OVERVIEW.md
- 100.security/010.core/1000100002_MEAL_PLANNER_SECURITY_POLICY.md
- 100.security/010.core/1000100003_MEAL_PLANNER_AUTHORITY_BOUNDARY_DESIGN.md
- 100.security/1000000_SECURITY_INDEX.md
- 100.security/1000001_SECURITY_OVERVIEW.md
- 110.infrastructure/010.core/1100100000_CORE_INDEX.md
- 110.infrastructure/010.core/1100100001_CORE_OVERVIEW.md
- 110.infrastructure/1100000_INFRASTRUCTURE_INDEX.md
- 110.infrastructure/1100001_INFRASTRUCTURE_OVERVIEW.md
- 120.implementation/010.core/1200100000_CORE_INDEX.md
- 120.implementation/010.core/1200100001_CORE_OVERVIEW.md
- 120.implementation/010.core/1200100002_MEAL_PLANNER_IMPLEMENTATION_SCOPE.md
- 120.implementation/010.core/1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- 120.implementation/010.core/1200100004_MEAL_PLANNER_DB_IMPLEMENTATION_NOTES.md
- 120.implementation/010.core/1200100005_MEAL_PLANNER_SCREEN_IMPLEMENTATION_NOTES.md
- 120.implementation/010.core/1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md
- 120.implementation/010.core/1200100007_MEAL_PLANNER_FIELD_ALIGNMENT_RULES.md
- 120.implementation/010.core/1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md
- 120.implementation/010.core/1200100009_MEAL_PLANNER_PHYSICAL_CONSTRAINT_RULES.md
- 120.implementation/1200000_IMPLEMENTATION_INDEX.md
- 120.implementation/1200001_IMPLEMENTATION_OVERVIEW.md
- 130.development/010.core/1300100000_CORE_INDEX.md
- 130.development/010.core/1300100001_CORE_OVERVIEW.md
- 130.development/010.core/1300100002_MEAL_PLANNER_DEVELOPMENT_PLAN.md
- 130.development/010.core/1300100003_MEAL_PLANNER_DESIGN_CONSOLIDATION_NOTE.md
- 130.development/010.core/1300100004_MEAL_PLANNER_DESIGN_BUNDLE_02_NOTE.md
- 130.development/010.core/1300100005_MEAL_PLANNER_DESIGN_STATUS_SUMMARY.md
- 130.development/010.core/1300100006_MEAL_PLANNER_DESIGN_BUNDLE_04_NOTE.md
- 130.development/010.core/1300100007_MEAL_PLANNER_DESIGN_BUNDLE_05_NOTE.md
- 130.development/010.core/1300100009_MEAL_PLANNER_INTEGRATED_REFRESH_NOTE.md
- 130.development/010.core/1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md
- 130.development/010.core/1300100011_MEAL_PLANNER_FINAL_REVIEW_CHECKLIST.md
- 130.development/010.core/1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
- 130.development/010.core/1300100013_MEAL_PLANNER_NEXT_DESIGN_CANDIDATES.md
- 130.development/010.core/1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 130.development/010.core/1300100015_MEAL_PLANNER_DEFERRED_ITEMS_LEDGER.md
- 130.development/010.core/1300100016_MEAL_PLANNER_PHASE_CLOSEOUT_NOTE.md
- 130.development/010.core/1300100017_MEAL_PLANNER_DESIGN_FREEZE_CANDIDATE_NOTE.md
- 130.development/010.core/1300100018_MEAL_PLANNER_FINAL_ACTION_LEDGER.md
- 130.development/010.core/1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
- 130.development/010.core/1300100020_MEAL_PLANNER_DESIGN_FREEZE_READINESS_REPORT.md
- 130.development/010.core/1300100021_MEAL_PLANNER_FINAL_REVIEW_ACTION_SCRIPT.md
- 130.development/010.core/1300100022_MEAL_PLANNER_CHANGE_IMPACT_CHECKLIST.md
- 130.development/010.core/1300100023_MEAL_PLANNER_FINAL_ALIGNMENT_ACTIONS.md
- 130.development/010.core/1300100024_MEAL_PLANNER_REVIEW_SIGNOFF_TEMPLATE.md
- 130.development/010.core/1300100025_MEAL_PLANNER_FREEZE_DECLARATION_DRAFT.md
- 130.development/010.core/1300100026_MEAL_PLANNER_POST_FREEZE_CHANGE_RULE.md
- 130.development/010.core/1300100027_MEAL_PLANNER_FREEZE_EXECUTION_CHECKLIST.md
- 130.development/010.core/1300100028_MEAL_PLANNER_PRE_IMPLEMENTATION_BRIDGE_NOTE.md
- 130.development/010.core/1300100029_MEAL_PLANNER_DESIGN_FREEZE_READY_MESSAGE.md
- 130.development/010.core/1300100030_MEAL_PLANNER_FINAL_CLOSE_PACKAGE.md
- 130.development/010.core/1300100031_MEAL_PLANNER_FREEZE_DECISION_GUIDE.md
- 130.development/010.core/1300100032_MEAL_PLANNER_HANDOFF_NOTE_FOR_NEXT_PHASE.md
- 130.development/010.core/1300100034_MEAL_PLANNER_DESIGN_FREEZE_DECLARATION.md
- 130.development/010.core/1300100035_MEAL_PLANNER_FREEZE_SCOPE_SUMMARY.md
- 130.development/010.core/1300100036_MEAL_PLANNER_FREEZE_STATUS_BOARD.md
- 130.development/010.core/1300100037_MEAL_PLANNER_FREEZE_AUDIT_STATUS.md
- 130.development/010.core/1300100038_MEAL_PLANNER_DESIGN_FREEZE_CLOSE_NOTE.md
- 130.development/1300000_DEVELOPMENT_INDEX.md
- 130.development/1300001_DEVELOPMENT_OVERVIEW.md
- 900.meta/010.core/9000100000_CORE_INDEX.md
- 900.meta/010.core/9000100001_CORE_OVERVIEW.md
- 900.meta/010.core/9000100002_MEAL_PLANNER_META.md
- 900.meta/010.core/9000100003_MEAL_PLANNER_MASTER_DOCUMENT_INDEX.md
- 900.meta/010.core/9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- 900.meta/010.core/9000100005_MEAL_PLANNER_CANONICAL_FOLDER_MAP.md
- 900.meta/010.core/9000100006_MEAL_PLANNER_DESIGN_REVIEW_ORDER.md
- 900.meta/010.core/9000100007_MEAL_PLANNER_CROSS_DOCUMENT_AUDIT_PLAYBOOK.md
- 900.meta/010.core/9000100008_MEAL_PLANNER_DOCUMENT_UPDATE_RULES.md
- 900.meta/010.core/9000100009_MEAL_PLANNER_FREEZE_HANDOFF_PACKAGE.md
- 900.meta/010.core/9000100010_MEAL_PLANNER_META_GOVERNANCE_NOTE.md
- 900.meta/010.core/9000100011_MEAL_PLANNER_TERMINOLOGY_DICTIONARY.md
- 900.meta/010.core/9000100012_MEAL_PLANNER_DECISION_LEDGER.md
- 900.meta/010.core/9000100013_MEAL_PLANNER_OLD_WORDING_CLEANUP_CHECKLIST.md
- 900.meta/010.core/9000100014_MEAL_PLANNER_INTEGRATED_DETAIL_SYNC_CHECKLIST.md
- 900.meta/010.core/9000100015_MEAL_PLANNER_META_CLOSEOUT_MAP.md
- 900.meta/010.core/9000100016_MEAL_PLANNER_FINAL_PACKAGE_INDEX.md
- 900.meta/010.core/9000100017_MEAL_PLANNER_REVIEW_QUERY_SET.md
- 900.meta/010.core/9000100018_MEAL_PLANNER_FREEZE_PACKAGE_INDEX.md
- 900.meta/9000000_META_INDEX.md
- 900.meta/9000001_META_OVERVIEW.md

---

## SOURCE FILE: 00_MEAL_PLANNER_INTEGRATED.md

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


---

## SOURCE FILE: 010.constitution/010.core/0100100000_CORE_INDEX.md

# Constitution Core Index

## purpose
MealPlanner の中核原則を定義する

## files
- 0100100001_CORE_OVERVIEW.md

## notes
- この index は Constitution Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 010.constitution/010.core/0100100001_CORE_OVERVIEW.md

# Constitution Core Overview

## role
MealPlanner の中核原則を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 010.constitution/010.core/0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md

# MealPlanner Core Principles

## 1. プロダクト原則
- MealPlanner は生活改善支援アプリである
- 医療診断、治療判断、投薬判断は扱わない
- 日 / 週 / 月の3粒度で献立を扱う
- 週間運用を主導線とし、日次即決と月次先回り計画を補助線とする

## 2. 課金原則
- 無料: 0円
- 有料: 500円 / 月
- サポートは AIチャットのみ
- 人数増加による従量増額は基本採用しない

## 3. 予算原則
- 予算入力は金額直入力を主にしない
- 節約 / 普通 / 多め の budget_tier を正とする
- 内部で locale / currency / household_size を見て参考金額へ変換する

## 4. データ原則
- 基礎知識は CX22073JW を正本とする
- 家庭固有設定、実績、private 献立は MealPlanner 側で持つ
- 公開知識と private 下書きを混同しない

## 5. 共有原則
- 家族共有は household 単位で行う
- planner / viewer の軽量ロールを想定する
- 強い監査・承認構造は持ち込まない

## 6. 出力原則
- 献立表は CSV 出力可能とする
- 日 / 週 / 月の各粒度で出力対象を持つ


---

## SOURCE FILE: 010.constitution/0100000_CONSTITUTION_INDEX.md

# Constitution Index

## purpose
MealPlanner の基本原則、責務、境界、価値を定義する

## files
- 0100001_CONSTITUTION_OVERVIEW.md

## notes
- この index は Constitution の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 010.constitution/0100001_CONSTITUTION_OVERVIEW.md

# Constitution Overview

## role
MealPlanner の基本原則、責務、境界、価値を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 010.constitution/020.domain/0100200000_DOMAIN_INDEX.md

# Constitution Domain Index

## purpose
MealPlanner のドメイン責務と非責務を定義する

## files
- 0100200001_DOMAIN_OVERVIEW.md

## notes
- この index は Constitution Domain の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 010.constitution/020.domain/0100200001_DOMAIN_OVERVIEW.md

# Constitution Domain Overview

## role
MealPlanner のドメイン責務と非責務を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 010.constitution/020.domain/0100200002_MEAL_PLANNER_DOMAIN_BOUNDARY.md

# MealPlanner Domain Boundary

## app 固有責務
- meal_plan / meal_slot / meal_history の意味管理
- 日次 / 週次 / 月次提案ロジック
- 献立テンプレート運用
- 食事記録の運用意味
- CSV 出力
- private 献立編集
- 課金状態による画面出し分け

## 外部依存前提
- CX22073JW:
  - 食材基礎知識
  - 基本献立
  - 多言語辞書
  - 季節知識
  - 栄養参照
  - 公開済みユーザー献立
- LifeOS Publish:
  - ユーザー献立公開申請
  - 公開状態反映

## 非責務
- 医療診断
- 治療食の確定判断
- 食材EC自動発注
- 高度専門栄養管理


---

## SOURCE FILE: 020.architecture/010.core/0200100000_CORE_INDEX.md

# Architecture Core Index

## purpose
MealPlanner の基礎アーキテクチャを定義する

## files
- 0200100001_CORE_OVERVIEW.md

## notes
- この index は Architecture Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 020.architecture/010.core/0200100001_CORE_OVERVIEW.md

# Architecture Core Overview

## role
MealPlanner の基礎アーキテクチャを定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 020.architecture/010.core/0200100002_MEAL_PLANNER_ARCHITECTURE.md

# MealPlanner Architecture

## レイヤー構造
- 010.constitution: 原則 / 境界
- 020.architecture: 構造 / 依存
- 030.model: データ意味
- 040.runtime: 実行時挙動
- 050.flow: 利用 / 公開 / 出力フロー
- 060.integration: 外部連携
- 070.operations: 運用
- 080.policy: 課金 / 公開 / 取扱方針
- 090.interface: UI / CSV出力
- 100.security: 権限 / private/public 境界
- 110.infrastructure: 実行基盤
- 120.implementation: 実装境界
- 130.development: 開発計画
- 900.meta: メタ情報

## 構造方針
- app単体でMVP開始可能
- 後から共通部品差し替え可能
- 共通部品詳細は別チャット管理
- MealPlanner 側では依存前提のみ保持


---

## SOURCE FILE: 020.architecture/010.core/0200100003_MEAL_PLANNER_ARCHITECTURE_ACCEPTANCE_CONDITIONS.md

# MealPlanner Architecture Acceptance Conditions

## 1. purpose
実装前に、アーキテクチャ設計として受け入れ可能かを判定する条件を整理する。

## 2. acceptance_conditions

### boundary
- life schema 前提が統一されている
- CX22073JW 正本境界が明確
- LifeOS publish 境界が明確
- free / paid / planner / viewer / visibility の軸が混同されていない

### model
- 主要 entity が欠けていない
- daily / weekly / monthly が model / api / ui で一致している
- budget_tier が一貫している
- snapshot 方針が model / policy / ui で一致している

### api
- 主要 API payload がそろっている
- request / response 語彙が一致している
- required / optional / nullable が固定されている

### ui
- 主要画面と遷移がそろっている
- CSV 導線が日 / 週 / 月に置かれている
- free / paid の gating が自然
- user_menu 作成 / 公開申請導線が明確

### policy
- published menu versioning が固定
- history retention が UI 制御で整理済み
- CSV free / paid 差が整理済み
- AIチャットサポート境界が整理済み

## 3. acceptance_result_definition
以下を満たせば、MealPlanner は実装前設計として受け入れ可能とみなす
- major contradiction 없음
- business meaning fixed
- large missing area 없음
- implementation_not_yet boundary respected

## 4. not_in_scope
- physical DB acceptance
- runtime performance acceptance
- production ops acceptance


---

## SOURCE FILE: 020.architecture/010.core/0200100004_MEAL_PLANNER_ARCHITECTURE_REVIEW_LENS.md

# MealPlanner Architecture Review Lens

## 1. purpose
アーキテクチャ観点で、どこを見ればよいかを整理する。

## 2. review_lenses

### lens_01_boundary
- life schema と CX22073JW の境界は崩れていないか
- private / household / lifeos_public は分離されているか

### lens_02_replaceability
- 共通部品未確定でも app 単体で進められるか
- 後で差し替え可能な構造になっているか

### lens_03_runtime_stability
- snapshot-first で household 運用が安定するか
- versioning によって既存 plan が壊れないか

### lens_04_product_fit
- free / paid の差が構造的に自然か
- AIチャットのみサポートと整合しているか

### lens_05_design_phase_fit
- 物理実装詳細に落ちすぎていないか
- 今の phase に必要な粒度で止まっているか

## 3. review_result_target
- 大きな構造矛盾がない
- phase に対して過不足の少ない設計になっている


---

## SOURCE FILE: 020.architecture/020.domain/0200200000_DOMAIN_INDEX.md

# Architecture Domain Index

## purpose
MealPlanner ドメイン構造を定義する

## files
- 0200200001_DOMAIN_OVERVIEW.md

## notes
- この index は Architecture Domain の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 020.architecture/020.domain/0200200001_DOMAIN_OVERVIEW.md

# Architecture Domain Overview

## role
MealPlanner ドメイン構造を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 020.architecture/0200000_ARCHITECTURE_INDEX.md

# Architecture Index

## purpose
MealPlanner の構造設計、分割、依存、境界を定義する

## files
- 0200001_ARCHITECTURE_OVERVIEW.md

## notes
- この index は Architecture の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 020.architecture/0200001_ARCHITECTURE_OVERVIEW.md

# Architecture Overview

## role
MealPlanner の構造設計、分割、依存、境界を定義する。

## architecture_summary
- MealPlanner は life schema を正とする
- 基礎知識 / 公開知識 / 辞書知識の正本は CX22073JW 側を前提とする
- MealPlanner 側は household 固有設定、実績、private データ、運用状態を持つ
- 公開審査本体は LifeOS 側責務
- app 単体でMVP開始可能、後で共通化差し替え可能な構造を取る

## main_layers
- constitution:
  - 原則 / 境界
- architecture:
  - 構造 / 分割 / 依存
- model:
  - データ意味
- runtime:
  - 状態遷移 / 実行挙動
- flow:
  - 利用 / 公開 / CSV出力 / 履歴
- integration:
  - CX22073JW / LifeOS Publish / LifeOS連携
- interface:
  - 画面 / 文言 / CSV / component 分解
- policy:
  - free / paid / versioning / retention
- operations:
  - AIチャットサポート / ストア境界

## boundary_highlights
- private / household / lifeos_public を混同しない
- published menu は直接上書きしない
- favorite / template は snapshot-first
- state transition は自由遷移にしない


---

## SOURCE FILE: 020.architecture/030.integration/0200300000_INTEGRATION_INDEX.md

# Architecture Integration Index

## purpose
MealPlanner の連携アーキテクチャを定義する

## files
- 0200300001_INTEGRATION_OVERVIEW.md

## notes
- この index は Architecture Integration の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 020.architecture/030.integration/0200300001_INTEGRATION_OVERVIEW.md

# Architecture Integration Overview

## role
MealPlanner の連携アーキテクチャを定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 030.model/010.core/0300100000_CORE_INDEX.md

# Model Core Index

## purpose
MealPlanner の共通モデル原則を定義する

## files
- 0300100001_CORE_OVERVIEW.md

## notes
- この index は Model Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 030.model/010.core/0300100001_CORE_OVERVIEW.md

# Model Core Overview

## role
MealPlanner の共通モデル原則を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 030.model/020.domain/0300200000_DOMAIN_INDEX.md

# Model Domain Index

## purpose
MealPlanner の主要データモデルを定義する

## files
- 0300200001_DOMAIN_OVERVIEW.md

## notes
- この index は Model Domain の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 030.model/020.domain/0300200001_DOMAIN_OVERVIEW.md

# Model Domain Overview

## role
MealPlanner の主要データモデルを定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 030.model/020.domain/0300200002_MEAL_PLANNER_DOMAIN_MODEL.md

# MealPlanner Domain Model

## 主要エンティティ
- meal_plan
- meal_slot
- menu_master
- ingredient
- pantry_item
- shopping_list
- shopping_list_item
- dietary_rule
- family_profile
- family_member_preference
- favorite_menu
- meal_template
- nutrition_summary
- meal_history
- budget_profile
- goal_profile
- user_menu_submission
- meal_plan_export_job

## 重要補助属性
### meal_plan
- plan_horizon: daily / weekly / monthly
- generation_mode: manual / auto_draft / derived_from_monthly / derived_from_weekly

### menu_master
- source_type: system_seed / cx22073jw_base / user_private / user_published
- publication_status: private / draft / review_pending / published / rejected

### budget_profile
- budget_tier: saving / standard / generous
- derived_weekly_budget_amount
- derived_monthly_reference_amount

## モデル境界
- private user_menu は MealPlanner 側
- published user_menu catalog は CX22073JW / LifeOS 側参照前提


---

## SOURCE FILE: 030.model/020.domain/0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md

# MealPlanner DB Logical Schema

## 1. schema_name
- life

## 2. design_principles
- 家庭固有設定、実績、private献立、課金状態は MealPlanner 側で保持する
- 食材基礎知識、基本献立知識、辞書知識、公開知識の正本は CX22073JW 側とする
- MealPlanner 側では必要に応じて reference cache / overlay を持てる
- 日 / 週 / 月の plan_horizon を正規値として扱う
- 予算は budget_tier を正とし、金額は derived 値として保持する
- user_private / user_published / cx22073jw_base を source_type で区別する

## 3. enum_logical_definitions

### plan_horizon
- daily
- weekly
- monthly

### meal_category
- breakfast
- lunch
- dinner
- snack

### budget_tier
- saving
- standard
- generous

### source_type
- system_seed
- cx22073jw_base
- user_private
- user_published

### publication_status
- private
- draft
- review_pending
- published
- rejected

### actual_result_type
- planned
- changed
- skipped
- eating_out
- convenience_food

### purchase_status
- draft
- active
- completed
- archived

### export_status
- requested
- generated
- failed

### sync_policy
- reference_only
- cached_copy
- local_override_allowed

## 4. core_tables

### 4.1 family_profile
purpose:
- household の基本単位
columns:
- household_id: PK
- household_name: household 表示名
- owner_user_id: household 主管理者
- locale_code: 表示 locale
- currency_code: 表示通貨
- timezone: 既定 timezone
- is_active: 利用中フラグ
- created_at
- updated_at
constraints:
- PK household_id
- UNIQUE owner_user_id, household_name は必須ではない
notes:
- MealPlanner の household 単位の正本

### 4.2 family_member_preference
purpose:
- household 内メンバーの嗜好と制約
columns:
- member_id: PK
- household_id: FK -> family_profile.household_id
- nickname
- age_group
- likes_json
- dislikes_json
- allergy_tags_json
- dietary_goal
- is_active
- created_at
- updated_at
constraints:
- PK member_id
- FK household_id
notes:
- likes / dislikes / allergy_tags は初期は JSON 配列で可

### 4.3 budget_profile
purpose:
- household 単位の予算条件
columns:
- budget_profile_id: PK
- household_id: FK -> family_profile.household_id
- budget_tier
- derived_weekly_budget_amount
- derived_monthly_reference_amount
- currency_code
- calculation_basis_version
- strict_mode_flag
- created_at
- updated_at
constraints:
- PK budget_profile_id
- FK household_id
- UNIQUE household_id
notes:
- budget_tier を正本とし、derived_amount は補助値

### 4.4 goal_profile
purpose:
- household 単位の健康目標条件
columns:
- goal_profile_id: PK
- household_id: FK -> family_profile.household_id
- weight_goal_type
- salt_attention_flag
- protein_focus_flag
- energy_target_level
- activity_hint_level
- created_at
- updated_at
constraints:
- PK goal_profile_id
- FK household_id
- UNIQUE household_id

### 4.5 dietary_rule
purpose:
- household / member 単位の食事制約
columns:
- dietary_rule_id: PK
- household_id: FK -> family_profile.household_id
- target_member_id: nullable FK -> family_member_preference.member_id
- rule_type
- rule_value
- severity_level
- note
- created_at
- updated_at
constraints:
- PK dietary_rule_id
- FK household_id
- FK target_member_id nullable

### 4.6 meal_plan
purpose:
- 日 / 週 / 月の献立計画ヘッダ
columns:
- meal_plan_id: PK
- household_id: FK -> family_profile.household_id
- created_by_user_id
- plan_horizon
- parent_meal_plan_id: nullable FK -> meal_plan.meal_plan_id
- generation_mode
- target_start_date
- target_end_date
- budget_profile_id: nullable FK -> budget_profile.budget_profile_id
- goal_profile_id: nullable FK -> goal_profile.goal_profile_id
- budget_tier
- derived_budget_amount
- currency_code
- plan_status
- memo
- created_at
- updated_at
constraints:
- PK meal_plan_id
- FK household_id
- FK parent_meal_plan_id nullable
- FK budget_profile_id nullable
- FK goal_profile_id nullable
indexes_recommended:
- household_id, target_start_date
- household_id, plan_horizon, target_start_date
notes:
- monthly -> weekly -> daily の親子関係を parent_meal_plan_id で保持可能

### 4.7 meal_slot
purpose:
- 1食単位の計画明細
columns:
- meal_slot_id: PK
- meal_plan_id: FK -> meal_plan.meal_plan_id
- meal_date
- meal_category
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- servings
- estimated_cost
- estimated_kcal
- memo
- changed_flag
- changed_reason
- actual_status
- sort_order
- created_at
- updated_at
constraints:
- PK meal_slot_id
- FK meal_plan_id
- UNIQUE meal_plan_id, meal_date, meal_category, sort_order
notes:
- menu_reference_id は source_type に応じて user_menu / cache / catalog を参照する論理キー
- 参照元が変わっても snapshot で当時表示名を保持する

### 4.8 meal_history
purpose:
- 実績ログ
columns:
- meal_history_id: PK
- meal_slot_id: FK -> meal_slot.meal_slot_id
- actual_result_type
- actual_menu_name
- note
- recorded_by_user_id
- recorded_at
constraints:
- PK meal_history_id
- FK meal_slot_id
indexes_recommended:
- meal_slot_id
- recorded_at

### 4.9 meal_template
purpose:
- 日 / 週 / 月テンプレート
columns:
- meal_template_id: PK
- household_id: FK -> family_profile.household_id
- template_name
- plan_horizon
- pattern_type
- visibility_scope
- is_active
- created_at
- updated_at
constraints:
- PK meal_template_id
- FK household_id

### 4.10 meal_template_slot
purpose:
- テンプレートの食事枠
columns:
- meal_template_slot_id: PK
- meal_template_id: FK -> meal_template.meal_template_id
- relative_day_no
- meal_category
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- servings
- memo
- sort_order
constraints:
- PK meal_template_slot_id
- FK meal_template_id
- UNIQUE meal_template_id, relative_day_no, meal_category, sort_order

### 4.11 favorite_menu
purpose:
- household のお気に入り献立
columns:
- favorite_menu_id: PK
- household_id: FK -> family_profile.household_id
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- ranking
- usage_count
- created_at
- updated_at
constraints:
- PK favorite_menu_id
- FK household_id
- UNIQUE household_id, menu_source_type, menu_reference_id

### 4.12 pantry_item
purpose:
- household 在庫
columns:
- pantry_item_id: PK
- household_id: FK -> family_profile.household_id
- ingredient_reference_id
- ingredient_name_snapshot
- quantity
- unit_code
- expiry_date
- storage_type
- opened_flag
- note
- created_at
- updated_at
constraints:
- PK pantry_item_id
- FK household_id
indexes_recommended:
- household_id, expiry_date

### 4.13 shopping_list
purpose:
- 買い物リストヘッダ
columns:
- shopping_list_id: PK
- meal_plan_id: FK -> meal_plan.meal_plan_id
- household_id: FK -> family_profile.household_id
- purchase_status
- estimated_total_cost
- currency_code
- generated_at
- created_at
- updated_at
constraints:
- PK shopping_list_id
- FK meal_plan_id
- FK household_id

### 4.14 shopping_list_item
purpose:
- 買い物リスト明細
columns:
- shopping_list_item_id: PK
- shopping_list_id: FK -> shopping_list.shopping_list_id
- ingredient_reference_id
- ingredient_name_snapshot
- shopping_category
- shortage_quantity
- unit_code
- estimated_unit_price
- estimated_line_cost
- checked_flag
- checked_by_member_id: nullable FK -> family_member_preference.member_id
- checked_at
- store_memo
constraints:
- PK shopping_list_item_id
- FK shopping_list_id
- FK checked_by_member_id nullable

### 4.15 user_menu
purpose:
- ユーザー独自献立の正本
columns:
- user_menu_id: PK
- household_id: FK -> family_profile.household_id
- created_by_user_id
- menu_title
- meal_category_tags_json
- cuisine_tags_json
- season_tags_json
- dietary_tags_json
- serving_base
- prep_time_minutes
- estimated_cost
- memo
- source_type
- publication_status
- visibility_scope
- lifeos_publish_flag
- created_at
- updated_at
constraints:
- PK user_menu_id
- FK household_id
notes:
- 初期作成時は source_type=user_private, publication_status=private

### 4.16 user_menu_ingredient
purpose:
- user_menu の食材構成
columns:
- user_menu_ingredient_id: PK
- user_menu_id: FK -> user_menu.user_menu_id
- ingredient_reference_id
- ingredient_name_snapshot
- quantity
- unit_code
- optional_flag
constraints:
- PK user_menu_ingredient_id
- FK user_menu_id

### 4.17 user_menu_publish_request
purpose:
- LifeOS 公開申請状態
columns:
- submission_id: PK
- user_menu_id: FK -> user_menu.user_menu_id
- requested_visibility_scope
- submission_status
- publish_note
- review_note
- requested_at
- reviewed_at
constraints:
- PK submission_id
- FK user_menu_id
indexes_recommended:
- user_menu_id
- submission_status

### 4.18 meal_plan_export_job
purpose:
- CSV 出力管理
columns:
- export_job_id: PK
- household_id: FK -> family_profile.household_id
- requested_by_user_id
- target_scope
- target_plan_id: FK -> meal_plan.meal_plan_id
- export_format
- column_profile_json
- locale_code
- encoding
- export_status
- file_name
- generated_at
- created_at
constraints:
- PK export_job_id
- FK household_id
- FK target_plan_id

## 5. reference_cache_tables

### 5.1 catalog_source_ref
purpose:
- 参照元定義
columns:
- catalog_source_id: PK
- source_system
- source_namespace
- source_reference_id
- sync_policy
- active_flag
- created_at
- updated_at

### 5.2 ingredient_reference_cache
purpose:
- CX22073JW 由来の食材参照キャッシュ
columns:
- ingredient_reference_id: PK
- catalog_source_id: FK -> catalog_source_ref.catalog_source_id
- source_type
- cx22073jw_knowledge_id
- ingredient_name
- ingredient_name_multilingual_json
- synonym_json
- category_code
- allergen_tags_json
- dietary_tags_json
- nutrition_reference_json
- storage_type_reference
- shelf_life_reference_days
- seasonality_json
- updated_at
constraints:
- PK ingredient_reference_id
- FK catalog_source_id

### 5.3 menu_reference_cache
purpose:
- CX22073JW 基本献立の参照キャッシュ
columns:
- menu_reference_id: PK
- catalog_source_id: FK -> catalog_source_ref.catalog_source_id
- source_type
- cx22073jw_knowledge_id
- menu_title
- menu_category_tags_json
- cuisine_tags_json
- season_tags_json
- dietary_tags_json
- default_serving_reference
- prep_time_band
- estimated_cost_band
- nutrition_profile_json
- publication_status
- updated_at
constraints:
- PK menu_reference_id
- FK catalog_source_id

### 5.4 published_user_menu_reference_cache
purpose:
- LifeOS 公開済みユーザー献立の参照キャッシュ
columns:
- published_menu_reference_id: PK
- catalog_source_id: FK -> catalog_source_ref.catalog_source_id
- origin_user_id
- origin_menu_id
- menu_title
- tags_json
- version_no
- publication_status
- quality_score
- updated_at
constraints:
- PK published_menu_reference_id
- FK catalog_source_id

## 6. logical_relationships
- family_profile 1 --- n family_member_preference
- family_profile 1 --- 1 budget_profile
- family_profile 1 --- 1 goal_profile
- family_profile 1 --- n dietary_rule
- family_profile 1 --- n meal_plan
- meal_plan 1 --- n meal_slot
- meal_slot 1 --- n meal_history
- family_profile 1 --- n meal_template
- meal_template 1 --- n meal_template_slot
- family_profile 1 --- n favorite_menu
- family_profile 1 --- n pantry_item
- meal_plan 1 --- 0..1 shopping_list
- shopping_list 1 --- n shopping_list_item
- family_profile 1 --- n user_menu
- user_menu 1 --- n user_menu_ingredient
- user_menu 1 --- n user_menu_publish_request
- meal_plan 1 --- n meal_plan_export_job

## 7. uniqueness_and_boundary_rules
- household ごとの budget_profile は 1件
- household ごとの goal_profile は 1件
- favorite_menu は household + menu_source_type + menu_reference_id で一意
- meal_slot は meal_plan + meal_date + meal_category + sort_order で一意
- template_slot は meal_template + relative_day_no + meal_category + sort_order で一意
- private user_menu は household 境界から漏らさない
- lifeos_public 化は publish_request 完了後のみ

## 8. non_primary_storage_rules
- CX22073JW 正本の食材 / 基本献立 / 辞書 / 公開知識は MealPlanner に primary 保管しない
- MealPlanner は cache / overlay / snapshot を許可する
- menu_title_snapshot / ingredient_name_snapshot により当時表示を保持する

## 9. paid_free_boundary_storage_notes
- 課金状態そのものは別の subscription 領域で保持してもよい
- MealPlanner 側では feature gate 判定結果のみ利用可
- ただし household 別 entitlement cache を置くなら以下の簡易表を追加候補とする

### optional_household_entitlement_cache
columns:
- household_id: PK
- plan_code
- is_paid
- effective_from
- effective_to
- support_mode
notes:
- support_mode は ai_chat_only を想定


---

## SOURCE FILE: 030.model/020.domain/0300200004_MEAL_PLANNER_TABLE_RELATION_OVERVIEW.md

# MealPlanner Table Relation Overview

## 1. household center
中心は family_profile である。
家族人数、嗜好、制約、予算、目標、private献立、在庫、履歴は household に紐づく。

## 2. planning center
meal_plan が計画ヘッダ、
meal_slot が1食単位、
meal_history が実績である。

monthly -> weekly -> daily は meal_plan.parent_meal_plan_id で表現できる。

## 3. menu center
MealPlanner で直接正本を持つのは user_menu である。
基礎献立は menu_reference_cache、
公開済みユーザー献立は published_user_menu_reference_cache で扱う。

meal_slot / favorite_menu / meal_template_slot は
menu_source_type + menu_reference_id の論理参照で統一する。

## 4. shopping center
shopping_list は meal_plan から生成される。
shopping_list_item は pantry_item 差分結果を含みうる。

## 5. export center
meal_plan_export_job は CSV出力の依頼と生成結果を保持する。
日 / 週 / 月のすべてを target_scope で扱う。

## 6. publish center
user_menu_publish_request は LifeOS 公開フロー境界の保持に使う。
MealPlanner 側は申請状態と結果だけを持ち、審査本体は持たない。

## 7. cache center
ingredient_reference_cache / menu_reference_cache / published_user_menu_reference_cache は
CX22073JW や LifeOS 公開カタログの参照キャッシュである。
これらは正本ではない。


---

## SOURCE FILE: 030.model/020.domain/0300200005_MEAL_PLANNER_NULLABILITY_AND_DEFAULT_POLICY.md

# MealPlanner Nullability And Default Policy

## 1. required_non_null_by_default
原則として、以下は required + non_null を優先する
- identifiers
- foreign keys
- enum-like business state
- household boundary keys
- display snapshot fields
- created_at / updated_at などの監査列

## 2. nullable_allowed_domains
nullable を許可しやすい領域
- memo / note
- review_note
- changed_reason
- optional estimates
- expiry_date
- prep_time_minutes
- estimated_cost
- generated file_name before export completion
- reviewed_at before review completion

## 3. default_recommended_fields
- is_active: true
- strict_mode_flag: false
- salt_attention_flag: false
- protein_focus_flag: false
- changed_flag: false
- actual_status: planned
- opened_flag: false
- checked_flag: false
- lifeos_publish_flag: false
- usage_count: 0
- encoding: utf-8

## 4. api_response_default_shape
- optional array-like response fields:
  - prefer []
- optional object-like response fields:
  - may return null
- optional scalar text:
  - may return null
- optional numeric estimates:
  - may return null

## 5. caution
nullability は「未確定」を表すために使い、
「実装が面倒だから null 可」にしない。


---

## SOURCE FILE: 030.model/020.domain/0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md

# MealPlanner Index / Unique / FK Matrix

## 1. purpose
MealPlanner の life schema 配下テーブルについて、
index / unique / foreign key を exact に固定する。

## 2. principles
- household 境界の検索を最優先する
- 日付範囲検索、週次/月次検索、履歴検索を重視する
- private / household / public の境界が崩れる join を避ける
- snapshot は表示継続のため保持し、外部参照の不安定さを吸収する
- CX22073JW 正本知識には FK を張らず、MealPlanner 側は reference cache / logical reference を基本とする

## 3. family_profile
### primary_key
- PK (household_id)

### unique
- none_required

### foreign_keys
- none

### indexes
- IDX family_profile_owner_user_id (owner_user_id)
- IDX family_profile_is_active (is_active)

## 4. family_member_preference
### primary_key
- PK (member_id)

### unique
- UQ family_member_preference_household_id_nickname (household_id, nickname)

### foreign_keys
- FK family_member_preference_household_id -> family_profile.household_id

### indexes
- IDX family_member_preference_household_id (household_id)
- IDX family_member_preference_household_id_is_active (household_id, is_active)

## 5. budget_profile
### primary_key
- PK (budget_profile_id)

### unique
- UQ budget_profile_household_id (household_id)

### foreign_keys
- FK budget_profile_household_id -> family_profile.household_id

### indexes
- IDX budget_profile_household_id_budget_tier (household_id, budget_tier)

## 6. goal_profile
### primary_key
- PK (goal_profile_id)

### unique
- UQ goal_profile_household_id (household_id)

### foreign_keys
- FK goal_profile_household_id -> family_profile.household_id

### indexes
- IDX goal_profile_household_id (household_id)

## 7. dietary_rule
### primary_key
- PK (dietary_rule_id)

### unique
- none_required

### foreign_keys
- FK dietary_rule_household_id -> family_profile.household_id
- FK dietary_rule_target_member_id -> family_member_preference.member_id (nullable)

### indexes
- IDX dietary_rule_household_id (household_id)
- IDX dietary_rule_target_member_id (target_member_id)
- IDX dietary_rule_household_id_rule_type (household_id, rule_type)

## 8. meal_plan
### primary_key
- PK (meal_plan_id)

### unique
- none_required

### foreign_keys
- FK meal_plan_household_id -> family_profile.household_id
- FK meal_plan_parent_meal_plan_id -> meal_plan.meal_plan_id (nullable)
- FK meal_plan_budget_profile_id -> budget_profile.budget_profile_id (nullable)
- FK meal_plan_goal_profile_id -> goal_profile.goal_profile_id (nullable)

### indexes
- IDX meal_plan_household_id_target_start_date (household_id, target_start_date)
- IDX meal_plan_household_id_plan_horizon_target_start_date (household_id, plan_horizon, target_start_date)
- IDX meal_plan_parent_meal_plan_id (parent_meal_plan_id)
- IDX meal_plan_created_by_user_id (created_by_user_id)
- IDX meal_plan_household_id_plan_status (household_id, plan_status)

## 9. meal_slot
### primary_key
- PK (meal_slot_id)

### unique
- UQ meal_slot_plan_date_category_sort (meal_plan_id, meal_date, meal_category, sort_order)

### foreign_keys
- FK meal_slot_meal_plan_id -> meal_plan.meal_plan_id

### indexes
- IDX meal_slot_meal_plan_id (meal_plan_id)
- IDX meal_slot_meal_date (meal_date)
- IDX meal_slot_meal_plan_id_meal_date (meal_plan_id, meal_date)
- IDX meal_slot_menu_source_type_menu_reference_id (menu_source_type, menu_reference_id)
- IDX meal_slot_actual_status (actual_status)

## 10. meal_history
### primary_key
- PK (meal_history_id)

### unique
- none_required

### foreign_keys
- FK meal_history_meal_slot_id -> meal_slot.meal_slot_id

### indexes
- IDX meal_history_meal_slot_id (meal_slot_id)
- IDX meal_history_recorded_at (recorded_at)
- IDX meal_history_actual_result_type (actual_result_type)

## 11. meal_template
### primary_key
- PK (meal_template_id)

### unique
- UQ meal_template_household_id_template_name_plan_horizon (household_id, template_name, plan_horizon)

### foreign_keys
- FK meal_template_household_id -> family_profile.household_id

### indexes
- IDX meal_template_household_id (household_id)
- IDX meal_template_household_id_plan_horizon (household_id, plan_horizon)
- IDX meal_template_household_id_is_active (household_id, is_active)

## 12. meal_template_slot
### primary_key
- PK (meal_template_slot_id)

### unique
- UQ meal_template_slot_template_day_category_sort (meal_template_id, relative_day_no, meal_category, sort_order)

### foreign_keys
- FK meal_template_slot_meal_template_id -> meal_template.meal_template_id

### indexes
- IDX meal_template_slot_meal_template_id (meal_template_id)
- IDX meal_template_slot_menu_source_type_menu_reference_id (menu_source_type, menu_reference_id)

## 13. favorite_menu
### primary_key
- PK (favorite_menu_id)

### unique
- UQ favorite_menu_household_source_ref (household_id, menu_source_type, menu_reference_id)

### foreign_keys
- FK favorite_menu_household_id -> family_profile.household_id

### indexes
- IDX favorite_menu_household_id (household_id)
- IDX favorite_menu_household_id_ranking (household_id, ranking)
- IDX favorite_menu_household_id_usage_count (household_id, usage_count)

## 14. pantry_item
### primary_key
- PK (pantry_item_id)

### unique
- none_required

### foreign_keys
- FK pantry_item_household_id -> family_profile.household_id

### indexes
- IDX pantry_item_household_id (household_id)
- IDX pantry_item_household_id_expiry_date (household_id, expiry_date)
- IDX pantry_item_household_id_storage_type (household_id, storage_type)
- IDX pantry_item_ingredient_reference_id (ingredient_reference_id)

## 15. shopping_list
### primary_key
- PK (shopping_list_id)

### unique
- UQ shopping_list_meal_plan_id (meal_plan_id)

### foreign_keys
- FK shopping_list_meal_plan_id -> meal_plan.meal_plan_id
- FK shopping_list_household_id -> family_profile.household_id

### indexes
- IDX shopping_list_household_id (household_id)
- IDX shopping_list_purchase_status (purchase_status)
- IDX shopping_list_generated_at (generated_at)

## 16. shopping_list_item
### primary_key
- PK (shopping_list_item_id)

### unique
- none_required

### foreign_keys
- FK shopping_list_item_shopping_list_id -> shopping_list.shopping_list_id
- FK shopping_list_item_checked_by_member_id -> family_member_preference.member_id (nullable)

### indexes
- IDX shopping_list_item_shopping_list_id (shopping_list_id)
- IDX shopping_list_item_checked_flag (checked_flag)
- IDX shopping_list_item_shopping_category (shopping_category)
- IDX shopping_list_item_ingredient_reference_id (ingredient_reference_id)

## 17. user_menu
### primary_key
- PK (user_menu_id)

### unique
- UQ user_menu_household_created_by_title (household_id, created_by_user_id, menu_title)

### foreign_keys
- FK user_menu_household_id -> family_profile.household_id

### indexes
- IDX user_menu_household_id (household_id)
- IDX user_menu_created_by_user_id (created_by_user_id)
- IDX user_menu_publication_status (publication_status)
- IDX user_menu_visibility_scope (visibility_scope)
- IDX user_menu_source_type (source_type)
- IDX user_menu_lifeos_publish_flag (lifeos_publish_flag)

## 18. user_menu_ingredient
### primary_key
- PK (user_menu_ingredient_id)

### unique
- none_required

### foreign_keys
- FK user_menu_ingredient_user_menu_id -> user_menu.user_menu_id

### indexes
- IDX user_menu_ingredient_user_menu_id (user_menu_id)
- IDX user_menu_ingredient_ingredient_reference_id (ingredient_reference_id)

## 19. user_menu_publish_request
### primary_key
- PK (submission_id)

### unique
- none_required

### foreign_keys
- FK user_menu_publish_request_user_menu_id -> user_menu.user_menu_id

### indexes
- IDX user_menu_publish_request_user_menu_id (user_menu_id)
- IDX user_menu_publish_request_submission_status (submission_status)
- IDX user_menu_publish_request_requested_at (requested_at)

## 20. meal_plan_export_job
### primary_key
- PK (export_job_id)

### unique
- none_required

### foreign_keys
- FK meal_plan_export_job_household_id -> family_profile.household_id
- FK meal_plan_export_job_target_plan_id -> meal_plan.meal_plan_id

### indexes
- IDX meal_plan_export_job_household_id (household_id)
- IDX meal_plan_export_job_target_scope (target_scope)
- IDX meal_plan_export_job_export_status (export_status)
- IDX meal_plan_export_job_created_at (created_at)

## 21. catalog_source_ref
### primary_key
- PK (catalog_source_id)

### unique
- UQ catalog_source_ref_source_triplet (source_system, source_namespace, source_reference_id)

### foreign_keys
- none

### indexes
- IDX catalog_source_ref_source_system (source_system)
- IDX catalog_source_ref_active_flag (active_flag)

## 22. ingredient_reference_cache
### primary_key
- PK (ingredient_reference_id)

### unique
- UQ ingredient_reference_cache_catalog_source_cx22073jw_knowledge_id (catalog_source_id, cx22073jw_knowledge_id)

### foreign_keys
- FK ingredient_reference_cache_catalog_source_id -> catalog_source_ref.catalog_source_id

### indexes
- IDX ingredient_reference_cache_catalog_source_id (catalog_source_id)
- IDX ingredient_reference_cache_category_code (category_code)
- IDX ingredient_reference_cache_updated_at (updated_at)

## 23. menu_reference_cache
### primary_key
- PK (menu_reference_id)

### unique
- UQ menu_reference_cache_catalog_source_cx22073jw_knowledge_id (catalog_source_id, cx22073jw_knowledge_id)

### foreign_keys
- FK menu_reference_cache_catalog_source_id -> catalog_source_ref.catalog_source_id

### indexes
- IDX menu_reference_cache_catalog_source_id (catalog_source_id)
- IDX menu_reference_cache_publication_status (publication_status)
- IDX menu_reference_cache_updated_at (updated_at)

## 24. published_user_menu_reference_cache
### primary_key
- PK (published_menu_reference_id)

### unique
- UQ published_user_menu_reference_cache_origin_user_menu_version (origin_user_id, origin_menu_id, version_no)

### foreign_keys
- FK published_user_menu_reference_cache_catalog_source_id -> catalog_source_ref.catalog_source_id

### indexes
- IDX published_user_menu_reference_cache_catalog_source_id (catalog_source_id)
- IDX published_user_menu_reference_cache_publication_status (publication_status)
- IDX published_user_menu_reference_cache_quality_score (quality_score)
- IDX published_user_menu_reference_cache_updated_at (updated_at)

## 25. optional_household_entitlement_cache
### primary_key
- PK (household_id)

### unique
- UQ optional_household_entitlement_cache_household_id (household_id)

### foreign_keys
- FK optional_household_entitlement_cache_household_id -> family_profile.household_id

### indexes
- IDX optional_household_entitlement_cache_plan_code (plan_code)
- IDX optional_household_entitlement_cache_is_paid (is_paid)
- IDX optional_household_entitlement_cache_effective_to (effective_to)


---

## SOURCE FILE: 030.model/020.domain/0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md

# MealPlanner Notification Settings Logical Shape

## 1. purpose
notification settings API に対応する論理保存形を固定する。

## 2. core_policy
- 通知設定の正本は user 単位
- household_id は文脈保持に使う
- shared_notice は paid のみ
- 医療系注意喚起は扱わない
- まずは 1 user + 1 household ごとに 1設定とする

## 3. logical_table
- table_name:
  - notification_preference

## 4. columns

### primary_columns
- notification_preference_id:
  - PK
- user_id:
  - required
  - non_null
- household_id:
  - required
  - non_null

### daily
- daily_plan_notice_enabled:
  - required
  - non_null
- daily_plan_notice_time:
  - optional
  - nullable

### weekly
- weekly_plan_notice_enabled:
  - required
  - non_null
- weekly_plan_notice_day:
  - optional
  - nullable
- weekly_plan_notice_time:
  - optional
  - nullable

### monthly
- monthly_plan_notice_enabled:
  - required
  - non_null
- monthly_plan_notice_day:
  - optional
  - nullable
- monthly_plan_notice_time:
  - optional
  - nullable

### shopping
- shopping_notice_enabled:
  - required
  - non_null
- shopping_notice_time:
  - optional
  - nullable

### expiry
- expiry_notice_enabled:
  - required
  - non_null
- expiry_notice_days_before:
  - optional
  - nullable

### shared
- shared_notice_enabled:
  - required
  - non_null

### audit
- created_at:
  - server_managed
  - non_null
- updated_at:
  - server_managed
  - non_null

## 5. uniqueness
- UQ user_id, household_id

## 6. logical_rules
- daily_plan_notice_enabled=false のとき:
  - daily_plan_notice_time は null 可
- weekly_plan_notice_enabled=false のとき:
  - weekly_plan_notice_day / weekly_plan_notice_time は null 可
- monthly_plan_notice_enabled=false のとき:
  - monthly_plan_notice_day / monthly_plan_notice_time は null 可
- shopping_notice_enabled=false のとき:
  - shopping_notice_time は null 可
- expiry_notice_enabled=false のとき:
  - expiry_notice_days_before は null 可
- free:
  - shared_notice_enabled=false 固定
- paid:
  - shared_notice_enabled=true/false 可

## 7. enum_like_values
- weekly_plan_notice_day:
  - sunday
  - monday
  - tuesday
  - wednesday
  - thursday
  - friday
  - saturday

## 8. validation_notes
- daily_plan_notice_time:
  - HH:MM
- weekly_plan_notice_time:
  - HH:MM
- monthly_plan_notice_time:
  - HH:MM
- shopping_notice_time:
  - HH:MM
- monthly_plan_notice_day:
  - 1-28
- expiry_notice_days_before:
  - 1-30

## 9. free_paid_boundary
- free:
  - shared_notice_enabled は保存時 false に正規化してよい
- paid:
  - shared_notice_enabled を保持できる

## 10. non_goals
- push token 保存
- 端末別通知最適化
- OS permission 詳細


---

## SOURCE FILE: 030.model/0300000_MODEL_INDEX.md

# Model Index

## purpose
MealPlanner のデータモデルと意味モデルを定義する

## files
- 0300001_MODEL_OVERVIEW.md

## notes
- この index は Model の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 030.model/0300001_MODEL_OVERVIEW.md

# Model Overview

## role
MealPlanner のデータモデルと意味モデルを定義する。

## model_summary
MealPlanner は life schema 上に、household 固有設定、実績、private user_menu、買い物、通知設定を持つ。
CX22073JW 側には基礎知識 / 公開知識 / 辞書知識の正本を置く。

## core_runtime_models
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

## reference_and_cache_models
- catalog_source_ref
- ingredient_reference_cache
- menu_reference_cache
- published_user_menu_reference_cache

## key_meaning_points
- meal_plan:
  - daily / weekly / monthly を持つ
- meal_slot:
  - 1食単位
- user_menu:
  - private 起点
- user_menu_publish_request:
  - 公開申請状態
- meal_plan_export_job:
  - CSV 出力依頼と結果
- notification_preference:
  - user 単位の通知設定

## model_policies
- budget の正本は budget_tier
- 表示安定のため snapshot を重視する
- free / paid 差は削除ではなく表示制御を優先する


---

## SOURCE FILE: 040.runtime/010.core/0400100000_CORE_INDEX.md

# Runtime Core Index

## purpose
MealPlanner の基本稼働方針を定義する

## files
- 0400100001_CORE_OVERVIEW.md

## notes
- この index は Runtime Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 040.runtime/010.core/0400100001_CORE_OVERVIEW.md

# Runtime Core Overview

## role
MealPlanner の基本稼働方針を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 040.runtime/020.domain/0400200000_DOMAIN_INDEX.md

# Runtime Domain Index

## purpose
MealPlanner の提案 / 共有 / 出力時挙動を定義する

## files
- 0400200001_DOMAIN_OVERVIEW.md

## notes
- この index は Runtime Domain の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 040.runtime/020.domain/0400200001_DOMAIN_OVERVIEW.md

# Runtime Domain Overview

## role
MealPlanner の提案 / 共有 / 出力時挙動を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 040.runtime/020.domain/0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md

# MealPlanner Runtime Behavior

## 提案粒度
- daily:
  - 即時性重視
  - 当日 / 翌日向け
  - 在庫消費、時間不足、簡易差し替えに強い
- weekly:
  - 主導線
  - 予算、使い回し、買い物効率を重視
- monthly:
  - 大枠計画
  - 週テーマ、予算配分、行事予定を重視

## 課金状態による挙動
### free
- 献立作成自体は利用可
- お気に入り / テンプレ / 履歴保持は制限
- 在庫連携、家族共有、LifeOS連携は制限

### paid
- 家族共有
- 在庫連携
- 余り食材優先提案
- 栄養簡易表示
- LifeOS連携
- AIチャットサポート

## CSV出力
- daily / weekly / monthly で実行可能
- UTF-8 前提
- 1食1行を基本とする


---

## SOURCE FILE: 040.runtime/020.domain/0400200003_MEAL_PLANNER_STATE_TRANSITION_DESIGN.md

# MealPlanner State Transition Design

## 1. purpose
MealPlanner の主要状態を、実装前に exact に固定する。

## 2. design_scope
- meal_plan
- meal_slot.actual_status
- shopping_list.purchase_status
- user_menu.publication_status
- user_menu_publish_request.submission_status
- meal_plan_export_job.export_status

## 3. common_principles
- 状態は enum に準拠する
- 状態遷移は自由遷移にしない
- private / household / lifeos_public の境界を壊す遷移は禁止
- 公開審査本体は LifeOS 側責務
- MealPlanner 側は申請状態と反映状態を持つ
- 実績は原則巻き戻しより追記で扱う

## 4. meal_plan state

### state_definition
- draft
- active
- completed
- archived

### meaning
- draft:
  - 生成直後または編集中
- active:
  - 今後使う計画
  - 現在運用中の計画
- completed:
  - 期間終了済み
- archived:
  - 長期保管対象
  - 通常導線から外す

### allowed_transitions
- draft -> active
- draft -> archived
- active -> completed
- active -> archived
- completed -> archived

### forbidden_transitions
- archived -> draft
- completed -> active
- archived -> active

### transition_triggers
- generate_plan_success:
  - draft 作成
- user_confirm_use:
  - draft -> active
- target_end_date_passed:
  - active -> completed
- archive_action:
  - draft/active/completed -> archived

## 5. meal_slot actual_status state

### state_definition
- planned
- changed
- skipped
- eating_out
- convenience_food

### meaning
- planned:
  - 計画どおり
- changed:
  - 献立差し替え済み
- skipped:
  - 食事枠を飛ばした
- eating_out:
  - 外食へ置換
- convenience_food:
  - 市販品 / 簡易食へ置換

### allowed_transitions
- planned -> changed
- planned -> skipped
- planned -> eating_out
- planned -> convenience_food
- changed -> eating_out
- changed -> convenience_food
- changed -> skipped

### notes
- 実績変更時は meal_history を追記する
- actual_status の変更だけで履歴を代用しない

## 6. shopping_list purchase_status state

### state_definition
- draft
- active
- completed
- archived

### meaning
- draft:
  - 生成直後
- active:
  - 買い物中
- completed:
  - 買い物完了
- archived:
  - 保管状態

### allowed_transitions
- draft -> active
- active -> completed
- completed -> archived
- draft -> archived

### transition_triggers
- shopping_generate:
  - draft 作成
- first_check_action:
  - draft -> active
- all_items_checked_or_user_complete:
  - active -> completed
- archive_action:
  - completed -> archived

## 7. user_menu publication_status state

### state_definition
- private
- draft
- review_pending
- published
- rejected

### meaning
- private:
  - household 内のみ利用
  - 公開申請前
- draft:
  - 公開準備中
- review_pending:
  - LifeOS 公開審査待ち
- published:
  - 公開済み
- rejected:
  - 公開却下済み

### allowed_transitions
- private -> draft
- draft -> review_pending
- review_pending -> published
- review_pending -> rejected
- rejected -> draft

### forbidden_transitions
- private -> published
- draft -> published
- rejected -> published directly

### transition_triggers
- user_prepare_publish:
  - private -> draft
- submit_publish_request:
  - draft -> review_pending
- lifeos_approved:
  - review_pending -> published
- lifeos_rejected:
  - review_pending -> rejected
- user_revise_after_reject:
  - rejected -> draft

## 8. user_menu_publish_request submission_status state

### state_definition
- draft
- requested
- review_pending
- approved
- rejected
- published

### meaning
- draft:
  - 申請情報作成中
- requested:
  - 送信直後
- review_pending:
  - 審査待ち
- approved:
  - 承認済みだが反映待ちを含みうる
- rejected:
  - 却下
- published:
  - 公開反映完了

### allowed_transitions
- draft -> requested
- requested -> review_pending
- review_pending -> approved
- review_pending -> rejected
- approved -> published

### notes
- user_menu.publication_status と submission_status は同一ではない
- submission_status は申請フロー状態
- publication_status は献立公開状態

## 9. meal_plan_export_job export_status state

### state_definition
- requested
- generated
- failed

### meaning
- requested:
  - 出力依頼済み
- generated:
  - CSV 生成完了
- failed:
  - 生成失敗

### allowed_transitions
- requested -> generated
- requested -> failed

### retry_policy
- failed の場合は新規 export_job を作る
- 同一 job を巻き戻さない

## 10. visibility_scope state intent

### scope_definition
- private
- household
- lifeos_public

### rules
- create 時の既定は private
- household は app 内共有
- lifeos_public は publish flow 通過後のみ
- lifeos_public を request で直接確定しない

## 11. free_paid_interaction_notes
- free / paid は状態そのものではない
- state transition を課金で増やさず、使える行為を変える
- 例:
  - pantry_inventory の full edit は paid
  - family shared check は paid
  - state model 自体は共通

## 12. non_goals
- 状態遷移に実装手順を混ぜない
- DB trigger 詳細を書かない
- LifeOS 審査内部状態を MealPlanner に持ち込まない


---

## SOURCE FILE: 040.runtime/0400000_RUNTIME_INDEX.md

# Runtime Index

## purpose
MealPlanner の稼働時挙動を定義する

## files
- 0400001_RUNTIME_OVERVIEW.md

## notes
- この index は Runtime の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 040.runtime/0400001_RUNTIME_OVERVIEW.md

# Runtime Overview

## role
MealPlanner の稼働時挙動を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 050.flow/010.core/0500100000_CORE_INDEX.md

# Flow Core Index

## purpose
MealPlanner の主要フロー分類を定義する

## files
- 0500100001_CORE_OVERVIEW.md

## notes
- この index は Flow Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 050.flow/010.core/0500100001_CORE_OVERVIEW.md

# Flow Core Overview

## role
MealPlanner の主要フロー分類を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 050.flow/020.domain/0500200000_DOMAIN_INDEX.md

# Flow Domain Index

## purpose
MealPlanner の利用フローを定義する

## files
- 0500200001_DOMAIN_OVERVIEW.md

## notes
- この index は Flow Domain の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 050.flow/020.domain/0500200001_DOMAIN_OVERVIEW.md

# Flow Domain Overview

## role
MealPlanner の利用フローを定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 050.flow/020.domain/0500200002_MEAL_PLANNER_USER_FLOW.md

# MealPlanner User Flow

## 主利用フロー
1. household 設定
2. budget_tier 選択
3. 日 / 週 / 月の提案粒度選択
4. 基本献立 + user献立から候補取得
5. meal_plan 作成
6. shopping_list 生成
7. 必要なら CSV 出力
8. 実績記録
9. 次回提案へ反映

## ユーザー献立追加フロー
1. user_menu_editor で private 献立作成
2. household 内で利用
3. 公開希望時は LifeOS Publish へ申請
4. 公開状態を受信
5. published 後は他者参照候補化

## 月次→週次→日次フロー
1. monthly 大枠作成
2. weekly に展開
3. daily で最終調整


---

## SOURCE FILE: 050.flow/020.domain/0500200003_MEAL_PLANNER_SCREEN_NAVIGATION_TRANSITION_MATRIX.md

# MealPlanner Screen Navigation Transition Matrix

## 1. purpose
MealPlanner の主要画面遷移を固定する。

## 2. navigation_principles
- 週次画面を主導線にする
- 日次は即時調整導線
- 月次は先回り計画導線
- pantry / family / integration は paid 文脈で広げる
- 公開申請は user_menu 導線からのみ行う
- upgrade 導線は割り込みすぎない

## 3. root_tabs
- ホーム
- 献立
- 買い物
- 履歴
- 設定

## 4. primary_transitions

### dashboard_home
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- monthly_meal_planner
- shopping_list
- meal_history_log
- goal_and_budget_settings
- pantry_inventory
- family_settings
- notification_settings

notes:
- pantry_inventory on free:
  - teaser or upgrade modal
- family_settings advanced on free:
  - teaser or limited mode

### weekly_meal_planner
can_navigate_to:
- daily_meal_detail
- menu_search_and_suggestion
- template_library
- favorite_menu_list
- shopping_list
- goal_and_budget_settings
- user_menu_editor

notes:
- slot tap -> daily_meal_detail
- replace action -> menu_search_and_suggestion
- csv export stays in place
- template save limit on free -> upgrade modal

### daily_meal_detail
can_navigate_to:
- menu_search_and_suggestion
- weekly_meal_planner
- shopping_list
- meal_history_log

notes:
- actual result record stays in place
- nutrition panel on free -> upgrade modal

### monthly_meal_planner
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- goal_and_budget_settings

notes:
- derive week -> weekly_meal_planner
- csv export stays in place

### menu_search_and_suggestion
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- user_menu_editor

notes:
- select result -> return with chosen menu context
- add own menu -> user_menu_editor

### pantry_inventory
can_navigate_to:
- weekly_meal_planner
- shopping_list

notes:
- paid full access
- free teaser only or blocked entry

### shopping_list
can_navigate_to:
- weekly_meal_planner
- pantry_inventory
- family_settings

notes:
- shared check full is paid
- single use path remains for free

### goal_and_budget_settings
can_navigate_to:
- weekly_meal_planner
- monthly_meal_planner
- family_settings

notes:
- LifeOS integration toggle on free -> upgrade modal

### family_settings
can_navigate_to:
- goal_and_budget_settings
- weekly_meal_planner
- shopping_list

notes:
- household edit is planner-focused

### template_library
can_navigate_to:
- weekly_meal_planner
- monthly_meal_planner

### favorite_menu_list
can_navigate_to:
- weekly_meal_planner
- daily_meal_detail
- menu_search_and_suggestion

### meal_history_log
can_navigate_to:
- daily_meal_detail
- weekly_meal_planner

notes:
- older-than-free-window -> upgrade modal

### user_menu_editor
can_navigate_to:
- user_menu_publish_status
- weekly_meal_planner
- menu_search_and_suggestion

notes:
- save private -> remain or return
- submit publish -> user_menu_publish_status optional redirect

### user_menu_publish_status
can_navigate_to:
- user_menu_editor
- weekly_meal_planner

### notification_settings
can_navigate_to:
- dashboard_home
- family_settings
- goal_and_budget_settings

## 5. modal_transitions
- free pantry access -> upgrade_modal
- free nutrition panel -> upgrade_modal
- free shared check -> upgrade_modal
- free integration toggle -> upgrade_modal
- free template limit reached -> upgrade_modal
- free favorite limit reached -> upgrade_modal
- free history old range -> upgrade_modal

## 6. destructive_or_sensitive_transition_rules
- unsaved user_menu edit:
  - confirm before leave
- unsaved family settings:
  - confirm before leave
- replacing slot:
  - no full-screen confirm required
  - but changed flag must be set on save
- publish request:
  - confirm before submit

## 7. non_goals
- framework routing details
- deep link implementation
- animation specification


---

## SOURCE FILE: 050.flow/0500000_FLOW_INDEX.md

# Flow Index

## purpose
MealPlanner の利用フロー、運用フロー、連携フローを定義する

## files
- 0500001_FLOW_OVERVIEW.md

## notes
- この index は Flow の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 050.flow/0500001_FLOW_OVERVIEW.md

# Flow Overview

## role
MealPlanner の利用フロー、運用フロー、連携フローを定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 060.integration/010.core/0600100000_CORE_INDEX.md

# Integration Core Index

## purpose
MealPlanner の連携原則を定義する

## files
- 0600100001_CORE_OVERVIEW.md

## notes
- この index は Integration Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 060.integration/010.core/0600100001_CORE_OVERVIEW.md

# Integration Core Overview

## role
MealPlanner の連携原則を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 060.integration/010.core/0600100002_API_REQUEST_RESPONSE_EXACT_PAYLOAD_POLICY.md

# API Request / Response Exact Payload Policy

## 1. 目的
MealPlanner の主要 API について、request / response の exact payload を固定し、
画面・実装・DB設計のぶれを抑える。

## 2. 共通原則
- request / response は JSON を正とする
- キー名は snake_case を正とする
- 日付は YYYY-MM-DD
- 日時は ISO-8601
- 通貨は currency_code
- meal_category は breakfast / lunch / dinner / snack
- plan_horizon は daily / weekly / monthly
- budget_tier は saving / standard / generous
- source_type は system_seed / cx22073jw_base / user_private / user_published
- publication_status は private / draft / review_pending / published / rejected

## 3. API分類
- plan APIs
- menu APIs
- shopping APIs
- pantry APIs
- export APIs
- publish APIs
- settings APIs

## 4. エラーレスポンス共通
{
  "success": false,
  "error": {
    "code": "string",
    "message": "string",
    "details": {}
  }
}

## 5. 正常レスポンス共通
{
  "success": true,
  "data": {}
}


---

## SOURCE FILE: 060.integration/010.core/0600100003_NOTIFICATION_SETTINGS_API_EXACT.md

# Notification Settings API Exact

## 1. purpose
MealPlanner の通知設定 API を exact に固定する。

## 2. policy_summary
- 通知設定は household 単位ではなく、まず user 単位を正とする
- 共有通知は paid のみ
- 医療的注意喚起は扱わない
- 強すぎる通知は避ける

## 3. endpoint_list
- GET /api/mealplanner/notification/settings
- POST /api/mealplanner/notification/settings/update

## 4. GET /api/mealplanner/notification/settings

### request_query
- user_id: required
- household_id: required

### response
{
  "success": true,
  "data": {
    "user_id": "user_001",
    "household_id": "household_001",
    "plan_code": "paid",
    "settings": {
      "daily_plan_notice_enabled": true,
      "daily_plan_notice_time": "19:00",
      "weekly_plan_notice_enabled": true,
      "weekly_plan_notice_day": "sunday",
      "weekly_plan_notice_time": "18:00",
      "monthly_plan_notice_enabled": false,
      "monthly_plan_notice_day": 1,
      "monthly_plan_notice_time": "10:00",
      "shopping_notice_enabled": true,
      "shopping_notice_time": "09:00",
      "expiry_notice_enabled": true,
      "expiry_notice_days_before": 2,
      "shared_notice_enabled": true
    }
  }
}

## 5. POST /api/mealplanner/notification/settings/update

### request
{
  "user_id": "user_001",
  "household_id": "household_001",
  "settings": {
    "daily_plan_notice_enabled": true,
    "daily_plan_notice_time": "19:00",
    "weekly_plan_notice_enabled": true,
    "weekly_plan_notice_day": "sunday",
    "weekly_plan_notice_time": "18:00",
    "monthly_plan_notice_enabled": false,
    "monthly_plan_notice_day": 1,
    "monthly_plan_notice_time": "10:00",
    "shopping_notice_enabled": true,
    "shopping_notice_time": "09:00",
    "expiry_notice_enabled": true,
    "expiry_notice_days_before": 2,
    "shared_notice_enabled": true
  }
}

### response
{
  "success": true,
  "data": {
    "user_id": "user_001",
    "household_id": "household_001",
    "updated_at": "2026-04-14T12:00:00+09:00"
  }
}

## 6. field_rules
- daily_plan_notice_enabled:
  - required
  - boolean
- daily_plan_notice_time:
  - optional
  - nullable
  - HH:MM
- weekly_plan_notice_enabled:
  - required
- weekly_plan_notice_day:
  - optional
  - nullable
  - sunday / monday / tuesday / wednesday / thursday / friday / saturday
- weekly_plan_notice_time:
  - optional
  - nullable
- monthly_plan_notice_enabled:
  - required
- monthly_plan_notice_day:
  - optional
  - nullable
  - 1-28
- monthly_plan_notice_time:
  - optional
  - nullable
- shopping_notice_enabled:
  - required
- shopping_notice_time:
  - optional
  - nullable
- expiry_notice_enabled:
  - required
- expiry_notice_days_before:
  - optional
  - nullable
  - 1-30
- shared_notice_enabled:
  - required
  - free では false 固定または update 不可

## 7. free_paid_rules
- free:
  - shared_notice_enabled = false
  - shared notice update 不可
- paid:
  - shared_notice_enabled 利用可

## 8. validation_copy
- invalid_time:
  - 時刻を確認してください
- invalid_weekday:
  - 曜日を確認してください
- invalid_month_day:
  - 日付を確認してください
- invalid_expiry_notice_days_before:
  - 期限通知の日数を確認してください
- shared_notice_on_free:
  - 共有通知は有料で利用できます


---

## SOURCE FILE: 060.integration/010.core/0600100004_MEAL_PLANNER_LIFEOS_INTEGRATION_CONTRACT_SUMMARY.md

# MealPlanner LifeOS Integration Contract Summary

## 1. purpose
MealPlanner と LifeOS 系アプリ / 機能の連携境界を実装前に整理する。

## 2. contract_principles
- 判断結果ではなく条件・傾向・集計を渡す
- MealPlanner が医療判断主体にならない
- household 文脈と user 文脈を混同しない
- paid のみ full integration
- free では teaser or basic non-integrated operation

## 3. integration_targets

### BodyMetrics
MealPlanner sends:
- weight_goal_type context consumption flag
- nutrition_tendency_summary
- salt_attention_flag
- protein_focus_flag

MealPlanner receives:
- latest_weight_goal
- latest_body_trend_hint

boundary:
- 体重や傾向ヒントの利用に留める
- 医療判断に使わない

### TrainingCoach
MealPlanner sends:
- meal_energy_tendency
- protein_focus_flag
- training_day_meal_context optional

MealPlanner receives:
- activity_level_hint
- training_day_flag

boundary:
- 運動量に応じた献立強弱へ使う
- 栄養指導の確定判断はしない

### MoneyPlanner
MealPlanner sends:
- weekly_food_budget_usage
- monthly_food_cost_summary

MealPlanner receives:
- budget_limit_hint
- household_budget_alert_level

boundary:
- budget_tier の補助文脈として使う
- 金額直入力の正本にしない

### LifeOS Publish
MealPlanner sends:
- publish_request_for_user_menu
- requested_visibility_scope
- publish_note

MealPlanner receives:
- submission_status
- publication_status
- review_note_nullable

boundary:
- 審査は LifeOS 側
- MealPlanner 側は申請と表示のみ

## 4. integration_data_shapes_summary

### outbound_shape_example
- household_id
- user_id
- source_app = MealPlanner
- integration_target
- context_type
- context_payload
- generated_at

### inbound_shape_example
- integration_target
- source_app
- source_record_id
- effective_at
- hint_payload

## 5. integration_enablement_policy
- free:
  - teaser only or no full sync
- paid:
  - full enablement allowed

## 6. conflict_policy
- external hint conflicts with local household setting:
  - local household explicit setting wins
- missing external hint:
  - MealPlanner continues standalone
- stale external hint:
  - treat as weak suggestion only

## 7. non_goals
- transport protocol exact
- auth token exact
- sync scheduler exact
- background job design


---

## SOURCE FILE: 060.integration/020.cx22073jw/0600200000_CX22073JW_INDEX.md

# Integration CX22073JW Index

## purpose
MealPlanner と CX22073JW の連携を定義する

## files
- 0600200001_CX22073JW_OVERVIEW.md

## notes
- この index は Integration CX22073JW の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 060.integration/020.cx22073jw/0600200001_CX22073JW_OVERVIEW.md

# Integration CX22073JW Overview

## role
MealPlanner と CX22073JW の連携を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 060.integration/020.cx22073jw/0600200002_CX22073JW_INTEGRATION.md

# CX22073JW Integration

## 読取対象
- ingredient_master_base
- ingredient_multilingual_name_dictionary
- ingredient_synonym_dictionary
- ingredient_category_taxonomy
- allergen_tag_master
- dietary_tag_master
- seasonality_reference
- nutrition_reference_base
- shopping_category_master
- daily_weekly_monthly_pattern_templates_base
- menu_master_base
- published_user_menu_catalog

## 連携原則
- CX22073JW は基礎知識の正本
- MealPlanner は参照 / キャッシュ利用を行う
- private 下書きは CX22073JW の正本にしない
- app表示用キャッシュと overlay は MealPlanner 側で保持可能

## フォールバック
- CX22073JW 未取得時も app 内キャッシュ + private データで最低限動作可能


---

## SOURCE FILE: 060.integration/020.cx22073jw/0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md

# MealPlanner CX22073JW Boundary Final

## 1. purpose
MealPlanner と CX22073JW の責務境界を正式化する。

## 2. core_conclusion
- CX22073JW:
  - 基礎知識
  - 公開知識
  - 辞書知識
  - 参照知識
- MealPlanner:
  - household 固有設定
  - private データ
  - 実績
  - 運用状態
  - 提案実行結果
- LifeOS:
  - 公開フロー
  - 公開状態の公式反映

## 3. CX22073JW primary domains

### ingredient_knowledge
- ingredient_master_base
- ingredient_multilingual_name_dictionary
- ingredient_synonym_dictionary
- ingredient_category_taxonomy
- allergen_tag_master
- dietary_tag_master
- storage_type_reference
- shelf_life_reference_base
- seasonality_reference
- nutrition_reference_base
- purchasable_unit_reference

### menu_knowledge
- menu_master_base
- menu_category_taxonomy
- cuisine_type_master
- season_tag_master
- meal_timing_tag_master
- difficulty_level_master
- prep_time_band_master
- default_serving_reference
- basic_cost_band_reference
- menu_dietary_compatibility_tags
- menu_nutrition_profile_reference

### substitution_knowledge
- ingredient_substitution_rules
- menu_substitution_rules
- allergy_safe_substitution_reference
- low_cost_substitution_reference
- seasonal_substitution_reference

### shopping_knowledge
- shopping_category_master
- ingredient_to_store_section_mapping
- standard_package_size_reference
- household_purchase_grouping_rules
- unit_normalization_reference

### meal_pattern_knowledge
- daily_pattern_templates_base
- weekly_pattern_templates_base
- monthly_pattern_templates_base
- budget_tier_pattern_reference
- family_size_pattern_reference
- event_day_pattern_reference

### locale_food_culture_knowledge
- locale_specific_food_names
- regional_meal_customs
- locale_unit_preferences
- locale_meal_examples
- seasonal_event_food_reference

### published_user_menu_catalog
- published_user_menu_master
- published_user_menu_version
- published_user_menu_origin_info
- published_user_menu_tags
- published_user_menu_visibility_scope

### provenance_and_quality_metadata
- source_type
- source_origin
- reviewed_flag
- quality_score_reference
- locale_validity_scope
- effective_version
- deprecated_flag

## 4. MealPlanner local domains

### household_runtime_data
- family_profile
- family_member_preference
- budget_profile
- goal_profile
- dietary_rule

### plan_runtime_data
- meal_plan
- meal_slot
- meal_history
- shopping_list
- shopping_list_item
- meal_plan_export_job

### private_menu_data
- user_menu private
- user_menu_ingredient
- user_menu_publish_request

### local_runtime_helpers
- reference cache
- overlay
- snapshot text
- local indexes
- free/paid gating context
- household entitlement cache optional

## 5. data_direction_rules
- CX22073JW -> MealPlanner:
  - read primary
  - cache optional
- MealPlanner -> CX22073JW:
  - direct primary write しない
- MealPlanner -> LifeOS publish:
  - submit publish request
- LifeOS publish -> CX22073JW:
  - 公開済み知識反映の公式経路
- LifeOS publish -> MealPlanner:
  - publish status return

## 6. cache_rules
allowed:
- ingredient_reference_cache
- menu_reference_cache
- published_user_menu_reference_cache
- snapshot fields
- overlay fields

not_allowed:
- CX22073JW 正本の無秩序複製
- private data を CX22073JW 正本として扱うこと
- 審査前 private user_menu の public catalog 混入

## 7. search_and_suggestion_rules
MealPlanner の提案候補は次を混在可能:
- cx22073jw_base
- user_private
- user_published

優先ロジックは MealPlanner 側責務であり、
CX22073JW 側は候補知識の正本を担う。

## 8. source_type rules
- system_seed:
  - app 初期値や seed
- cx22073jw_base:
  - CX22073JW 基礎知識由来
- user_private:
  - household 内 private 献立
- user_published:
  - 公開済み user 献立参照

## 9. strict_boundary_rules
- MealPlanner は CX22073JW 正本食材を編集しない
- MealPlanner は CX22073JW 正本基本献立を編集しない
- 公開 user menu の正本更新権は publish flow 後続責務に従う
- private user menu と published user menu は同じ意味で扱わない

## 10. fallback_rules
- CX22073JW 未取得時:
  - reference cache 使用可
  - private user menu 使用可
  - snapshot 使用可
- ただし新規基礎知識更新は遅延しうる

## 11. non_goals
- MealPlanner から CX22073JW の物理設計を決めない
- CX22073JW の審査 / 品質採点内部ロジックを MealPlanner に持ち込まない


---

## SOURCE FILE: 060.integration/030.lifeos_publish/0600300000_LIFEOS_PUBLISH_INDEX.md

# Integration LifeOS Publish Index

## purpose
MealPlanner と LifeOS Publish Flow の連携を定義する

## files
- 0600300001_LIFEOS_PUBLISH_OVERVIEW.md

## notes
- この index は Integration LifeOS Publish の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 060.integration/030.lifeos_publish/0600300001_LIFEOS_PUBLISH_OVERVIEW.md

# Integration LifeOS Publish Overview

## role
MealPlanner と LifeOS Publish Flow の連携を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 060.integration/030.lifeos_publish/0600300002_LIFEOS_PUBLISH_INTEGRATION.md

# LifeOS Publish Integration

## 対象
- ユーザー献立の公開申請
- 公開状態同期

## MealPlanner 側責務
- 公開申請ボタン
- 申請状態表示
- private / household / lifeos_public の表示制御
- 公開結果反映

## LifeOS 側責務
- 公開フロー
- 審査 / 承認 / 却下管理
- 公開カタログ反映


---

## SOURCE FILE: 060.integration/030.lifeos_publish/0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md

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


---

## SOURCE FILE: 060.integration/0600000_INTEGRATION_INDEX.md

# Integration Index

## purpose
MealPlanner の外部連携境界を定義する

## files
- 0600001_INTEGRATION_OVERVIEW.md

## notes
- この index は Integration の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 060.integration/0600001_INTEGRATION_OVERVIEW.md

# Integration Overview

## role
MealPlanner の外部連携境界を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 070.operations/010.core/0700100000_CORE_INDEX.md

# Operations Core Index

## purpose
MealPlanner の基本運用方針を定義する

## files
- 0700100001_CORE_OVERVIEW.md

## notes
- この index は Operations Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 070.operations/010.core/0700100001_CORE_OVERVIEW.md

# Operations Core Overview

## role
MealPlanner の基本運用方針を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 070.operations/010.core/0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md

# MealPlanner AI Chat Support FAQ Design

## 1. purpose
MealPlanner のサポートを AIチャットのみで運用する前提で、
対応範囲、FAQ、非対応範囲を固定する。

## 2. support_model
- official_support_mode:
  - ai_chat_only
- no_human_support_default:
  - true

## 3. support_scope_included
- 使い方案内
- 基本設定案内
- 画面遷移案内
- budget_tier の説明
- CSV出力の案内
- user_menu 作成の案内
- 公開申請の案内
- pantry 連携の案内
- family 共有の案内
- よくある入力エラーの案内
- 基本トラブルシュート
- free / paid の違い説明

## 4. support_scope_excluded
- 医療相談
- 栄養士業務相当の個別指導
- 病気や治療に関する助言
- 個別献立の専門責任ある保証
- 人手によるデータ修正代行
- 電話サポート
- メールによる有人サポート
- 返金の個別裁量判断
- LifeOS 公開審査の個別保証

## 5. tone_policy
- 短く分かりやすく
- 家庭向け
- 責めない
- 医療判断に踏み込まない
- 強い断定を避ける

## 6. faq_core

### Q1
- question:
  - 無料と有料の違いは？
- answer:
  - 無料では献立作成、買い物リスト、CSV出力、自分の献立追加などの基本機能を使えます。有料では在庫連携、家族共有、栄養表示、LifeOS連携、AIチャットサポートが使えます。

### Q2
- question:
  - 有料はいくら？
- answer:
  - 有料は月額500円です。

### Q3
- question:
  - サポートはどう受けられる？
- answer:
  - サポートはAIチャットのみです。操作案内や基本的な困りごとを案内します。

### Q4
- question:
  - 献立は日・週・月で作れる？
- answer:
  - はい。日、週、月の3つの粒度で献立提案を使えます。普段は週、急ぎのときは日、先回りには月が向いています。

### Q5
- question:
  - CSV出力はできる？
- answer:
  - はい。日、週、月の献立表をCSV出力できます。

### Q6
- question:
  - 自分の献立を追加できる？
- answer:
  - はい。自分の献立を追加して、普段の提案や献立表に使えます。

### Q7
- question:
  - 自分の献立を公開できる？
- answer:
  - はい。LifeOS を通じて公開申請できます。公開は申請後に処理されます。

### Q8
- question:
  - 食材データや基本献立はどこから来る？
- answer:
  - 基礎知識は CX22073JW を参照基盤として扱います。MealPlanner では家庭ごとの設定や履歴を扱います。

### Q9
- question:
  - 予算はどう決まる？
- answer:
  - 節約、普通、多めから選びます。内部では家族人数や地域、通貨などを見て参考金額を計算します。

### Q10
- question:
  - 家族で共有できる？
- answer:
  - はい。有料では家族で献立や買い物リストを共有できます。

### Q11
- question:
  - 在庫連携はできる？
- answer:
  - 有料では冷蔵庫在庫を登録して、買い物差分や余り食材優先提案に使えます。

### Q12
- question:
  - 医療的な相談もできる？
- answer:
  - いいえ。MealPlanner は生活改善支援アプリであり、医療診断や治療判断は行いません。

## 7. error_help_patterns

### csv_failed
- user_message:
  - CSV出力に失敗しました
- ai_help_message:
  - もう一度お試しください。対象の献立表が保存済みか、出力対象の日・週・月が正しいか確認してください。

### publish_failed
- user_message:
  - 公開申請に失敗しました
- ai_help_message:
  - 献立名や食材情報が不足していないか確認してから、もう一度お試しください。

### pantry_blocked_free
- user_message:
  - 在庫連携は有料で利用できます
- ai_help_message:
  - 有料では在庫登録、買い物差分、余り食材優先提案まで使えます。

### history_limit_free
- user_message:
  - 30日より前の履歴は有料で確認できます
- ai_help_message:
  - 有料では長い期間の履歴も確認できます。

## 8. escalation_policy
- no_human_escalation_default:
  - true
- exceptional_future_placeholder:
  - store_refund_policy_or_platform_support_only
- notes:
  - アプリ内サポートは AIチャットのみ
  - 課金処理そのものはストア側案内を優先する

## 9. non_goals
- FAQ に実装仕様を混ぜない
- FAQ に医療表現を混ぜない
- FAQ に審査保証を混ぜない


---

## SOURCE FILE: 070.operations/010.core/0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md

# MealPlanner AI Chat Billing And Store Boundary

## 1. purpose
AIチャットが説明してよい範囲と、ストア案内へ寄せる範囲を固定する。

## 2. AI_chat_can_explain
- 無料 / 有料の違い
- 月額500円であること
- CSV出力可否
- pantry / family share / nutrition / integration が有料であること
- AIチャットのみサポートであること
- 使い方
- 画面操作
- よくあるエラー

## 3. AI_chat_should_redirect_to_store_or_platform
- 実際の課金処理失敗
- 購入復元の詳細
- ストア決済状態の食い違い
- 返金申請
- プラットフォーム側請求詳細
- App Store / Google Play アカウント起因問題

## 4. approved_copy_patterns

### billing_difference
- 無料では基本機能を使えます。有料では在庫連携、家族共有、栄養表示、LifeOS連携、AIチャットサポートが使えます。

### billing_price
- 有料は月額500円です。

### restore_or_store_help
- 購入や請求に関する詳細は、ご利用中のストア案内も確認してください。

### refund_help
- 返金については、購入したストアの案内に沿って確認してください。

## 5. forbidden_copy_patterns
- こちらで返金できます
- 課金状態をこちらで直接修正します
- ストア審査結果を保証します
- 必ず課金が復元されます

## 6. support_boundary_summary
- app usage:
  - AIチャットで案内
- billing transaction internals:
  - store / platform を正とする
- medical:
  - non-supported

## 7. non_goals
- ストア課金実装仕様の詳細化
- 課金復旧手順の画面実装


---

## SOURCE FILE: 070.operations/0700000_OPERATIONS_INDEX.md

# Operations Index

## purpose
MealPlanner の運用、保守、監視観点を定義する

## files
- 0700001_OPERATIONS_OVERVIEW.md

## notes
- この index は Operations の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 070.operations/0700001_OPERATIONS_OVERVIEW.md

# Operations Overview

## role
MealPlanner の運用、サポート、課金案内境界を定義する。

## operations_summary
- サポートは AIチャットのみ
- 操作案内、設定案内、基本トラブルシュートを扱う
- 医療相談は扱わない
- ストア決済や返金はストア / プラットフォーム側案内を優先する

## support_scope_included
- 使い方案内
- 画面案内
- budget_tier 説明
- CSV出力案内
- user_menu 作成案内
- 公開申請案内
- free / paid 差の説明

## support_scope_excluded
- 医療相談
- 栄養士業務相当の個別指導
- 人手による代行
- ストア課金の内部修正
- 返金の個別裁量判断

## operation_notes
- AIチャットは短く分かりやすく案内する
- 課金処理エラーはストア案内へ寄せる


---

## SOURCE FILE: 080.policy/010.core/0800100000_CORE_INDEX.md

# Policy Core Index

## purpose
MealPlanner のプロダクトポリシーを定義する

## files
- 0800100001_CORE_OVERVIEW.md

## notes
- この index は Policy Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 080.policy/010.core/0800100001_CORE_OVERVIEW.md

# Policy Core Overview

## role
MealPlanner のプロダクトポリシーを定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 080.policy/010.core/0800100002_MEAL_PLANNER_POLICY.md

# MealPlanner Policy

## 課金
- 無料 / 有料500円
- サポートは AIチャットのみ
- 電話 / 有人個別サポートは原則なし

## 公開
- ユーザー献立は初期状態 private
- household 共有は app 内で許可可能
- lifeos_public は公開フロー通過後のみ

## 健康境界
- 医療診断なし
- 医療相談なし
- 生活改善支援に限定


---

## SOURCE FILE: 080.policy/010.core/0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md

# MealPlanner Published Menu Versioning Policy

## 1. purpose
公開済み user_menu の版管理方針を実装前に固定する。

## 2. core_principles
- private と published は同じ意味で扱わない
- 公開済み献立は直接上書きしない
- 公開後の修正は新しい版として扱う
- 参照安定性を優先する
- 元作成者情報を保持する
- 公開審査本体は LifeOS 側責務とする

## 3. versioning_units
- source private menu:
  - user_menu
- publish flow unit:
  - user_menu_publish_request
- published catalog unit:
  - published_user_menu_catalog entry
- published version unit:
  - published_user_menu_version

## 4. state_intent
- private:
  - household 内で編集可能な元データ
- published:
  - 公開済み参照版
- revised_next_version:
  - 公開済みを元にした次版候補

## 5. version_rules
- 初回公開時:
  - version_no = 1
- 公開済み献立の修正時:
  - 既存 published を直接更新しない
  - private 側で修正版を作る
  - 再申請後、承認されれば version_no を +1 する
- 古い公開版:
  - 参照整合のため保持可能
- catalog の既定表示:
  - 最新 approved / published 版を優先する

## 6. identity_rules
- origin_user_id:
  - 元作成者を保持
- origin_menu_id:
  - 元の private user_menu 系列識別子を保持
- published_menu_reference_id:
  - 公開カタログ側の参照ID
- version_no:
  - 系列内の版番号

## 7. edit_rules
- private user_menu:
  - 作成者 household 内で編集可
- published menu:
  - 直接上書き不可
- revise published menu:
  - 新しい private working copy を作る
- other users:
  - 公開献立は参照候補として使えるが、元公開版そのものの上書き編集はしない

## 8. visibility_rules
- private:
  - household 内のみ
- household:
  - app 内共有
- lifeos_public:
  - publish flow 通過後のみ

## 9. approval_flow_relation
- MealPlanner:
  - 公開申請を出す
  - 申請状態を表示する
  - 反映結果を受け取る
- LifeOS:
  - 審査
  - 承認 / 却下
  - 公開カタログ反映
- CX22073JW:
  - 公開知識としての参照基盤を担う可能性がある

## 10. replacement_rules
- suggestion default:
  - 最新 published version を優先
- existing meal_slot snapshots:
  - 旧版を使っていても snapshot を保持する
- favorite / template:
  - version 固定参照にするか、最新追従にするかは将来詳細化対象
  - 現時点では snapshot 優先で崩れない設計を取る

## 11. reject_rules
- rejected version:
  - published にしない
  - private draft 系列に戻して再修正可能
- rejected reason:
  - review_note で保持可

## 12. non_goals
- 公開審査内部ロジックの詳細化
- ライセンス条項の詳細設計
- 収益分配設計


---

## SOURCE FILE: 080.policy/010.core/0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md

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


---

## SOURCE FILE: 080.policy/010.core/0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md

# MealPlanner Published Menu Search Sort Policy

## 1. purpose
公開済み献立を含む検索 / 提案時の並び順ルールを固定する。

## 2. candidate_source_scope
- cx22073jw_base
- user_private
- user_published

## 3. default_priority_by_context

### direct_search_context
priority_order:
- text_match_strength
- filter_match_strength
- source_priority_contextual
- quality_score
- freshness
- version_recency

### suggestion_context
priority_order:
- dietary_fit
- budget_fit
- pantry_fit
- household_preference_fit
- source_priority_contextual
- quality_score
- freshness

## 4. source_priority_contextual

### when user searches own household context
priority_preference:
- user_private
- cx22073jw_base
- user_published

### when user searches broad inspiration
priority_preference:
- cx22073jw_base
- user_published
- user_private

### when exact keyword hits own menu strongly
priority_preference:
- strongest exact match wins regardless of source

## 5. published menu ranking factors
- exact keyword match
- dietary compatibility
- budget compatibility
- season compatibility
- household preference compatibility
- quality_score_reference
- reviewed_flag
- locale_validity_scope
- version recency
- deprecated_flag penalty

## 6. penalties
- deprecated_flag=true:
  - strong penalty
- locale mismatch:
  - moderate penalty
- stale version when latest exists:
  - moderate penalty
- incomplete metadata:
  - penalty
- rejected / non-published:
  - excluded from published search results

## 7. display_rules
- latest published version is default visible representative
- older versions are not default top results
- older versions may remain reachable by explicit version view in future
- search result card should show source_type
- published result may show reviewed / quality hint later

## 8. tie_breaker_rules
if scores are close:
- exact match wins
- then household preference fit
- then cheaper option in saving mode
- then fresher published version
- then stable base menu

## 9. free_paid_relation
- free:
  - same core ranking logic
- paid:
  - richer context may improve ranking because pantry / nutrition / integrations exist

## 10. non_goals
- social popularity feed 化
- 広告優先順位
- arbitrary manual promotion in MealPlanner


---

## SOURCE FILE: 080.policy/010.core/0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md

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


---

## SOURCE FILE: 080.policy/010.core/0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md

# MealPlanner History Retention Final Policy

## 1. purpose
履歴保持と履歴閲覧の最終方針を固定する。

## 2. core_conclusion
- DB では短期削除しない
- アプリの閲覧範囲で free / paid 差をつける
- free:
  - 直近30日を標準閲覧範囲
- paid:
  - 長期閲覧可

## 3. retention_axes
- storage_retention
- ui_visibility_retention
- csv_export_retention

## 4. storage_retention
- meal_history:
  - DB では保持
- meal_plan_export_job:
  - DB では保持
- shopping history like context:
  - 必要に応じて保持
- short-term hard delete:
  - 原則しない

## 5. ui_visibility_retention

### free
- meal_history visible range:
  - current_date から過去30日
- older data:
  - DB に残っていても通常画面では見せない
- copy:
  - 30日より前の履歴は有料で確認できます

### paid
- meal_history visible range:
  - 長期閲覧可
- copy:
  - 過去の履歴も確認できます

## 6. csv_export_retention_policy

### free
- CSV 出力対象は現在画面で見えている範囲を基本とする
- 履歴依存の補助列は制限する

### paid
- 長期利用文脈を含む CSV を許可する
- optional columns も使える

## 7. boundary_rules
- retention 制限は削除ではなく表示制御
- free -> paid 移行で過去履歴が戻って見える設計を許可する
- paid -> free 戻りでは、DB 削除ではなく再び表示制限に戻す

## 8. non_goals
- free 用の短期物理削除
- 履歴を課金のためだけに破壊的削除すること


---

## SOURCE FILE: 080.policy/0800000_POLICY_INDEX.md

# Policy Index

## purpose
MealPlanner のプロダクト運用ポリシーを定義する

## files
- 0800001_POLICY_OVERVIEW.md

## notes
- この index は Policy の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 080.policy/0800001_POLICY_OVERVIEW.md

# Policy Overview

## role
MealPlanner のプロダクト運用ポリシーを定義する。

## major_policies
- free / paid boundary
- published menu versioning
- search and suggestion ordering
- csv free / paid difference
- history retention
- AI chat support boundary

## free_paid_summary
- free:
  - 基本機能利用可
  - 制限は保存量 / 履歴範囲 / advanced features
- paid:
  - pantry / family share / nutrition / LifeOS integration / AI chat support

## versioning_summary
- published menu は直接上書きしない
- 修正は新しい版として扱う
- favorite / template は snapshot-first

## retention_summary
- DB短期削除しない
- free は直近30日
- paid は長期閲覧可

## csv_summary
- free / paid とも CSV 出力可
- free は standard columns
- paid は optional columns も可

## quality_score_summary
- quality score は ranking helper
- 公開可否そのものの決定権は持たない


---

## SOURCE FILE: 090.interface/010.core/0900100000_CORE_INDEX.md

# Interface Core Index

## purpose
MealPlanner の画面原則と出し分け方針を定義する

## files
- 0900100001_CORE_OVERVIEW.md

## notes
- この index は Interface Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 090.interface/010.core/0900100001_CORE_OVERVIEW.md

# Interface Core Overview

## role
MealPlanner の画面原則と出し分け方針を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 090.interface/010.core/0900100002_MEAL_PLANNER_UI_GATING.md

# MealPlanner UI Gating

## free
- 週間献立
- 日次提案
- 月次提案
- 買い物リスト生成
- CSV 出力
- user献立追加
- favorite / template / history は制限

## paid
- free 全機能
- pantry 連携
- family 共有
- 余り食材優先提案
- 栄養簡易表示
- LifeOS 連携
- AIチャットサポート

## 表示原則
- 無料でも主導線は成立させる
- 有料訴求は共有 / 在庫 / 連携で見せる


---

## SOURCE FILE: 090.interface/010.core/0900100003_MEAL_PLANNER_UI_COPY_EXACT.md

# MealPlanner UI Copy Exact

## 1. purpose
MealPlanner の主要UI文言を実装前に固定する。

## 2. global_tone
- わかりやすい
- 家庭向け
- 強すぎない
- 医療判断を想起させない
- 課金訴求は押しつけすぎない

## 3. app_core_copy

### app_name
- ja: 献立管理アプリ
- en: MealPlanner

### positioning_short
- 毎日の献立と買い物を、日・週・月で整える

### support_copy
- サポートはAIチャットのみ

### plan_copy
- 無料
- 有料 500円 / 月

## 4. navigation_copy
- ホーム
- 献立
- 買い物
- 履歴
- 設定

## 5. plan_horizon_copy
- 日
- 週
- 月

## 6. budget_tier_copy
- 節約
- 普通
- 多め

## 7. meal_category_copy
- 朝
- 昼
- 夜
- 間食

## 8. dashboard_copy

### section_titles
- 今日の献立
- 今週の献立
- 買い物状況
- 最近の記録
- 在庫優先提案
- 栄養バランス
- 家族共有
- LifeOS連携

### action_labels
- 日の提案を始める
- 週の提案を始める
- 月の提案を始める
- 買い物を見る
- 更新する

### teaser_copy
- 在庫を登録すると、買い物リストがもっと現実的になります
- 家族で献立と買い物を共有できます
- 体重目標や食費予算ともつなげられます

## 9. weekly_meal_planner_copy

### titles
- 週間献立表
- 今週の献立
- 献立を作成
- 献立を再提案

### buttons
- 献立を作る
- 再提案
- 差し替える
- テンプレートを使う
- テンプレートとして保存
- お気に入りに追加
- CSV出力
- 詳細を見る

### helper_text
- 1週間分をまとめて整えます
- 節約 / 普通 / 多め に合わせて提案します

## 10. daily_meal_detail_copy

### titles
- 今日の献立
- その日の詳細
- 実績を記録

### buttons
- 献立を変更
- 食べた内容を記録
- 外食として記録
- 簡易食として記録
- CSV出力

### helper_text
- 予定どおりでも、変更しても記録できます

## 11. monthly_meal_planner_copy

### titles
- 月の献立計画
- 月次の大枠
- 週へ展開する

### buttons
- 月の献立を作る
- この週を詳細化
- CSV出力

### helper_text
- 月では大枠を整え、週で細かくします

## 12. menu_search_and_suggestion_copy

### titles
- 献立を探す
- 条件で提案
- 献立候補

### fields
- キーワード
- 食事区分
- 予算帯
- 除外したい食材
- 優先したい料理
- 候補ソース

### source_labels
- 基本献立
- 自分の献立
- 公開献立

### buttons
- 検索
- 提案を出す
- この献立を使う

## 13. pantry_inventory_copy
- 冷蔵庫在庫
- 在庫を追加
- 数量を更新
- 期限を記録
- 保存場所
- 開封済み
- 在庫を保存

## 14. shopping_list_copy
- 買い物リスト
- 不足食材
- まとめ買い
- チェックする
- 店メモ
- 進捗

## 15. settings_copy

### goal_and_budget
- 目標と予算
- 予算モード
- 週間目安予算
- 月間参考予算
- 体重目標
- 塩分に配慮する
- たんぱく質を意識する

### family_settings
- 家族設定
- 家族人数
- 好きな食材
- 苦手な食材
- アレルギー
- 家族を追加
- 家族を保存

## 16. user_menu_copy

### titles
- 自分の献立を作る
- 献立を編集
- 公開申請

### fields
- 献立名
- 食事区分
- 料理タグ
- 季節タグ
- 食事制約タグ
- 基準人数
- 調理時間
- 概算コスト
- 食材
- メモ
- 公開範囲

### buttons
- privateで保存
- householdで使う
- 公開申請する

### state_badges
- private
- 公開準備中
- 審査中
- 公開済み
- 却下

## 17. history_copy
- 履歴
- 変更履歴
- 外食
- 簡易食
- 30日より前の履歴は有料で確認できます

## 18. upgrade_copy

### title
- この機能は有料で利用できます

### body_patterns
- 月額500円で、家族共有・在庫連携・健康目標連携まで使えます
- 月額500円で、在庫や家族共有までまとめて使えます

### buttons
- 有料にアップグレード
- あとで

### support_note
- サポートはAIチャットのみ

## 19. result_copy

### empty_states
- まだ献立がありません
- 条件に合う候補が見つかりませんでした
- 買い物リストはまだありません
- 履歴はまだありません
- 在庫はまだ登録されていません

### success_toasts
- 保存しました
- 更新しました
- 献立を作成しました
- CSVを出力しました
- 公開申請を受け付けました

### failure_toasts
- 保存に失敗しました
- 更新に失敗しました
- 献立を作成できませんでした
- CSV出力に失敗しました
- 公開申請に失敗しました

## 20. health_boundary_copy
- 本アプリは生活改善支援を目的としています
- 医療診断や治療判断は行いません


---

## SOURCE FILE: 090.interface/010.core/0900100004_MEAL_PLANNER_VALIDATION_COPY_EXACT.md

# MealPlanner Validation Copy Exact

## 1. purpose
MealPlanner の主要入力バリデーション文言を固定する。

## 2. common_rules
- 文言は短く、何を直せばよいか分かるようにする
- エラーは責めない
- 技術語を出しすぎない
- DB都合の表現をそのまま出さない

## 3. generate_plan_validation
- household_id missing:
  - 家庭情報を確認してください
- plan_horizon missing:
  - 日・週・月のどれで作るか選んでください
- target_start_date missing:
  - 開始日を入力してください
- target_end_date missing:
  - 終了日を入力してください
- invalid_date_range:
  - 日付の範囲を確認してください
- budget_tier missing:
  - 節約・普通・多めから選んでください
- household_size invalid:
  - 家族人数を正しく入力してください
- meal_categories empty:
  - 少なくとも1つの食事区分を選んでください

## 4. slot_update_validation
- meal_plan_id missing:
  - 献立情報を確認してください
- meal_slot_id missing:
  - 食事枠を選んでください
- no_mutable_field:
  - 変更内容を入力してください
- servings invalid:
  - 人数は1以上で入力してください

## 5. menu_search_validation
- page invalid:
  - ページ番号が不正です
- page_size invalid:
  - 表示件数が不正です
- meal_category invalid:
  - 食事区分を確認してください
- budget_tier invalid:
  - 予算帯を確認してください

## 6. shopping_validation
- shopping_list_id missing:
  - 買い物リストを確認してください
- shopping_list_item_id missing:
  - 対象の食材を確認してください

## 7. pantry_validation
- household_id missing:
  - 家庭情報を確認してください
- items empty:
  - 在庫を1件以上入力してください
- ingredient reference missing:
  - 食材を選んでください
- ingredient_name missing:
  - 食材名を入力してください
- quantity invalid:
  - 数量を正しく入力してください
- unit_code missing:
  - 単位を選んでください

## 8. user_menu_create_validation
- user_id missing:
  - ユーザー情報を確認してください
- household_id missing:
  - 家庭情報を確認してください
- menu_title missing:
  - 献立名を入力してください
- meal_category_tags empty:
  - 食事区分を1つ以上選んでください
- serving_base invalid:
  - 基準人数は1以上で入力してください
- ingredients empty:
  - 食材を1件以上入力してください
- ingredient row invalid:
  - 食材、数量、単位を確認してください
- invalid_visibility_scope_on_create:
  - 作成時の公開範囲を確認してください

## 9. user_menu_update_validation
- menu_master_id missing:
  - 献立情報を確認してください
- no_mutable_field:
  - 変更内容を入力してください

## 10. publish_request_validation
- menu_master_id missing:
  - 献立情報を確認してください
- requested_visibility_scope missing:
  - 公開範囲を確認してください
- invalid_requested_visibility_scope:
  - 公開範囲が不正です

## 11. export_validation
- target_scope missing:
  - 出力対象を確認してください
- target_plan_id missing:
  - 献立表を確認してください
- column_profile empty:
  - 出力列を1つ以上選んでください
- encoding invalid:
  - 文字コードを確認してください

## 12. history_validation
- meal_slot_id missing:
  - 食事枠を確認してください
- actual_result_type missing:
  - 記録種別を選んでください

## 13. budget_validation
- budget_tier missing:
  - 節約・普通・多めから選んでください
- budget_tier invalid:
  - 予算帯が不正です

## 14. family_profile_validation
- household_name missing:
  - 家庭名を入力してください
- members empty:
  - 家族情報を1件以上入力してください
- nickname missing:
  - 家族の名前を入力してください
- age_group missing:
  - 年齢区分を選んでください

## 15. free_paid_validation_copy
- pantry_on_free:
  - 在庫連携は有料で利用できます
- shared_check_on_free:
  - 家族共有チェックは有料で利用できます
- nutrition_on_free:
  - 栄養表示は有料で利用できます
- old_history_on_free:
  - 30日より前の履歴は有料で確認できます
- template_limit_on_free:
  - テンプレート保存数の上限に達しました
- favorite_limit_on_free:
  - お気に入り保存数の上限に達しました


---

## SOURCE FILE: 090.interface/010.core/0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md

# MealPlanner CSV Free Paid Final Policy

## 1. purpose
CSV 出力の無料 / 有料差を最終固定する。

## 2. core_conclusion
- CSV 出力自体は free / paid の両方で利用可能
- ただし、出力できる元データ範囲と補助情報に差を設ける

## 3. free_policy
allowed:
- daily CSV
- weekly CSV
- monthly CSV
- standard column set
- 自分が見えている範囲の献立表出力

limits:
- 出力元データは無料で見えている範囲のみ
- 30日より前の履歴由来列は含めない
- pantry 連携由来の補助列は含めない
- nutrition summary 由来列は含めない
- shared household collaboration 補助列は含めない

## 4. paid_policy
allowed:
- daily CSV
- weekly CSV
- monthly CSV
- standard column set
- optional column set
- nutrition related optional columns
- shared household context columns if later adopted
- 長期利用文脈を含む出力

## 5. standard_column_set_available_to_both
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

## 6. optional_columns_paid_preferred
- household_name
- budget_tier
- derived_budget_amount
- estimated_kcal
- changed_flag
- changed_reason
- publication_status
- export_generated_at

## 7. final_output_policy
- free:
  - standard_columns_only
- paid:
  - standard_columns + optional_columns

## 8. filename_policy
- free / paid 共通
- daily:
  - mealplan_daily_YYYYMMDD.csv
- weekly:
  - mealplan_weekly_YYYYMMDD.csv
- monthly:
  - mealplan_monthly_YYYYMM.csv

## 9. copy_policy
- free copy:
  - CSV出力できます
- paid upsell copy:
  - 有料では、より詳しい列も出力できます

## 10. non_goals
- free で CSV 自体を禁止しない
- paid の価値を CSVだけに寄せない


---

## SOURCE FILE: 090.interface/010.core/0900100007_MEAL_PLANNER_TINY_COPY_ADJUSTMENTS.md

# MealPlanner Tiny Copy Adjustments

## 1. purpose
既存 UI copy の細かな表現ゆれを統一する。

## 2. standard_terms
- 献立:
  - 基本の表現
- 献立表:
  - 画面 / CSV の文脈で使用
- 買い物リスト:
  - 一貫してこの表現を使う
- 家族共有:
  - household共有 のユーザー向け表現
- 公開申請:
  - publish request のユーザー向け表現
- 基本献立:
  - cx22073jw_base のユーザー向け表現
- 自分の献立:
  - user_private のユーザー向け表現
- 公開献立:
  - user_published のユーザー向け表現

## 3. wording_unification
use:
- 献立を作る
do_not_prefer:
- 献立生成
- プラン生成

use:
- 差し替える
do_not_prefer:
- スロット更新

use:
- 実績を記録
do_not_prefer:
- history record

use:
- 公開準備中
do_not_prefer:
- draft

use:
- 審査中
do_not_prefer:
- review_pending

use:
- 公開済み
do_not_prefer:
- published

use:
- 却下
do_not_prefer:
- rejected

## 4. paid_cta_copy
primary:
- 有料にアップグレード

secondary:
- あとで

assist:
- 月額500円で利用できます
- サポートはAIチャットのみです

## 5. free_limit_copy
- テンプレート保存数の上限に達しました
- お気に入り保存数の上限に達しました
- 30日より前の履歴は有料で確認できます

## 6. empty_state_copy_refine
- まだ献立がありません
- まだ買い物リストがありません
- まだ在庫が登録されていません
- 条件に合う候補が見つかりませんでした

## 7. health_boundary_copy_refine
- 本アプリは生活改善支援を目的としています
- 医療診断や治療判断は行いません
- 体調や治療に関する判断は、必要に応じて専門家へ相談してください

## 8. support_copy_refine
- サポートはAIチャットのみです
- 操作案内や基本的な困りごとを案内します

## 9. csv_copy_refine
- CSV出力
- CSVを出力しました
- CSV出力に失敗しました


---

## SOURCE FILE: 090.interface/010.core/0900100008_MEAL_PLANNER_INTERFACE_ACCEPTANCE_CHECK.md

# MealPlanner Interface Acceptance Check

## 1. purpose
UI / 画面 / CSV / 文言観点での受け入れ条件を整理する。

## 2. screen_check
- dashboard_home が主導線として成立しているか
- weekly_meal_planner が主導線として十分か
- daily_meal_detail が即時調整導線になっているか
- monthly_meal_planner が大枠計画導線になっているか
- user_menu_editor と user_menu_publish_status が分離されているか
- notification_settings が user 単位方針に合っているか

## 3. copy_check
- 家庭向けでわかりやすいか
- 医療判断を想起させないか
- 有料訴求が強すぎないか
- private / 公開準備中 / 審査中 / 公開済み / 却下 の表現が揃っているか

## 4. csv_check
- free / paid とも CSV 出力できるか
- standard columns が固定されているか
- optional columns の paid 差が明確か
- UTF-8 / 1食1行 が固定されているか

## 5. component_check
- 主要 component 分解が済んでいるか
- props / event payload が固定されているか
- gating-sensitive components が整理されているか

## 6. acceptance_statement
このチェックを通れば、interface 設計は実装前として十分に固まっているとみなす。


---

## SOURCE FILE: 090.interface/020.screen/0900200000_SCREEN_INDEX.md

# Interface Screen Index

## purpose
MealPlanner の画面一覧と責務を定義する

## files
- 0900200001_SCREEN_OVERVIEW.md

## notes
- この index は Interface Screen の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 090.interface/020.screen/0900200001_SCREEN_OVERVIEW.md

# Interface Screen Overview

## role
MealPlanner の画面一覧と責務を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 090.interface/020.screen/0900200002_MEAL_PLANNER_SCREEN_LIST.md

# MealPlanner Screen List

## screens
- dashboard_home
- weekly_meal_planner
- daily_meal_detail
- monthly_meal_planner
- menu_search_and_suggestion
- pantry_inventory
- shopping_list
- family_settings
- dietary_rules_settings
- goal_and_budget_settings
- template_library
- favorite_menu_list
- meal_history_log
- user_menu_editor
- user_menu_publish_status
- notification_settings

## 重要画面要件
- weekly_meal_planner:
  - 主導線
  - CSV 出力ボタン
- daily_meal_detail:
  - 日次差し替え
  - CSV 出力ボタン
- monthly_meal_planner:
  - 大枠計画
  - CSV 出力ボタン
- user_menu_editor:
  - private 保存
  - household 利用
  - LifeOS 公開申請


---

## SOURCE FILE: 090.interface/020.screen/0900200003_SCREEN_API_MAPPING.md

# Screen API Mapping

## dashboard_home
- GET /api/mealplanner/dashboard

## weekly_meal_planner
- POST /api/mealplanner/plan/generate
- GET /api/mealplanner/plan/detail
- POST /api/mealplanner/plan/slot/update

## daily_meal_detail
- GET /api/mealplanner/plan/detail
- POST /api/mealplanner/plan/slot/update
- POST /api/mealplanner/history/record

## monthly_meal_planner
- POST /api/mealplanner/plan/generate
- POST /api/mealplanner/plan/derive-week

## menu_search_and_suggestion
- POST /api/mealplanner/menu/search
- POST /api/mealplanner/menu/suggest

## pantry_inventory
- GET /api/mealplanner/pantry/list
- POST /api/mealplanner/pantry/upsert

## shopping_list
- POST /api/mealplanner/shopping/generate
- POST /api/mealplanner/shopping/item/check

## user_menu_editor
- POST /api/mealplanner/user-menu/create
- POST /api/mealplanner/user-menu/update

## user_menu_publish_status
- POST /api/mealplanner/user-menu/publish-request
- GET /api/mealplanner/user-menu/publish-status

## settings
- POST /api/mealplanner/settings/budget-tier
- POST /api/mealplanner/settings/family-profile


---

## SOURCE FILE: 090.interface/020.screen/0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md

# MealPlanner Screen Exact I/O

## 1. screen_io_common_principles
- 画面I/Oは API exact payload と整合させる
- 画面入力は UI入力値 と API request 値 を分けて考える
- 画面出力は 表示項目 と 内部保持項目 を分ける
- 無料 / 有料 の違いは screen gating で扱い、I/O定義自体は極力共通にする
- 日付は YYYY-MM-DD
- 日時は ISO-8601
- schema は life を正とする
- 食材 / 基本献立 / 公開知識の基礎正本は CX22073JW 参照前提とする

## 2. dashboard_home

### purpose
- 今日の献立確認
- 週次進行状況確認
- 買い物状況確認
- 日 / 週 / 月提案の開始導線

### input_from_user
- plan_horizon_select
- open_today_detail
- open_weekly_planner
- open_monthly_planner
- open_shopping_list
- open_upgrade_modal
- refresh

### input_payload_like
- user_id
- household_id
- current_date
- current_plan_state

### output_to_ui
- today_slots
- current_week_summary
- shopping_summary
- recent_history_summary
- budget_tier
- paid_feature_teasers
- family_share_summary_paid_only
- pantry_priority_summary_paid_only
- nutrition_summary_paid_only

### output_fields_exact
- today_slots[]:
  - meal_slot_id
  - meal_date
  - meal_category
  - menu_title
  - source_type
  - servings
  - actual_status
- current_week_summary:
  - meal_plan_id
  - week_start_date
  - week_end_date
  - filled_slot_count
  - total_slot_count
  - budget_tier
  - derived_budget_amount
  - currency_code
- shopping_summary:
  - shopping_list_id
  - total_item_count
  - checked_item_count
  - estimated_total_cost
  - currency_code

### api_binding
- GET /api/mealplanner/dashboard

### state_notes
- free:
  - pantry_priority_summary は teaser
  - nutrition_summary は teaser
  - family_share_summary は teaser
- paid:
  - full 表示

## 3. weekly_meal_planner

### purpose
- 週間献立の主編集画面
- 朝 / 昼 / 夜 / 間食の一括確認
- CSV出力
- 差し替え
- テンプレ適用

### input_from_user
- week_change
- slot_tap
- slot_replace
- slot_clear
- template_apply
- template_save
- favorite_add
- plan_regenerate
- csv_export
- open_daily_detail
- open_upgrade_modal

### input_payload_like
- meal_plan_id
- household_id
- target_start_date
- target_end_date
- budget_tier
- meal_categories[]
- dietary_rules[]
- disliked_ingredients[]
- preferred_cuisine_tags[]
- include_user_private_menu
- include_user_published_menu
- include_cx22073jw_base_menu
- pantry_mode
- goal_hint

### output_to_ui
- meal_plan_header
- week_grid
- generation_summary
- export_button_state
- template_limit_state
- favorite_limit_state
- paid_teasers

### output_fields_exact
- meal_plan_header:
  - meal_plan_id
  - plan_horizon
  - target_start_date
  - target_end_date
  - budget_tier
  - derived_budget_amount
  - currency_code
- week_grid[]:
  - meal_slot_id
  - meal_date
  - meal_category
  - menu_master_id_or_reference_id
  - menu_title
  - source_type
  - publication_status
  - servings
  - estimated_cost
  - estimated_kcal
  - memo
  - changed_flag
  - changed_reason
  - actual_status

### write_actions
- generate_plan
- update_plan_slot
- export_csv
- save_template
- add_favorite

### api_binding
- POST /api/mealplanner/plan/generate
- GET /api/mealplanner/plan/detail
- POST /api/mealplanner/plan/slot/update
- POST /api/mealplanner/export/csv

### validation
- target_start_date <= target_end_date
- plan_horizon must be weekly
- servings >= 1
- meal_category must be valid enum

## 4. daily_meal_detail

### purpose
- 単日詳細確認
- その日の差し替え
- 実績記録
- 外食 / 簡易食反映
- CSV出力

### input_from_user
- select_slot
- replace_menu
- change_servings
- update_memo
- record_actual_result
- export_csv
- open_suggestion
- open_upgrade_modal

### input_payload_like
- meal_plan_id
- meal_date
- meal_slot_id
- actual_result_type
- actual_menu_name
- note

### output_to_ui
- day_header
- day_slots
- nutrition_summary_paid_only
- pantry_hint_paid_only
- history_preview

### output_fields_exact
- day_header:
  - meal_date
  - weekday_label
  - budget_tier
- day_slots[]:
  - meal_slot_id
  - meal_category
  - menu_title
  - source_type
  - servings
  - estimated_cost
  - estimated_kcal
  - memo
  - actual_status
  - changed_flag
  - changed_reason
- history_preview[]:
  - meal_history_id
  - actual_result_type
  - actual_menu_name
  - note
  - recorded_at

### write_actions
- update_plan_slot
- record_meal_history
- export_csv

### api_binding
- GET /api/mealplanner/plan/detail
- POST /api/mealplanner/plan/slot/update
- POST /api/mealplanner/history/record
- POST /api/mealplanner/export/csv

### validation
- actual_result_type must be valid enum
- note is optional
- actual_menu_name is optional when skipped

## 5. monthly_meal_planner

### purpose
- 月次の大枠計画
- 週テーマ配置
- 週次計画への展開
- CSV出力

### input_from_user
- target_month_change
- generate_month_plan
- derive_week
- edit_week_theme
- export_csv
- open_upgrade_modal

### input_payload_like
- household_id
- target_start_date
- target_end_date
- budget_tier
- monthly_budget_reference
- event_hints[]
- seasonal_hints[]
- repeat_pattern_preference

### output_to_ui
- month_header
- weekly_blocks[]
- month_budget_summary
- event_hint_summary
- export_button_state

### output_fields_exact
- month_header:
  - meal_plan_id
  - plan_horizon
  - target_start_date
  - target_end_date
  - budget_tier
  - derived_budget_amount
  - currency_code
- weekly_blocks[]:
  - week_start_date
  - week_end_date
  - theme_label
  - estimated_budget_amount
  - derived_week_plan_id_nullable

### write_actions
- generate_plan
- derive_week
- export_csv

### api_binding
- POST /api/mealplanner/plan/generate
- POST /api/mealplanner/plan/derive-week
- POST /api/mealplanner/export/csv

### validation
- plan_horizon must be monthly
- target range must be month-like range

## 6. menu_search_and_suggestion

### purpose
- 献立検索
- 条件付き提案
- source_type 切替
- user_private / user_published / cx22073jw_base の併用

### input_from_user
- keyword_input
- meal_category_select
- budget_tier_select
- dietary_rule_select
- exclude_ingredient_select
- source_filter_toggle
- suggest_execute
- search_execute

### input_payload_like
- query
- meal_category
- budget_tier
- source_filters[]
- dietary_rules[]
- exclude_ingredients[]
- pantry_items[]
- preferred_cuisine_tags[]
- include_user_private_menu

### output_to_ui
- search_result_list
- suggestion_result_list
- score_summary_paid_or_debug_contextual
- source_badges

### output_fields_exact
- search_result_list[]:
  - menu_master_id_or_reference_id
  - menu_title
  - source_type
  - publication_status
  - estimated_cost_band
  - prep_time_band
  - serving_base
- suggestion_result_list[]:
  - rank
  - menu_master_id_or_reference_id
  - menu_title
  - source_type
  - estimated_cost
  - estimated_kcal
  - score_summary

### write_actions
- search_menu
- suggest_menu

### api_binding
- POST /api/mealplanner/menu/search
- POST /api/mealplanner/menu/suggest

### validation
- page >= 1
- page_size reasonable
- meal_category valid enum
- budget_tier valid enum

## 7. pantry_inventory

### purpose
- household在庫管理
- 期限管理
- 提案や買い物差分への反映

### input_from_user
- add_item
- edit_item
- delete_item_soft_or_hide
- update_quantity
- update_expiry_date
- update_storage_type
- refresh

### input_payload_like
- household_id
- items[]:
  - pantry_item_id
  - ingredient_id_or_reference_id
  - ingredient_name
  - quantity
  - unit_code
  - expiry_date
  - storage_type
  - opened_flag
  - note

### output_to_ui
- pantry_items[]
- expiry_alert_summary
- pantry_count
- paid_only_badge_if_needed

### output_fields_exact
- pantry_items[]:
  - pantry_item_id
  - ingredient_reference_id
  - ingredient_name_snapshot
  - quantity
  - unit_code
  - expiry_date
  - storage_type
  - opened_flag
  - note

### write_actions
- pantry_upsert

### api_binding
- GET /api/mealplanner/pantry/list
- POST /api/mealplanner/pantry/upsert

### state_notes
- free:
  - teaser_only or locked entry
- paid:
  - full editable

## 8. shopping_list

### purpose
- 不足食材の確認
- 共同チェック
- 店メモ
- コスト確認

### input_from_user
- generate_list
- check_item
- uncheck_item
- update_store_memo
- change_grouping
- refresh

### input_payload_like
- meal_plan_id
- include_pantry_diff
- group_by
- currency_code
- shopping_list_item_id
- checked_flag
- checked_by_member_id

### output_to_ui
- shopping_header
- shopping_items[]
- progress_summary
- cost_summary

### output_fields_exact
- shopping_header:
  - shopping_list_id
  - estimated_total_cost
  - currency_code
  - purchase_status
- shopping_items[]:
  - shopping_list_item_id
  - ingredient_reference_id
  - ingredient_name_snapshot
  - shopping_category
  - shortage_quantity
  - unit_code
  - estimated_unit_price
  - estimated_line_cost
  - checked_flag
  - checked_by_member_id
  - checked_at
  - store_memo
- progress_summary:
  - total_item_count
  - checked_item_count

### write_actions
- generate_shopping_list
- check_shopping_item

### api_binding
- POST /api/mealplanner/shopping/generate
- POST /api/mealplanner/shopping/item/check

### state_notes
- free:
  - 単独チェックのみ
- paid:
  - family共同チェック可

## 9. goal_and_budget_settings

### purpose
- budget_tier 設定
- household 目標条件設定
- LifeOS連携設定

### input_from_user
- budget_tier_change
- weight_goal_change
- salt_attention_toggle
- protein_focus_toggle
- integration_toggle
- save

### input_payload_like
- household_id
- budget_tier
- weight_goal_type
- salt_attention_flag
- protein_focus_flag
- activity_hint_level

### output_to_ui
- budget_profile
- goal_profile
- derived_budget_preview
- integration_status_paid_only

### output_fields_exact
- budget_profile:
  - household_id
  - budget_tier
  - derived_weekly_budget_amount
  - derived_monthly_reference_amount
  - currency_code
- goal_profile:
  - weight_goal_type
  - salt_attention_flag
  - protein_focus_flag
  - energy_target_level
  - activity_hint_level

### write_actions
- update_budget_tier
- update_goal_profile_future
- update_integration_setting_future

### api_binding
- POST /api/mealplanner/settings/budget-tier

### state_notes
- free:
  - budget_tier editable
  - LifeOS integration teaser
- paid:
  - LifeOS integration full

## 10. family_settings

### purpose
- household名
- メンバー構成
- likes / dislikes / allergy

### input_from_user
- household_name_change
- add_member
- edit_member
- remove_member_soft
- update_member_preference
- save

### input_payload_like
- household_id
- household_name
- members[]:
  - member_id
  - nickname
  - age_group
  - likes[]
  - dislikes[]
  - allergy_tags[]

### output_to_ui
- household_header
- member_list[]
- household_size
- paid_share_controls_paid_only

### output_fields_exact
- household_header:
  - household_id
  - household_name
  - member_count
- member_list[]:
  - member_id
  - nickname
  - age_group
  - likes
  - dislikes
  - allergy_tags

### write_actions
- update_family_profile

### api_binding
- POST /api/mealplanner/settings/family-profile

### state_notes
- free:
  - 個人設定寄り
- paid:
  - household共有運用あり

## 11. template_library

### purpose
- 日 / 週 / 月テンプレート保存
- 再利用
- 上限制御

### input_from_user
- save_template
- apply_template
- rename_template
- archive_template

### input_payload_like
- meal_template_id
- household_id
- template_name
- plan_horizon
- pattern_type
- visibility_scope

### output_to_ui
- template_list[]
- template_limit_state
- upgrade_cta_if_limit

### output_fields_exact
- template_list[]:
  - meal_template_id
  - template_name
  - plan_horizon
  - pattern_type
  - visibility_scope
  - is_active

### state_notes
- free:
  - 保存数制限
- paid:
  - 制限緩和または無制限

## 12. favorite_menu_list

### purpose
- お気に入り再利用
- 上限制御

### input_from_user
- add_favorite
- remove_favorite
- reorder_favorite

### input_payload_like
- household_id
- menu_source_type
- menu_reference_id
- menu_title_snapshot

### output_to_ui
- favorite_list[]
- favorite_limit_state

### output_fields_exact
- favorite_list[]:
  - favorite_menu_id
  - menu_source_type
  - menu_reference_id
  - menu_title_snapshot
  - ranking
  - usage_count

### state_notes
- free:
  - 件数制限
- paid:
  - 制限緩和または無制限

## 13. meal_history_log

### purpose
- 実績履歴確認
- changed / skipped / eating_out / convenience_food 確認

### input_from_user
- filter_change
- open_history_detail
- upgrade_modal_open

### input_payload_like
- household_id
- range_start
- range_end
- actual_result_type_filter

### output_to_ui
- history_items[]
- retention_limit_notice_free
- statistics_summary_paid_optional

### output_fields_exact
- history_items[]:
  - meal_history_id
  - meal_slot_id
  - actual_result_type
  - actual_menu_name
  - note
  - recorded_at

### state_notes
- free:
  - 保持期間制限
- paid:
  - 長期保持

## 14. user_menu_editor

### purpose
- user_private 献立の作成 / 編集
- household利用
- 公開申請前の整備

### input_from_user
- menu_title_input
- meal_category_tag_select
- cuisine_tag_select
- season_tag_select
- dietary_tag_select
- serving_base_input
- prep_time_input
- estimated_cost_input
- ingredient_add
- ingredient_edit
- memo_input
- save_private
- request_publish

### input_payload_like
- user_id
- household_id
- menu_title
- meal_category_tags[]
- cuisine_tags[]
- season_tags[]
- dietary_tags[]
- serving_base
- prep_time_minutes
- estimated_cost
- ingredients[]:
  - ingredient_id_or_reference_id
  - ingredient_name
  - quantity
  - unit_code
- memo
- visibility_scope

### output_to_ui
- editor_form_state
- ingredient_rows[]
- source_type_badge
- publication_status_badge
- publish_cta

### output_fields_exact
- editor_form_state:
  - menu_master_id_or_user_menu_id
  - menu_title
  - source_type
  - publication_status
  - visibility_scope
- ingredient_rows[]:
  - ingredient_id_or_reference_id
  - ingredient_name
  - quantity
  - unit_code

### write_actions
- create_user_menu
- update_user_menu
- submit_publish_request

### api_binding
- POST /api/mealplanner/user-menu/create
- POST /api/mealplanner/user-menu/update
- POST /api/mealplanner/user-menu/publish-request

### validation
- menu_title required
- serving_base >= 1
- ingredient rows >= 1

## 15. user_menu_publish_status

### purpose
- 公開申請状態の確認
- review_pending / approved / rejected 確認

### input_from_user
- refresh
- open_menu
- retry_request_when_allowed

### input_payload_like
- menu_master_id_or_user_menu_id

### output_to_ui
- publish_status_card
- review_note
- requested_visibility_scope

### output_fields_exact
- publish_status_card:
  - menu_master_id_or_user_menu_id
  - submission_status
  - publication_status
  - requested_visibility_scope
  - review_note

### api_binding
- GET /api/mealplanner/user-menu/publish-status?menu_master_id=...

## 16. notification_settings

### purpose
- 基本通知
- 家族共有通知
- 提案タイミング通知

### input_from_user
- toggle_daily_notice
- toggle_weekly_notice
- toggle_monthly_notice
- toggle_shared_notice
- save

### output_to_ui
- current_notification_prefs
- paid_only_shared_notice_teaser

### state_notes
- free:
  - 個人通知中心
- paid:
  - 共有通知あり


---

## SOURCE FILE: 090.interface/020.screen/0900200005_MEAL_PLANNER_SCREEN_STATE_GATING.md

# MealPlanner Screen State And Gating

## 1. plan_state
- free
- paid

## 2. paid_support_mode
- ai_chat_only

## 3. gating_principles
- 無料でも主導線は成立させる
- 有料は共有 / 在庫 / 連携 / 高度運用を解放する
- hard block より teaser / upgrade_modal を優先する
- 同じセッションで過剰にアップグレードモーダルを連発しない

## 4. free_enabled_core
- dashboard_home
- weekly_meal_planner
- daily_meal_detail
- monthly_meal_planner
- menu_search_and_suggestion
- shopping_list basic
- goal_and_budget_settings basic
- family_settings basic
- template_library limited
- favorite_menu_list limited
- meal_history_log limited
- user_menu_editor
- user_menu_publish_status
- notification_settings basic
- csv_export

## 5. paid_only_or_paid_full
- pantry_inventory full
- shopping_list family shared check
- family sharing controls
- nutrition summary
- pantry priority hint
- lifeos integrations
- shared notifications
- ai_chat_support

## 6. free_limits
- template save count limited
- favorite count limited
- history retention limited
- pantry management hidden or teaser
- shared family collaboration limited
- lifeos integration teaser only

## 7. upgrade_modal_triggers
- pantry open on free
- family shared check on free
- nutrition panel tap on free
- lifeos integration toggle on free
- template limit reached
- favorite limit reached
- history older-than-limit open


---

## SOURCE FILE: 090.interface/020.screen/0900200006_MEAL_PLANNER_SCREEN_EVENT_ACTION_MATRIX.md

# MealPlanner Screen Event Action Matrix

## 1. purpose
画面イベント、呼び出し API、成功時反応、失敗時反応、未課金時反応を固定する。

## 2. common_rules
- success:
  - state refresh or partial patch
- failure:
  - toast + retry_possible_message
- unpaid:
  - upgrade_modal or teaser
- destructive action:
  - confirm first when user data loss may happen
- create/update success:
  - optimistic UI を使っても最終 state は server response を正とする

## 3. dashboard_home

### event: refresh
- api:
  - GET /api/mealplanner/dashboard
- success:
  - cards refresh
- failure:
  - error toast
- unpaid:
  - n/a

### event: tap_daily_suggestion
- api:
  - navigate only or generate flow entry
- success:
  - open daily_meal_detail or suggestion flow
- failure:
  - n/a
- unpaid:
  - available

### event: tap_pantry_teaser_on_free
- api:
  - none
- success:
  - open upgrade_modal
- failure:
  - n/a
- unpaid:
  - yes

## 4. weekly_meal_planner

### event: generate_week_plan
- api:
  - POST /api/mealplanner/plan/generate
- success:
  - week_grid render
  - header patch
- failure:
  - inline error + retry
- unpaid:
  - available

### event: tap_slot
- api:
  - local selection or GET detail already held
- success:
  - open slot detail area
- failure:
  - n/a
- unpaid:
  - available

### event: replace_slot_menu
- api:
  - POST /api/mealplanner/plan/slot/update
- success:
  - patch slot card
  - changed badge show
- failure:
  - revert UI patch
  - error toast
- unpaid:
  - available

### event: save_template
- api:
  - future template save API
- success:
  - template saved toast
- failure:
  - error toast
- unpaid:
  - if limit reached then upgrade_modal

### event: export_csv
- api:
  - POST /api/mealplanner/export/csv
- success:
  - export success toast
  - download action enable
- failure:
  - export failed toast
- unpaid:
  - available

## 5. daily_meal_detail

### event: record_actual_result
- api:
  - POST /api/mealplanner/history/record
- success:
  - history_preview append
  - actual_status badge update
- failure:
  - error toast
- unpaid:
  - available

### event: open_nutrition_panel
- api:
  - none or local
- success:
  - panel open
- failure:
  - n/a
- unpaid:
  - free -> upgrade_modal
  - paid -> open panel

### event: export_csv
- api:
  - POST /api/mealplanner/export/csv
- success:
  - export state update
- failure:
  - error toast
- unpaid:
  - available

## 6. monthly_meal_planner

### event: generate_month_plan
- api:
  - POST /api/mealplanner/plan/generate
- success:
  - month blocks render
- failure:
  - inline error
- unpaid:
  - available

### event: derive_week
- api:
  - POST /api/mealplanner/plan/derive-week
- success:
  - weekly_meal_plan linked
  - navigate or badge update
- failure:
  - error toast
- unpaid:
  - available

### event: export_csv
- api:
  - POST /api/mealplanner/export/csv
- success:
  - export ready notice
- failure:
  - error toast
- unpaid:
  - available

## 7. menu_search_and_suggestion

### event: search_execute
- api:
  - POST /api/mealplanner/menu/search
- success:
  - search_result_list render
- failure:
  - error state render
- unpaid:
  - available

### event: suggest_execute
- api:
  - POST /api/mealplanner/menu/suggest
- success:
  - suggestion_result_list render
- failure:
  - error toast
- unpaid:
  - available

### event: tap_paid_suggestion_mode
- api:
  - none
- success:
  - upgrade_modal
- failure:
  - n/a
- unpaid:
  - yes

## 8. pantry_inventory

### event: open_pantry
- api:
  - GET /api/mealplanner/pantry/list
- success:
  - pantry list render
- failure:
  - error state
- unpaid:
  - free -> upgrade_modal or teaser
  - paid -> open normally

### event: save_pantry_item
- api:
  - POST /api/mealplanner/pantry/upsert
- success:
  - row patch or append
- failure:
  - revert edit + error toast
- unpaid:
  - free -> blocked by upgrade_modal
  - paid -> available

## 9. shopping_list

### event: generate_shopping_list
- api:
  - POST /api/mealplanner/shopping/generate
- success:
  - shopping header + items render
- failure:
  - error toast
- unpaid:
  - available

### event: check_item
- api:
  - POST /api/mealplanner/shopping/item/check
- success:
  - checked badge patch
  - progress summary patch
- failure:
  - revert check UI
  - error toast
- unpaid:
  - free -> single basic check only
  - paid -> shared check full

### event: tap_shared_check_on_free
- api:
  - none
- success:
  - upgrade_modal
- failure:
  - n/a
- unpaid:
  - yes

## 10. goal_and_budget_settings

### event: change_budget_tier
- api:
  - POST /api/mealplanner/settings/budget-tier
- success:
  - derived budget preview patch
- failure:
  - revert selector
  - error toast
- unpaid:
  - available

### event: toggle_lifeos_integration_on_free
- api:
  - none
- success:
  - upgrade_modal
- failure:
  - n/a
- unpaid:
  - yes

## 11. family_settings

### event: save_family_profile
- api:
  - POST /api/mealplanner/settings/family-profile
- success:
  - member list refresh
  - household size patch
- failure:
  - validation inline + toast
- unpaid:
  - available basic
  - shared collaboration advanced -> paid

## 12. template_library

### event: apply_template
- api:
  - local selection + plan update flow
- success:
  - week/day/month patched
- failure:
  - error toast
- unpaid:
  - available within limit

### event: save_template_when_limit_reached
- api:
  - none
- success:
  - upgrade_modal
- failure:
  - n/a
- unpaid:
  - yes

## 13. favorite_menu_list

### event: add_favorite
- api:
  - future favorite API or local save path
- success:
  - favorite_list patch
- failure:
  - error toast
- unpaid:
  - available within limit

### event: add_favorite_when_limit_reached
- api:
  - none
- success:
  - upgrade_modal
- failure:
  - n/a
- unpaid:
  - yes

## 14. meal_history_log

### event: open_old_history_beyond_free_limit
- api:
  - none or server-gated fetch
- success:
  - free -> upgrade_modal
  - paid -> history fetch
- failure:
  - n/a
- unpaid:
  - yes

## 15. user_menu_editor

### event: create_private_menu
- api:
  - POST /api/mealplanner/user-menu/create
- success:
  - editor enters saved state
  - source badge = user_private
- failure:
  - inline validation + toast
- unpaid:
  - available

### event: update_private_menu
- api:
  - POST /api/mealplanner/user-menu/update
- success:
  - updated_at patch
- failure:
  - error toast
- unpaid:
  - available

### event: submit_publish_request
- api:
  - POST /api/mealplanner/user-menu/publish-request
- success:
  - publication badge update to review_pending context
  - navigate to publish status optionally
- failure:
  - error toast
- unpaid:
  - available

## 16. user_menu_publish_status

### event: refresh_publish_status
- api:
  - GET /api/mealplanner/user-menu/publish-status
- success:
  - status card patch
- failure:
  - error toast
- unpaid:
  - available

## 17. notification_settings

### event: save_notification_pref
- api:
  - future notification settings API
- success:
  - saved toast
- failure:
  - error toast
- unpaid:
  - shared notification settings are teaser on free

## 18. upgrade_modal triggers summary
- pantry open on free
- family shared check on free
- nutrition panel open on free
- LifeOS integration toggle on free
- template limit reached
- favorite limit reached
- history beyond free limit


---

## SOURCE FILE: 090.interface/020.screen/0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md

# MealPlanner CSV Exact Definition

## 1. purpose
MealPlanner の CSV 出力列を exact に固定する。

## 2. common_principles
- UTF-8 を正とする
- 1食1行を基本とする
- 列順は固定し、任意列は profile で ON/OFF する
- locale に応じて見出し文言は変えてよい
- 内部キー列は標準出力に含めない
- 人に見せられる CSV を優先する

## 3. target_scopes
- daily
- weekly
- monthly

## 4. standard_column_set
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

## 5. optional_column_set
- household_name
- budget_tier
- derived_budget_amount
- estimated_kcal
- changed_flag
- changed_reason
- publication_status
- export_generated_at

## 6. default_profiles

### daily_default_profile
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

### weekly_default_profile
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

### monthly_default_profile
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

## 7. column_meaning

### plan_scope
- daily / weekly / monthly

### date
- meal_slot.meal_date

### weekday
- meal_date から導出する曜日表示

### meal_category
- breakfast / lunch / dinner / snack の表示名

### menu_name
- meal_slot.menu_title_snapshot または表示用 menu_title

### source_type
- 基本献立
- 自分の献立
- 公開献立
- システム初期
の表示用変換値

### servings
- 何人分か

### estimated_cost
- 概算コスト

### currency_code
- 表示通貨

### memo
- meal_slot.memo

### actual_status
- planned / changed / skipped / eating_out / convenience_food の表示用変換値

### budget_tier
- 節約 / 普通 / 多め

### derived_budget_amount
- 日 / 週 / 月の対象範囲に応じた参考予算

### estimated_kcal
- 推定 kcal
- null の場合は空欄

### changed_flag
- true / false 表示
- 標準 profile では通常不要

### changed_reason
- 変更理由
- null の場合は空欄

### publication_status
- private / review_pending / published など
- 標準 profile では通常不要

### export_generated_at
- 出力作成日時

## 8. header_copy_ja

### standard_headers
- plan_scope: 出力対象
- date: 日付
- weekday: 曜日
- meal_category: 食事区分
- menu_name: 献立名
- source_type: 献立種別
- servings: 人数
- estimated_cost: 概算費用
- currency_code: 通貨
- memo: メモ
- actual_status: 実績状態

### optional_headers
- household_name: 家庭名
- budget_tier: 予算帯
- derived_budget_amount: 参考予算
- estimated_kcal: 推定kcal
- changed_flag: 変更有無
- changed_reason: 変更理由
- publication_status: 公開状態
- export_generated_at: 出力日時

## 9. file_name_policy
- daily:
  - mealplan_daily_YYYYMMDD.csv
- weekly:
  - mealplan_weekly_YYYYMMDD.csv
- monthly:
  - mealplan_monthly_YYYYMM.csv

## 10. empty_value_policy
- null text:
  - 空欄
- null numeric:
  - 空欄
- null enum-like:
  - 空欄
- boolean:
  - true / false ではなく表示語へ変換してもよい

## 11. non_goals
- DB内部IDの露出
- JSONそのまま出力
- 技術列の露出


---

## SOURCE FILE: 090.interface/020.screen/0900200008_MEAL_PLANNER_UI_COMPONENT_DECOMPOSITION.md

# MealPlanner UI Component Decomposition

## 1. purpose
MealPlanner の UI を画面単位から component 単位へ分解し、
設計として再利用可能な粒度に整理する。

## 2. decomposition_principles
- 画面責務と部品責務を分ける
- 日 / 週 / 月の共通部を先に切り出す
- 共通部品の正式設計は別チャット扱い
- ここでは MealPlanner が必要とする UI 分解だけ記述する

## 3. screen_to_component_map

### dashboard_home
components:
- dashboard_header_card
- plan_horizon_quick_actions
- today_slots_summary_card
- current_week_summary_card
- shopping_summary_card
- recent_history_card
- pantry_teaser_or_summary_card
- nutrition_teaser_or_summary_card
- family_share_teaser_or_summary_card
- lifeos_integration_teaser_or_summary_card

### weekly_meal_planner
components:
- weekly_header_bar
- budget_tier_badge
- weekly_grid
- weekly_grid_cell
- meal_slot_card
- slot_action_sheet
- generation_summary_card
- template_action_bar
- favorite_action_button
- csv_export_button
- free_limit_notice_banner
- upgrade_teaser_card

### daily_meal_detail
components:
- daily_header_bar
- day_slot_list
- day_slot_detail_card
- actual_result_action_sheet
- history_preview_card
- nutrition_summary_card_paid
- pantry_hint_card_paid
- csv_export_button

### monthly_meal_planner
components:
- monthly_header_bar
- month_budget_summary_card
- monthly_week_block_list
- monthly_week_block_card
- derive_week_button
- event_hint_summary_card
- csv_export_button

### menu_search_and_suggestion
components:
- search_filter_bar
- source_filter_chip_group
- dietary_rule_chip_group
- search_result_list
- search_result_card
- suggestion_result_list
- suggestion_result_card
- score_summary_badge_group

### pantry_inventory
components:
- pantry_header_bar
- pantry_item_list
- pantry_item_row
- pantry_editor_sheet
- expiry_alert_banner
- pantry_teaser_card_free

### shopping_list
components:
- shopping_header_card
- shopping_progress_card
- shopping_group_section
- shopping_item_row
- shopping_check_button
- store_memo_input
- shared_check_teaser_free

### goal_and_budget_settings
components:
- budget_tier_selector
- derived_budget_preview_card
- goal_toggle_group
- lifeos_integration_teaser_or_toggle_group
- save_settings_button

### family_settings
components:
- household_header_form
- family_member_list
- family_member_card
- family_member_editor_sheet
- shared_control_teaser_or_panel

### template_library
components:
- template_list
- template_card
- template_limit_banner
- template_apply_button

### favorite_menu_list
components:
- favorite_list
- favorite_card
- favorite_limit_banner

### meal_history_log
components:
- history_filter_bar
- history_list
- history_row
- retention_limit_banner
- statistics_summary_card_paid

### user_menu_editor
components:
- user_menu_header_form
- tag_selector_group
- serving_and_time_form
- ingredient_editor_list
- ingredient_editor_row
- memo_input_card
- visibility_scope_selector
- publish_request_button
- publication_status_badge

### user_menu_publish_status
components:
- publish_status_card
- requested_scope_badge
- review_note_card
- refresh_button

### notification_settings
components:
- notification_toggle_group
- shared_notification_teaser_free
- save_notification_button

## 4. shared_component_candidates_inside_app
- plan_horizon_selector
- budget_tier_selector
- meal_category_chip_group
- source_type_badge
- publication_status_badge
- csv_export_button
- free_limit_banner
- upgrade_teaser_card
- empty_state_card
- error_state_card
- loading_state_card

## 5. stateful_vs_stateless_split

### stateful_preferred
- weekly_grid
- day_slot_list
- pantry_item_list
- shopping_group_section
- ingredient_editor_list

### stateless_preferred
- source_type_badge
- publication_status_badge
- budget_tier_badge
- csv_export_button
- empty_state_card
- free_limit_banner

## 6. gating_sensitive_components
- pantry_teaser_card_free
- nutrition_summary_card_paid
- family_share_teaser_or_summary_card
- lifeos_integration_teaser_or_toggle_group
- shared_check_teaser_free
- template_limit_banner
- favorite_limit_banner
- retention_limit_banner
- shared_notification_teaser_free

## 7. non_goals
- 実装技術の決定
- Flutter/React/Native どれで組むかの決定
- 共通部品台帳への正式採用判断


---

## SOURCE FILE: 090.interface/020.screen/0900200009_MEAL_PLANNER_COMPONENT_PROPS_DESIGN.md

# MealPlanner Component Props Design

## 1. purpose
MealPlanner の主要 UI component について、
props の意味境界を実装前に固定する。

## 2. general_rules
- props 名は snake_case ではなく UI 実装側命名へ変換されてもよい
- ただし意味は API / Screen I/O と一致させる
- component は business meaning を勝手に作らない
- enum 値は API の正規値を保持できるようにする
- free / paid gating は component 内で判断しすぎず、screen から渡す

## 3. plan_horizon_selector
### responsibility
- 日 / 週 / 月の選択UI

### props
- selected_horizon:
  - daily / weekly / monthly
- enabled_horizons:
  - selectable horizon list
- on_change:
  - next_horizon -> void
- show_labels:
  - boolean
- disabled:
  - boolean

### notes
- 文言変換は UI copy に従う

## 4. budget_tier_selector
### responsibility
- 節約 / 普通 / 多めの選択UI

### props
- selected_budget_tier
- derived_weekly_budget_amount
- derived_monthly_reference_amount
- currency_code
- disabled
- on_change

### rules
- budget_tier は required meaning
- derived 金額は補助表示であり、主選択は tier

## 5. source_type_badge
### responsibility
- 献立ソース表示

### props
- source_type
- compact_mode
- show_icon

### allowed_source_type
- system_seed
- cx22073jw_base
- user_private
- user_published

## 6. publication_status_badge
### responsibility
- 公開状態表示

### props
- publication_status
- compact_mode

### allowed_publication_status
- private
- draft
- review_pending
- published
- rejected

## 7. meal_slot_card
### responsibility
- 1食分の表示

### props
- meal_slot_id
- meal_date
- meal_category
- menu_reference_id_or_menu_master_id
- menu_title
- source_type
- publication_status_nullable
- servings
- estimated_cost_nullable
- estimated_kcal_nullable
- memo_nullable
- changed_flag
- changed_reason_nullable
- actual_status
- currency_code
- on_tap
- on_replace
- on_open_actions
- is_editable
- show_cost
- show_kcal

### rules
- menu_title is always display-required
- source_type is display-required
- publication_status is optional display context

## 8. weekly_grid
### responsibility
- 週間枠の一覧表示

### props
- week_start_date
- week_end_date
- slots
- is_editable
- show_budget_context
- on_slot_tap
- on_slot_replace
- on_empty_slot_tap

### slot_item_shape
- must match meal_slot_card minimum fields

## 9. monthly_week_block_card
### responsibility
- 月次内の週ブロック表示

### props
- week_start_date
- week_end_date
- theme_label_nullable
- estimated_budget_amount_nullable
- derived_week_plan_id_nullable
- on_open_week
- on_derive_week

## 10. shopping_item_row
### responsibility
- 買い物明細表示

### props
- shopping_list_item_id
- ingredient_reference_id
- ingredient_name
- shopping_category_nullable
- shortage_quantity
- unit_code
- estimated_unit_price_nullable
- estimated_line_cost_nullable
- currency_code
- checked_flag
- checked_by_member_id_nullable
- checked_at_nullable
- store_memo_nullable
- can_check
- can_edit_store_memo
- on_toggle_check
- on_store_memo_change

## 11. pantry_item_row
### responsibility
- 在庫明細表示

### props
- pantry_item_id
- ingredient_reference_id
- ingredient_name
- quantity
- unit_code
- expiry_date_nullable
- storage_type_nullable
- opened_flag
- note_nullable
- is_editable
- on_edit
- on_delete

## 12. user_menu_editor_form
### responsibility
- user_menu 作成 / 編集フォーム

### props
- mode:
  - create / update
- menu_id_nullable
- menu_title
- meal_category_tags
- cuisine_tags
- season_tags
- dietary_tags
- serving_base
- prep_time_minutes_nullable
- estimated_cost_nullable
- ingredients
- memo_nullable
- visibility_scope
- publication_status
- source_type
- can_submit_publish
- on_change
- on_save
- on_submit_publish

### ingredient_row_shape
- ingredient_id_nullable
- ingredient_reference_id_nullable
- ingredient_name
- quantity
- unit_code

## 13. csv_export_button
### responsibility
- CSV出力開始

### props
- target_scope:
  - daily / weekly / monthly
- target_plan_id
- is_enabled
- is_loading
- allowed_column_profile_type:
  - standard_only / standard_plus_optional
- on_export

### rules
- free:
  - standard_only
- paid:
  - standard_plus_optional

## 14. free_limit_banner
### responsibility
- 無料上限制限の表示

### props
- limit_type:
  - template_limit / favorite_limit / history_limit
- current_count_nullable
- limit_count_nullable
- on_upgrade
- on_close

## 15. upgrade_teaser_card
### responsibility
- 有料機能案内

### props
- teaser_type:
  - pantry
  - nutrition
  - family_share
  - lifeos_integration
  - shared_check
  - template_limit
  - favorite_limit
  - history_limit
- title
- body
- price_text
- support_note
- on_upgrade
- on_close

## 16. empty_state_card
### responsibility
- 空状態表示

### props
- state_type
- title
- description_nullable
- primary_action_label_nullable
- on_primary_action_nullable

## 17. error_state_card
### responsibility
- エラー状態表示

### props
- title
- message
- retry_label_nullable
- on_retry_nullable

## 18. screen_to_component_contract_rules
- screen は entitlement を判定して component に渡す
- component は business rule を再判定しない
- component は API を直接知らなくてよい
- display-only component は source_type / publication_status を落とさない


---

## SOURCE FILE: 090.interface/020.screen/0900200010_MEAL_PLANNER_COMPONENT_EVENT_PAYLOAD_DETAIL.md

# MealPlanner Component Event Payload Detail

## 1. purpose
主要 component の event payload を exact に固定する。

## 2. common_rules
- event payload は UI内部都合だけで shape を崩さない
- source_type / publication_status / ids を落とさない
- null 許容値は明示する
- event 名は意味ベースにする

## 3. plan_horizon_selector

### on_change payload
{
  "next_horizon": "weekly"
}

## 4. budget_tier_selector

### on_change payload
{
  "next_budget_tier": "saving"
}

## 5. meal_slot_card

### on_tap payload
{
  "meal_slot_id": "slot_001",
  "meal_date": "2026-04-14",
  "meal_category": "dinner"
}

### on_replace payload
{
  "meal_plan_id": "plan_001",
  "meal_slot_id": "slot_001",
  "current_menu_reference_id": "menu_1001",
  "source_type": "cx22073jw_base"
}

### on_open_actions payload
{
  "meal_slot_id": "slot_001",
  "actual_status": "planned",
  "changed_flag": false
}

## 6. weekly_grid

### on_slot_tap payload
{
  "meal_slot_id": "slot_001",
  "meal_date": "2026-04-14",
  "meal_category": "dinner"
}

### on_empty_slot_tap payload
{
  "meal_date": "2026-04-15",
  "meal_category": "lunch"
}

## 7. monthly_week_block_card

### on_open_week payload
{
  "week_start_date": "2026-04-13",
  "week_end_date": "2026-04-19",
  "derived_week_plan_id": "plan_week_001"
}

### on_derive_week payload
{
  "monthly_meal_plan_id": "plan_month_001",
  "target_week_start_date": "2026-04-13"
}

## 8. shopping_item_row

### on_toggle_check payload
{
  "shopping_list_id": "shop_001",
  "shopping_list_item_id": "item_001",
  "checked_flag": true,
  "checked_by_member_id": "member_001"
}

### on_store_memo_change payload
{
  "shopping_list_item_id": "item_001",
  "store_memo": "ドラッグストアで確認"
}

## 9. pantry_item_row

### on_edit payload
{
  "pantry_item_id": "pantry_001"
}

### on_delete payload
{
  "pantry_item_id": "pantry_001"
}

## 10. user_menu_editor_form

### on_change payload
{
  "field_name": "menu_title",
  "value": "我が家の鶏そぼろ丼"
}

### on_save payload
{
  "mode": "create",
  "menu_id": null
}

### on_submit_publish payload
{
  "menu_master_id": "menu_user_001",
  "requested_visibility_scope": "lifeos_public"
}

## 11. csv_export_button

### on_export payload
{
  "target_scope": "weekly",
  "target_plan_id": "plan_001",
  "allowed_column_profile_type": "standard_only"
}

## 12. free_limit_banner

### on_upgrade payload
{
  "limit_type": "template_limit"
}

## 13. upgrade_teaser_card

### on_upgrade payload
{
  "teaser_type": "pantry"
}

### on_close payload
{
  "teaser_type": "pantry"
}

## 14. notification_toggle_group

### on_change payload
{
  "field_name": "weekly_plan_notice_enabled",
  "value": true
}

## 15. event_integrity_rules
- payload には最低限の id を含める
- destructive event は対象 id 必須
- update event は field_name と value を明示
- publish event は requested_visibility_scope を明示


---

## SOURCE FILE: 090.interface/020.screen/0900200011_MEAL_PLANNER_COMPONENT_PROPS_REQUIRED_OPTIONAL_MATRIX.md

# MealPlanner Component Props Required Optional Matrix

## 1. purpose
主要 component props の required / optional / nullable を fixed する。

## 2. notation
- required:
  - 必須
- optional:
  - 未指定可
- nullable:
  - null 可
- derived:
  - 他 props から導出される補助値

## 3. plan_horizon_selector
- selected_horizon:
  - required
  - non_null
- enabled_horizons:
  - required
  - non_null
- on_change:
  - required
  - non_null
- show_labels:
  - optional
  - non_null
- disabled:
  - optional
  - non_null

## 4. budget_tier_selector
- selected_budget_tier:
  - required
  - non_null
- derived_weekly_budget_amount:
  - optional
  - nullable
- derived_monthly_reference_amount:
  - optional
  - nullable
- currency_code:
  - optional
  - nullable
- disabled:
  - optional
  - non_null
- on_change:
  - required
  - non_null

## 5. source_type_badge
- source_type:
  - required
  - non_null
- compact_mode:
  - optional
  - non_null
- show_icon:
  - optional
  - non_null

## 6. publication_status_badge
- publication_status:
  - required
  - non_null
- compact_mode:
  - optional
  - non_null

## 7. meal_slot_card
- meal_slot_id:
  - required
  - non_null
- meal_date:
  - required
  - non_null
- meal_category:
  - required
  - non_null
- menu_reference_id_or_menu_master_id:
  - required
  - non_null
- menu_title:
  - required
  - non_null
- source_type:
  - required
  - non_null
- publication_status_nullable:
  - optional
  - nullable
- servings:
  - required
  - non_null
- estimated_cost_nullable:
  - optional
  - nullable
- estimated_kcal_nullable:
  - optional
  - nullable
- memo_nullable:
  - optional
  - nullable
- changed_flag:
  - required
  - non_null
- changed_reason_nullable:
  - optional
  - nullable
- actual_status:
  - required
  - non_null
- currency_code:
  - optional
  - nullable
- on_tap:
  - required
  - non_null
- on_replace:
  - optional
  - nullable
- on_open_actions:
  - optional
  - nullable
- is_editable:
  - optional
  - non_null
- show_cost:
  - optional
  - non_null
- show_kcal:
  - optional
  - non_null

## 8. weekly_grid
- week_start_date:
  - required
  - non_null
- week_end_date:
  - required
  - non_null
- slots:
  - required
  - non_null
- is_editable:
  - optional
  - non_null
- show_budget_context:
  - optional
  - non_null
- on_slot_tap:
  - required
  - non_null
- on_slot_replace:
  - optional
  - nullable
- on_empty_slot_tap:
  - optional
  - nullable

## 9. monthly_week_block_card
- week_start_date:
  - required
  - non_null
- week_end_date:
  - required
  - non_null
- theme_label_nullable:
  - optional
  - nullable
- estimated_budget_amount_nullable:
  - optional
  - nullable
- derived_week_plan_id_nullable:
  - optional
  - nullable
- on_open_week:
  - required
  - non_null
- on_derive_week:
  - optional
  - nullable

## 10. shopping_item_row
- shopping_list_item_id:
  - required
  - non_null
- ingredient_reference_id:
  - required
  - non_null
- ingredient_name:
  - required
  - non_null
- shopping_category_nullable:
  - optional
  - nullable
- shortage_quantity:
  - required
  - non_null
- unit_code:
  - required
  - non_null
- estimated_unit_price_nullable:
  - optional
  - nullable
- estimated_line_cost_nullable:
  - optional
  - nullable
- currency_code:
  - optional
  - nullable
- checked_flag:
  - required
  - non_null
- checked_by_member_id_nullable:
  - optional
  - nullable
- checked_at_nullable:
  - optional
  - nullable
- store_memo_nullable:
  - optional
  - nullable
- can_check:
  - required
  - non_null
- can_edit_store_memo:
  - required
  - non_null
- on_toggle_check:
  - required
  - non_null
- on_store_memo_change:
  - optional
  - nullable

## 11. pantry_item_row
- pantry_item_id:
  - required
  - non_null
- ingredient_reference_id:
  - required
  - non_null
- ingredient_name:
  - required
  - non_null
- quantity:
  - required
  - non_null
- unit_code:
  - required
  - non_null
- expiry_date_nullable:
  - optional
  - nullable
- storage_type_nullable:
  - optional
  - nullable
- opened_flag:
  - required
  - non_null
- note_nullable:
  - optional
  - nullable
- is_editable:
  - required
  - non_null
- on_edit:
  - optional
  - nullable
- on_delete:
  - optional
  - nullable

## 12. user_menu_editor_form
- mode:
  - required
  - non_null
- menu_id_nullable:
  - optional
  - nullable
- menu_title:
  - required
  - non_null
- meal_category_tags:
  - required
  - non_null
- cuisine_tags:
  - optional
  - non_null
- season_tags:
  - optional
  - non_null
- dietary_tags:
  - optional
  - non_null
- serving_base:
  - required
  - non_null
- prep_time_minutes_nullable:
  - optional
  - nullable
- estimated_cost_nullable:
  - optional
  - nullable
- ingredients:
  - required
  - non_null
- memo_nullable:
  - optional
  - nullable
- visibility_scope:
  - required
  - non_null
- publication_status:
  - required
  - non_null
- source_type:
  - required
  - non_null
- can_submit_publish:
  - required
  - non_null
- on_change:
  - required
  - non_null
- on_save:
  - required
  - non_null
- on_submit_publish:
  - optional
  - nullable

## 13. csv_export_button
- target_scope:
  - required
  - non_null
- target_plan_id:
  - required
  - non_null
- is_enabled:
  - required
  - non_null
- is_loading:
  - optional
  - non_null
- allowed_column_profile_type:
  - required
  - non_null
- on_export:
  - required
  - non_null

## 14. free_limit_banner
- limit_type:
  - required
  - non_null
- current_count_nullable:
  - optional
  - nullable
- limit_count_nullable:
  - optional
  - nullable
- on_upgrade:
  - required
  - non_null
- on_close:
  - optional
  - nullable

## 15. upgrade_teaser_card
- teaser_type:
  - required
  - non_null
- title:
  - required
  - non_null
- body:
  - required
  - non_null
- price_text:
  - required
  - non_null
- support_note:
  - required
  - non_null
- on_upgrade:
  - required
  - non_null
- on_close:
  - required
  - non_null

## 16. empty_state_card
- state_type:
  - required
  - non_null
- title:
  - required
  - non_null
- description_nullable:
  - optional
  - nullable
- primary_action_label_nullable:
  - optional
  - nullable
- on_primary_action_nullable:
  - optional
  - nullable

## 17. error_state_card
- title:
  - required
  - non_null
- message:
  - required
  - non_null
- retry_label_nullable:
  - optional
  - nullable
- on_retry_nullable:
  - optional
  - nullable

## 18. notification_toggle_group
- settings:
  - required
  - non_null
- is_paid:
  - required
  - non_null
- on_change:
  - required
  - non_null
- on_blocked_paid_feature:
  - optional
  - nullable


---

## SOURCE FILE: 090.interface/0900000_INTERFACE_INDEX.md

# Interface Index

## purpose
MealPlanner の画面 / 操作 / 出力境界を定義する

## files
- 0900001_INTERFACE_OVERVIEW.md

## notes
- この index は Interface の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 090.interface/0900001_INTERFACE_OVERVIEW.md

# Interface Overview

## role
MealPlanner の画面 / 操作 / 文言 / CSV / component 境界を定義する。

## interface_summary
- 日 / 週 / 月の3粒度を UI で扱う
- free / paid の出し分けを行う
- user_menu 作成と公開申請導線を持つ
- CSV 出力導線を日 / 週 / 月に置く
- component 分解済み
- component props と event payload を固定済み

## key_screens
- dashboard_home
- weekly_meal_planner
- daily_meal_detail
- monthly_meal_planner
- menu_search_and_suggestion
- pantry_inventory
- shopping_list
- goal_and_budget_settings
- family_settings
- template_library
- favorite_menu_list
- meal_history_log
- user_menu_editor
- user_menu_publish_status
- notification_settings

## ui_copy_summary
- 家庭向け
- 強すぎない
- 医療判断を想起させない
- 課金訴求は押しつけすぎない

## csv_summary
- UTF-8
- 1食1行
- standard columns fixed
- optional columns fixed

## component_summary
- shared candidates inside app:
  - plan_horizon_selector
  - budget_tier_selector
  - source_type_badge
  - publication_status_badge
  - csv_export_button
  - free_limit_banner
  - upgrade_teaser_card
  - empty_state_card
  - error_state_card


---

## SOURCE FILE: 100.security/010.core/1000100000_CORE_INDEX.md

# Security Core Index

## purpose
MealPlanner のセキュリティ原則を定義する

## files
- 1000100001_CORE_OVERVIEW.md

## notes
- この index は Security Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 100.security/010.core/1000100001_CORE_OVERVIEW.md

# Security Core Overview

## role
MealPlanner のセキュリティ原則を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 100.security/010.core/1000100002_MEAL_PLANNER_SECURITY_POLICY.md

# MealPlanner Security Policy

## 分離対象
- private 献立
- household 共有献立
- lifeos_public 献立
- 課金状態
- household 設定
- meal_history

## 原則
- private と public を混同しない
- household 共有は軽量ロールで制御する
- 公開申請前の user_menu を全体公開しない


---

## SOURCE FILE: 100.security/010.core/1000100003_MEAL_PLANNER_AUTHORITY_BOUNDARY_DESIGN.md

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


---

## SOURCE FILE: 100.security/1000000_SECURITY_INDEX.md

# Security Index

## purpose
MealPlanner のセキュリティ観点を定義する

## files
- 1000001_SECURITY_OVERVIEW.md

## notes
- この index は Security の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 100.security/1000001_SECURITY_OVERVIEW.md

# Security Overview

## role
MealPlanner のセキュリティ観点を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 110.infrastructure/010.core/1100100000_CORE_INDEX.md

# Infrastructure Core Index

## purpose
MealPlanner の基盤前提を定義する

## files
- 1100100001_CORE_OVERVIEW.md

## notes
- この index は Infrastructure Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 110.infrastructure/010.core/1100100001_CORE_OVERVIEW.md

# Infrastructure Core Overview

## role
MealPlanner の基盤前提を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 110.infrastructure/1100000_INFRASTRUCTURE_INDEX.md

# Infrastructure Index

## purpose
MealPlanner の配置、実行基盤、依存基盤を定義する

## files
- 1100001_INFRASTRUCTURE_OVERVIEW.md

## notes
- この index は Infrastructure の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 110.infrastructure/1100001_INFRASTRUCTURE_OVERVIEW.md

# Infrastructure Overview

## role
MealPlanner の配置、実行基盤、依存基盤を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 120.implementation/010.core/1200100000_CORE_INDEX.md

# Implementation Core Index

## purpose
MealPlanner の実装前提を定義する

## files
- 1200100001_CORE_OVERVIEW.md

## notes
- この index は Implementation Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 120.implementation/010.core/1200100001_CORE_OVERVIEW.md

# Implementation Core Overview

## role
MealPlanner の実装前提を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 120.implementation/010.core/1200100002_MEAL_PLANNER_IMPLEMENTATION_SCOPE.md

# MealPlanner Implementation Scope

## MVP
- 日 / 週 / 月提案
- budget_tier
- shopping_list
- CSV出力
- user献立追加
- free / paid UI出し分け

## 次段階
- pantry 連携強化
- LifeOS 連携強化
- 公開済み user_menu 利用最適化
- exact API request / response 固定


---

## SOURCE FILE: 120.implementation/010.core/1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

# MealPlanner API Exact Payloads

## 1. Generate Plan
### endpoint
POST /api/mealplanner/plan/generate

### request
{
  "user_id": "string",
  "household_id": "string",
  "plan_horizon": "weekly",
  "target_start_date": "2026-04-13",
  "target_end_date": "2026-04-19",
  "budget_tier": "standard",
  "household_size": 3,
  "meal_categories": ["breakfast", "lunch", "dinner", "snack"],
  "dietary_rules": [
    {
      "rule_type": "allergy",
      "target_member_id": "member_001",
      "rule_value": "egg"
    }
  ],
  "disliked_ingredients": ["celery"],
  "preferred_cuisine_tags": ["japanese", "easy"],
  "pantry_mode": "use_if_available",
  "include_user_private_menu": true,
  "include_user_published_menu": true,
  "include_cx22073jw_base_menu": true,
  "activity_hint": {
    "training_day_flag": false,
    "activity_level": "normal"
  },
  "goal_hint": {
    "weight_goal_type": "maintain",
    "salt_attention_flag": true,
    "protein_focus_flag": false
  }
}

### response
{
  "success": true,
  "data": {
    "meal_plan_id": "plan_001",
    "plan_horizon": "weekly",
    "week_start_date": "2026-04-13",
    "week_end_date": "2026-04-19",
    "budget_tier": "standard",
    "derived_budget_amount": 9800,
    "currency_code": "JPY",
    "slots": [
      {
        "meal_slot_id": "slot_001",
        "meal_date": "2026-04-13",
        "meal_category": "dinner",
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "servings": 3,
        "estimated_cost": 780,
        "estimated_kcal": 540
      }
    ],
    "generation_summary": {
      "excluded_by_allergy_count": 4,
      "pantry_priority_applied": true,
      "user_menu_used_count": 1
    }
  }
}

## 2. Get Plan Detail
### endpoint
GET /api/mealplanner/plan/detail?meal_plan_id=plan_001

### response
{
  "success": true,
  "data": {
    "meal_plan_id": "plan_001",
    "household_id": "household_001",
    "plan_horizon": "weekly",
    "target_start_date": "2026-04-13",
    "target_end_date": "2026-04-19",
    "budget_tier": "standard",
    "derived_budget_amount": 9800,
    "currency_code": "JPY",
    "slots": [
      {
        "meal_slot_id": "slot_001",
        "meal_date": "2026-04-13",
        "meal_category": "dinner",
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "publication_status": "published",
        "servings": 3,
        "estimated_cost": 780,
        "estimated_kcal": 540,
        "memo": "塩分控えめ調整",
        "actual_status": "planned"
      }
    ]
  }
}

## 3. Update Plan Slot
### endpoint
POST /api/mealplanner/plan/slot/update

### request
{
  "meal_plan_id": "plan_001",
  "meal_slot_id": "slot_001",
  "menu_master_id": "menu_3001",
  "menu_title_override": null,
  "servings": 3,
  "memo": "家族希望で変更",
  "changed_reason": "family_preference",
  "changed_flag": true
}

### response
{
  "success": true,
  "data": {
    "meal_slot_id": "slot_001",
    "meal_plan_id": "plan_001",
    "menu_master_id": "menu_3001",
    "servings": 3,
    "estimated_cost": 850,
    "estimated_kcal": 610,
    "changed_flag": true,
    "changed_reason": "family_preference"
  }
}

## 4. Derive Week From Monthly
### endpoint
POST /api/mealplanner/plan/derive-week

### request
{
  "monthly_meal_plan_id": "plan_month_001",
  "target_week_start_date": "2026-04-13"
}

### response
{
  "success": true,
  "data": {
    "weekly_meal_plan_id": "plan_week_001",
    "derived_from_plan_id": "plan_month_001",
    "week_start_date": "2026-04-13",
    "week_end_date": "2026-04-19"
  }
}

## 5. Search Menu
### endpoint
POST /api/mealplanner/menu/search

### request
{
  "query": "鶏肉",
  "meal_category": "dinner",
  "budget_tier": "saving",
  "source_filters": ["cx22073jw_base", "user_private", "user_published"],
  "dietary_rules": ["low_salt"],
  "exclude_ingredients": ["egg"],
  "page": 1,
  "page_size": 20
}

### response
{
  "success": true,
  "data": {
    "items": [
      {
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "publication_status": "published",
        "estimated_cost_band": "low",
        "prep_time_band": "15_30_min",
        "serving_base": 2
      }
    ],
    "page": 1,
    "page_size": 20,
    "total_count": 1
  }
}

## 6. Suggest Menu
### endpoint
POST /api/mealplanner/menu/suggest

### request
{
  "meal_date": "2026-04-13",
  "meal_category": "dinner",
  "budget_tier": "saving",
  "household_size": 3,
  "pantry_items": [
    {
      "ingredient_id": "ing_001",
      "ingredient_name": "鶏むね肉",
      "quantity": 2,
      "unit_code": "piece"
    }
  ],
  "dietary_rules": ["low_salt"],
  "preferred_cuisine_tags": ["japanese"],
  "include_user_private_menu": true
}

### response
{
  "success": true,
  "data": {
    "suggestions": [
      {
        "rank": 1,
        "menu_master_id": "menu_1001",
        "menu_title": "鶏むね肉の照り焼き",
        "source_type": "cx22073jw_base",
        "estimated_cost": 780,
        "estimated_kcal": 540,
        "score_summary": {
          "budget_fit": 0.92,
          "pantry_fit": 0.88,
          "dietary_fit": 0.95
        }
      }
    ]
  }
}

## 7. Generate Shopping List
### endpoint
POST /api/mealplanner/shopping/generate

### request
{
  "meal_plan_id": "plan_001",
  "include_pantry_diff": true,
  "group_by": "shopping_category",
  "currency_code": "JPY"
}

### response
{
  "success": true,
  "data": {
    "shopping_list_id": "shop_001",
    "estimated_total_cost": 4200,
    "currency_code": "JPY",
    "items": [
      {
        "shopping_list_item_id": "item_001",
        "ingredient_id": "ing_2001",
        "ingredient_name": "玉ねぎ",
        "shopping_category": "vegetable",
        "shortage_quantity": 2,
        "unit_code": "piece",
        "estimated_unit_price": 60,
        "estimated_line_cost": 120,
        "checked_flag": false
      }
    ]
  }
}

## 8. Check Shopping Item
### endpoint
POST /api/mealplanner/shopping/item/check

### request
{
  "shopping_list_id": "shop_001",
  "shopping_list_item_id": "item_001",
  "checked_flag": true,
  "checked_by_member_id": "member_002"
}

### response
{
  "success": true,
  "data": {
    "shopping_list_item_id": "item_001",
    "checked_flag": true,
    "checked_by_member_id": "member_002",
    "checked_at": "2026-04-14T09:30:00+09:00"
  }
}

## 9. Pantry Upsert
### endpoint
POST /api/mealplanner/pantry/upsert

### request
{
  "household_id": "household_001",
  "items": [
    {
      "pantry_item_id": null,
      "ingredient_id": "ing_001",
      "ingredient_name": "鶏むね肉",
      "quantity": 2,
      "unit_code": "piece",
      "expiry_date": "2026-04-16",
      "storage_type": "frozen",
      "opened_flag": false,
      "note": ""
    }
  ]
}

### response
{
  "success": true,
  "data": {
    "updated_count": 1
  }
}

## 10. Create User Menu
### endpoint
POST /api/mealplanner/user-menu/create

### request
{
  "user_id": "user_001",
  "household_id": "household_001",
  "menu_title": "我が家の鶏そぼろ丼",
  "meal_category_tags": ["dinner"],
  "cuisine_tags": ["japanese", "home"],
  "season_tags": ["all_season"],
  "dietary_tags": ["high_protein"],
  "serving_base": 3,
  "prep_time_minutes": 20,
  "estimated_cost": 650,
  "ingredients": [
    {
      "ingredient_id": "ing_001",
      "ingredient_name": "鶏ひき肉",
      "quantity": 300,
      "unit_code": "g"
    }
  ],
  "memo": "子ども向けに少し甘め",
  "visibility_scope": "private"
}

### response
{
  "success": true,
  "data": {
    "menu_master_id": "menu_user_001",
    "source_type": "user_private",
    "publication_status": "private",
    "visibility_scope": "private"
  }
}

## 11. Update User Menu
### endpoint
POST /api/mealplanner/user-menu/update

### request
{
  "menu_master_id": "menu_user_001",
  "menu_title": "我が家の鶏そぼろ丼 改",
  "serving_base": 4,
  "estimated_cost": 720,
  "memo": "来客向け"
}

### response
{
  "success": true,
  "data": {
    "menu_master_id": "menu_user_001",
    "updated_at": "2026-04-14T10:00:00+09:00"
  }
}

## 12. Submit User Menu Publish Request
### endpoint
POST /api/mealplanner/user-menu/publish-request

### request
{
  "menu_master_id": "menu_user_001",
  "requested_visibility_scope": "lifeos_public",
  "publish_note": "家庭向け簡単レシピとして公開希望"
}

### response
{
  "success": true,
  "data": {
    "submission_id": "sub_001",
    "menu_master_id": "menu_user_001",
    "submission_status": "review_pending",
    "requested_visibility_scope": "lifeos_public"
  }
}

## 13. Get User Menu Publish Status
### endpoint
GET /api/mealplanner/user-menu/publish-status?menu_master_id=menu_user_001

### response
{
  "success": true,
  "data": {
    "menu_master_id": "menu_user_001",
    "submission_status": "review_pending",
    "publication_status": "draft",
    "requested_visibility_scope": "lifeos_public",
    "review_note": null
  }
}

## 14. Export Meal Plan CSV
### endpoint
POST /api/mealplanner/export/csv

### request
{
  "user_id": "user_001",
  "household_id": "household_001",
  "target_scope": "weekly",
  "target_plan_id": "plan_001",
  "column_profile": [
    "date",
    "meal_category",
    "menu_name",
    "servings",
    "estimated_cost",
    "memo",
    "actual_status"
  ],
  "locale_code": "ja-JP",
  "encoding": "utf-8"
}

### response
{
  "success": true,
  "data": {
    "export_job_id": "exp_001",
    "export_status": "generated",
    "file_name": "mealplan_weekly_20260413.csv",
    "download_token": "token_001"
  }
}

## 15. Record Meal History
### endpoint
POST /api/mealplanner/history/record

### request
{
  "meal_slot_id": "slot_001",
  "actual_result_type": "eating_out",
  "actual_menu_name": "外食 ラーメン",
  "note": "急な外出のため変更"
}

### response
{
  "success": true,
  "data": {
    "meal_history_id": "hist_001",
    "meal_slot_id": "slot_001",
    "actual_result_type": "eating_out",
    "recorded_at": "2026-04-14T12:30:00+09:00"
  }
}

## 16. Update Budget Tier
### endpoint
POST /api/mealplanner/settings/budget-tier

### request
{
  "household_id": "household_001",
  "budget_tier": "saving"
}

### response
{
  "success": true,
  "data": {
    "household_id": "household_001",
    "budget_tier": "saving",
    "derived_weekly_budget_amount": 7600,
    "derived_monthly_reference_amount": 30400,
    "currency_code": "JPY"
  }
}

## 17. Update Family Profile
### endpoint
POST /api/mealplanner/settings/family-profile

### request
{
  "household_id": "household_001",
  "household_name": "Boss Family",
  "members": [
    {
      "member_id": "member_001",
      "nickname": "Boss",
      "age_group": "adult",
      "likes": ["chicken"],
      "dislikes": ["celery"],
      "allergy_tags": []
    }
  ]
}

### response
{
  "success": true,
  "data": {
    "household_id": "household_001",
    "member_count": 1,
    "updated_at": "2026-04-14T11:00:00+09:00"
  }
}


---

## SOURCE FILE: 120.implementation/010.core/1200100004_MEAL_PLANNER_DB_IMPLEMENTATION_NOTES.md

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


---

## SOURCE FILE: 120.implementation/010.core/1200100005_MEAL_PLANNER_SCREEN_IMPLEMENTATION_NOTES.md

# MealPlanner Screen Implementation Notes

## 1. implementation_order
優先画面:
- dashboard_home
- weekly_meal_planner
- daily_meal_detail
- menu_search_and_suggestion
- shopping_list
- goal_and_budget_settings
- family_settings
- user_menu_editor

第2段階:
- monthly_meal_planner
- pantry_inventory
- user_menu_publish_status
- meal_history_log
- template_library
- favorite_menu_list
- notification_settings

## 2. implementation_rules
- 画面 state 名は API payload の語彙と合わせる
- enum は UI独自名に変換しない
- source_type と publication_status を画面でも保持する
- CSV export action は daily / weekly / monthly の3画面に置く
- user_menu は create と update を分ける
- publish request は editor から呼び出せるようにする

## 3. warning_points
- meal_slot の snapshot 表示と参照元表示を混同しない
- free / paid の gating は UI文言と entitlement 判定を分離する
- CX22073JW 正本データを編集させない
- public menu と private menu を同じ編集導線に流し込まない
- family 設定と household 共有設定を曖昧にしない

## 4. next_fix_items
- screen ごとの request/response field required/optional 固定
- screen event 名固定
- validation message 文言固定
- UI component 単位への分解


---

## SOURCE FILE: 120.implementation/010.core/1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md

# MealPlanner Required / Optional / Nullable Matrix

## 1. purpose
MealPlanner の API / DB / Screen I/O について、
required / optional / nullable を exact に固定する。

## 2. rule_definitions
- required:
  - request または保存時に必須
  - 未指定なら validation error
- optional:
  - 指定しなくても受理可能
  - 未指定時は server default / no_change / empty behavior のいずれか
- nullable:
  - key 自体は存在してもよく、値として null を許容
  - optional と nullable は別概念
- forbidden_on_create:
  - create request では送ってはいけない
- server_managed:
  - server 側で決定、client 指定禁止または無視

## 3. api_request_matrix

### 3.1 POST /api/mealplanner/plan/generate
- user_id: required, non_null
- household_id: required, non_null
- plan_horizon: required, non_null
- target_start_date: required, non_null
- target_end_date: required, non_null
- budget_tier: required, non_null
- household_size: required, non_null
- meal_categories: required, non_null
- dietary_rules: optional, non_null_if_present
- disliked_ingredients: optional, non_null_if_present
- preferred_cuisine_tags: optional, non_null_if_present
- pantry_mode: optional, non_null_if_present
- include_user_private_menu: optional, non_null_if_present
- include_user_published_menu: optional, non_null_if_present
- include_cx22073jw_base_menu: optional, non_null_if_present
- activity_hint: optional, nullable
- goal_hint: optional, nullable

#### activity_hint child fields
- training_day_flag: optional, nullable
- activity_level: optional, nullable

#### goal_hint child fields
- weight_goal_type: optional, nullable
- salt_attention_flag: optional, nullable
- protein_focus_flag: optional, nullable

### 3.2 POST /api/mealplanner/plan/slot/update
- meal_plan_id: required, non_null
- meal_slot_id: required, non_null
- menu_master_id: optional, nullable
- menu_title_override: optional, nullable
- servings: optional, nullable
- memo: optional, nullable
- changed_reason: optional, nullable
- changed_flag: optional, nullable

rules:
- meal_plan_id and meal_slot_id are always required
- at least one mutable field must be present:
  - menu_master_id
  - menu_title_override
  - servings
  - memo
  - changed_reason
  - changed_flag

### 3.3 POST /api/mealplanner/plan/derive-week
- monthly_meal_plan_id: required, non_null
- target_week_start_date: required, non_null

### 3.4 POST /api/mealplanner/menu/search
- query: optional, nullable
- meal_category: optional, nullable
- budget_tier: optional, nullable
- source_filters: optional, non_null_if_present
- dietary_rules: optional, non_null_if_present
- exclude_ingredients: optional, non_null_if_present
- page: required, non_null
- page_size: required, non_null

rules:
- query can be null or omitted when filter-only search is intended
- page and page_size are required

### 3.5 POST /api/mealplanner/menu/suggest
- meal_date: required, non_null
- meal_category: required, non_null
- budget_tier: required, non_null
- household_size: required, non_null
- pantry_items: optional, non_null_if_present
- dietary_rules: optional, non_null_if_present
- preferred_cuisine_tags: optional, non_null_if_present
- include_user_private_menu: optional, non_null_if_present

### 3.6 POST /api/mealplanner/shopping/generate
- meal_plan_id: required, non_null
- include_pantry_diff: optional, non_null_if_present
- group_by: optional, nullable
- currency_code: optional, nullable

### 3.7 POST /api/mealplanner/shopping/item/check
- shopping_list_id: required, non_null
- shopping_list_item_id: required, non_null
- checked_flag: required, non_null
- checked_by_member_id: optional, nullable

rules:
- free plan では checked_by_member_id omitted 可
- paid / household 共同チェックでは checked_by_member_id 推奨

### 3.8 POST /api/mealplanner/pantry/upsert
- household_id: required, non_null
- items: required, non_null

#### pantry items child fields
- pantry_item_id: optional, nullable
- ingredient_id: optional, nullable
- ingredient_reference_id: optional, nullable
- ingredient_name: required, non_null
- quantity: required, non_null
- unit_code: required, non_null
- expiry_date: optional, nullable
- storage_type: optional, nullable
- opened_flag: optional, nullable
- note: optional, nullable

rules:
- ingredient_id or ingredient_reference_id の少なくとも一方が必要
- ingredient_name は snapshot / fallback 表示のため required

### 3.9 POST /api/mealplanner/user-menu/create
- user_id: required, non_null
- household_id: required, non_null
- menu_title: required, non_null
- meal_category_tags: required, non_null
- cuisine_tags: optional, non_null_if_present
- season_tags: optional, non_null_if_present
- dietary_tags: optional, non_null_if_present
- serving_base: required, non_null
- prep_time_minutes: optional, nullable
- estimated_cost: optional, nullable
- ingredients: required, non_null
- memo: optional, nullable
- visibility_scope: required, non_null

#### ingredients child fields
- ingredient_id: optional, nullable
- ingredient_reference_id: optional, nullable
- ingredient_name: required, non_null
- quantity: required, non_null
- unit_code: required, non_null

rules:
- ingredients must contain at least 1 row
- ingredient_id or ingredient_reference_id の少なくとも一方が必要
- visibility_scope on create is restricted:
  - private
  - household
- lifeos_public is forbidden_on_create

### 3.10 POST /api/mealplanner/user-menu/update
- menu_master_id: required, non_null
- menu_title: optional, nullable
- meal_category_tags: optional, nullable
- cuisine_tags: optional, nullable
- season_tags: optional, nullable
- dietary_tags: optional, nullable
- serving_base: optional, nullable
- prep_time_minutes: optional, nullable
- estimated_cost: optional, nullable
- ingredients: optional, nullable
- memo: optional, nullable
- visibility_scope: optional, nullable

rules:
- at least one mutable field required
- source_type / publication_status are server_managed

### 3.11 POST /api/mealplanner/user-menu/publish-request
- menu_master_id: required, non_null
- requested_visibility_scope: required, non_null
- publish_note: optional, nullable

rules:
- requested_visibility_scope currently allowed:
  - lifeos_public

### 3.12 POST /api/mealplanner/export/csv
- user_id: required, non_null
- household_id: required, non_null
- target_scope: required, non_null
- target_plan_id: required, non_null
- column_profile: required, non_null
- locale_code: optional, nullable
- encoding: optional, nullable

rules:
- encoding default:
  - utf-8
- column_profile must contain at least 1 column

### 3.13 POST /api/mealplanner/history/record
- meal_slot_id: required, non_null
- actual_result_type: required, non_null
- actual_menu_name: optional, nullable
- note: optional, nullable

rules:
- actual_menu_name recommended for:
  - changed
  - eating_out
  - convenience_food
- actual_menu_name may be null for:
  - skipped

### 3.14 POST /api/mealplanner/settings/budget-tier
- household_id: required, non_null
- budget_tier: required, non_null

### 3.15 POST /api/mealplanner/settings/family-profile
- household_id: required, non_null
- household_name: required, non_null
- members: required, non_null

#### member child fields
- member_id: optional, nullable
- nickname: required, non_null
- age_group: required, non_null
- likes: optional, non_null_if_present
- dislikes: optional, non_null_if_present
- allergy_tags: optional, non_null_if_present

## 4. api_response_matrix

### common_response
- success: required, non_null
- data: required when success=true, non_null
- error: required when success=false, non_null

### plan_detail_response.data
- meal_plan_id: required, non_null
- household_id: required, non_null
- plan_horizon: required, non_null
- target_start_date: required, non_null
- target_end_date: required, non_null
- budget_tier: required, non_null
- derived_budget_amount: required, non_null
- currency_code: required, non_null
- slots: required, non_null

#### slot child fields
- meal_slot_id: required, non_null
- meal_date: required, non_null
- meal_category: required, non_null
- menu_master_id: optional, nullable
- menu_reference_id: optional, nullable
- menu_title: required, non_null
- source_type: required, non_null
- publication_status: optional, nullable
- servings: required, non_null
- estimated_cost: optional, nullable
- estimated_kcal: optional, nullable
- memo: optional, nullable
- actual_status: required, non_null
- changed_flag: required, non_null
- changed_reason: optional, nullable

rules:
- menu_master_id and menu_reference_id are mutually contextual
- at least one menu identifier should be present in returned slots

## 5. db_column_matrix

### 5.1 family_profile
- household_id: required, non_null, PK
- household_name: required, non_null
- owner_user_id: required, non_null
- locale_code: required, non_null
- currency_code: required, non_null
- timezone: required, non_null
- is_active: required, non_null, server_default=true
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.2 family_member_preference
- member_id: required, non_null, PK
- household_id: required, non_null, FK
- nickname: required, non_null
- age_group: required, non_null
- likes_json: optional, nullable
- dislikes_json: optional, nullable
- allergy_tags_json: optional, nullable
- dietary_goal: optional, nullable
- is_active: required, non_null, server_default=true
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.3 budget_profile
- budget_profile_id: required, non_null, PK
- household_id: required, non_null, FK, UNIQUE
- budget_tier: required, non_null
- derived_weekly_budget_amount: required, non_null
- derived_monthly_reference_amount: required, non_null
- currency_code: required, non_null
- calculation_basis_version: required, non_null
- strict_mode_flag: required, non_null, server_default=false
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.4 goal_profile
- goal_profile_id: required, non_null, PK
- household_id: required, non_null, FK, UNIQUE
- weight_goal_type: optional, nullable
- salt_attention_flag: required, non_null, server_default=false
- protein_focus_flag: required, non_null, server_default=false
- energy_target_level: optional, nullable
- activity_hint_level: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.5 dietary_rule
- dietary_rule_id: required, non_null, PK
- household_id: required, non_null, FK
- target_member_id: optional, nullable, FK
- rule_type: required, non_null
- rule_value: required, non_null
- severity_level: optional, nullable
- note: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.6 meal_plan
- meal_plan_id: required, non_null, PK
- household_id: required, non_null, FK
- created_by_user_id: required, non_null
- plan_horizon: required, non_null
- parent_meal_plan_id: optional, nullable, FK self
- generation_mode: required, non_null
- target_start_date: required, non_null
- target_end_date: required, non_null
- budget_profile_id: optional, nullable, FK
- goal_profile_id: optional, nullable, FK
- budget_tier: required, non_null
- derived_budget_amount: required, non_null
- currency_code: required, non_null
- plan_status: required, non_null
- memo: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.7 meal_slot
- meal_slot_id: required, non_null, PK
- meal_plan_id: required, non_null, FK
- meal_date: required, non_null
- meal_category: required, non_null
- menu_source_type: required, non_null
- menu_reference_id: required, non_null
- menu_title_snapshot: required, non_null
- servings: required, non_null
- estimated_cost: optional, nullable
- estimated_kcal: optional, nullable
- memo: optional, nullable
- changed_flag: required, non_null, server_default=false
- changed_reason: optional, nullable
- actual_status: required, non_null, server_default=planned
- sort_order: required, non_null
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.8 meal_history
- meal_history_id: required, non_null, PK
- meal_slot_id: required, non_null, FK
- actual_result_type: required, non_null
- actual_menu_name: optional, nullable
- note: optional, nullable
- recorded_by_user_id: required, non_null
- recorded_at: server_managed_or_required_by_server, non_null

### 5.9 meal_template
- meal_template_id: required, non_null, PK
- household_id: required, non_null, FK
- template_name: required, non_null
- plan_horizon: required, non_null
- pattern_type: required, non_null
- visibility_scope: required, non_null
- is_active: required, non_null, server_default=true
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.10 meal_template_slot
- meal_template_slot_id: required, non_null, PK
- meal_template_id: required, non_null, FK
- relative_day_no: required, non_null
- meal_category: required, non_null
- menu_source_type: required, non_null
- menu_reference_id: required, non_null
- menu_title_snapshot: required, non_null
- servings: required, non_null
- memo: optional, nullable
- sort_order: required, non_null

### 5.11 favorite_menu
- favorite_menu_id: required, non_null, PK
- household_id: required, non_null, FK
- menu_source_type: required, non_null
- menu_reference_id: required, non_null
- menu_title_snapshot: required, non_null
- ranking: optional, nullable
- usage_count: required, non_null, server_default=0
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.12 pantry_item
- pantry_item_id: required, non_null, PK
- household_id: required, non_null, FK
- ingredient_reference_id: required, non_null
- ingredient_name_snapshot: required, non_null
- quantity: required, non_null
- unit_code: required, non_null
- expiry_date: optional, nullable
- storage_type: optional, nullable
- opened_flag: required, non_null, server_default=false
- note: optional, nullable
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.13 shopping_list
- shopping_list_id: required, non_null, PK
- meal_plan_id: required, non_null, FK
- household_id: required, non_null, FK
- purchase_status: required, non_null
- estimated_total_cost: optional, nullable
- currency_code: required, non_null
- generated_at: server_managed, non_null
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.14 shopping_list_item
- shopping_list_item_id: required, non_null, PK
- shopping_list_id: required, non_null, FK
- ingredient_reference_id: required, non_null
- ingredient_name_snapshot: required, non_null
- shopping_category: optional, nullable
- shortage_quantity: required, non_null
- unit_code: required, non_null
- estimated_unit_price: optional, nullable
- estimated_line_cost: optional, nullable
- checked_flag: required, non_null, server_default=false
- checked_by_member_id: optional, nullable, FK
- checked_at: optional, nullable
- store_memo: optional, nullable

### 5.15 user_menu
- user_menu_id: required, non_null, PK
- household_id: required, non_null, FK
- created_by_user_id: required, non_null
- menu_title: required, non_null
- meal_category_tags_json: required, non_null
- cuisine_tags_json: optional, nullable
- season_tags_json: optional, nullable
- dietary_tags_json: optional, nullable
- serving_base: required, non_null
- prep_time_minutes: optional, nullable
- estimated_cost: optional, nullable
- memo: optional, nullable
- source_type: required, non_null
- publication_status: required, non_null
- visibility_scope: required, non_null
- lifeos_publish_flag: required, non_null, server_default=false
- created_at: server_managed, non_null
- updated_at: server_managed, non_null

### 5.16 user_menu_ingredient
- user_menu_ingredient_id: required, non_null, PK
- user_menu_id: required, non_null, FK
- ingredient_reference_id: required, non_null
- ingredient_name_snapshot: required, non_null
- quantity: required, non_null
- unit_code: required, non_null
- optional_flag: required, non_null, server_default=false

### 5.17 user_menu_publish_request
- submission_id: required, non_null, PK
- user_menu_id: required, non_null, FK
- requested_visibility_scope: required, non_null
- submission_status: required, non_null
- publish_note: optional, nullable
- review_note: optional, nullable
- requested_at: server_managed, non_null
- reviewed_at: optional, nullable

### 5.18 meal_plan_export_job
- export_job_id: required, non_null, PK
- household_id: required, non_null, FK
- requested_by_user_id: required, non_null
- target_scope: required, non_null
- target_plan_id: required, non_null, FK
- export_format: required, non_null
- column_profile_json: required, non_null
- locale_code: optional, nullable
- encoding: required, non_null, server_default=utf-8
- export_status: required, non_null
- file_name: optional, nullable
- generated_at: optional, nullable
- created_at: server_managed, non_null

## 6. screen_io_required_rules

### weekly_meal_planner input
- meal_plan_id: optional on first generate, required on detail/edit
- household_id: required
- target_start_date: required
- target_end_date: required
- budget_tier: required
- meal_categories: required
- dietary_rules: optional
- pantry_mode: optional

### daily_meal_detail input
- meal_plan_id: required
- meal_date: required
- meal_slot_id: optional for page open, required for slot update/history record

### monthly_meal_planner input
- household_id: required
- target_start_date: required
- target_end_date: required
- budget_tier: required
- event_hints: optional
- seasonal_hints: optional

### user_menu_editor input
- user_id: required on create
- household_id: required on create
- menu_master_id_or_user_menu_id: required on update
- menu_title: required
- ingredients: required on create, optional on partial update

## 7. normalization_guidance
- optional + nullable fields should not be overused for required business meaning
- snapshot fields are required when display continuity matters
- source_type driven reference ids should remain required in persisted rows
- JSON arrays may be nullable in DB but should prefer empty array in API response

## 8. response_shaping_guidance
- DB nullable text fields:
  - API response may return null
- DB nullable JSON arrays:
  - API response should prefer []
- DB nullable numeric estimates:
  - API response may return null when unknown


---

## SOURCE FILE: 120.implementation/010.core/1200100007_MEAL_PLANNER_FIELD_ALIGNMENT_RULES.md

# MealPlanner Field Alignment Rules

## 1. alignment_goal
API, Screen, DB の field semantics を一致させる。

## 2. exact_alignment_rules
- household_id:
  - always required across API / DB / Screen context
- meal_plan_id:
  - required after plan creation
- meal_slot_id:
  - required for update / history record / slot-specific actions
- budget_tier:
  - required and non_null everywhere it appears as a setting
- source_type:
  - required in persisted records and menu result displays
- publication_status:
  - required in persisted user_menu, optional in some read models
- menu_title_snapshot:
  - required in DB storage
- menu_title:
  - required in UI display
- ingredient_name_snapshot:
  - required in DB storage
- ingredient_name:
  - required in UI display and create/update payload fallbacks

## 3. null_vs_empty_array_rules
- likes / dislikes / allergy_tags:
  - DB nullable allowed
  - API response preferred []
- cuisine_tags / season_tags / dietary_tags:
  - DB nullable allowed
  - API response preferred []
- dietary_rules request:
  - omitted allowed
  - if present, prefer []
- pantry_items request:
  - omitted allowed
  - if present, prefer []

## 4. client_rules
- client must not send server_managed timestamps
- client must not send source_type override for cx22073jw_base items
- client must not send publication_status override on create
- client should omit unchanged optional fields on partial update
- client may send null only for nullable fields, not for required fields

## 5. server_rules
- server should reject required=null
- server should reject forbidden_on_create fields
- server should fill defaults for omitted optional fields when policy exists
- server should preserve snapshot text when external catalog changes


---

## SOURCE FILE: 120.implementation/010.core/1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md

# MealPlanner Audit And Delete Policy

## 1. purpose
MealPlanner の audit 列、更新規則、削除規則を exact に固定する。

## 2. common_audit_columns
原則として主要テーブルに以下を持つ
- created_at
- updated_at

必要に応じて追加
- created_by_user_id
- recorded_by_user_id
- generated_at
- requested_at
- reviewed_at
- checked_at

## 3. audit_rules
- created_at:
  - insert 時に server が設定
  - update 時に変更しない
- updated_at:
  - update 時に server が更新
- created_by_user_id:
  - client 指定可だが server 検証必須
- recorded_by_user_id:
  - server が session から補完してよい
- requested_at / reviewed_at / checked_at / generated_at:
  - server_managed

## 4. delete_policy
MealPlanner は原則 hard delete を避ける。
実態に応じて以下を適用する。

### soft_delete_preferred_tables
- family_member_preference:
  - is_active=false 推奨
- meal_template:
  - is_active=false 推奨
- user_menu:
  - 公開/履歴整合のため論理削除推奨
- optional_household_entitlement_cache:
  - 期限管理で上書き推奨

### hard_delete_allowed_tables
- pantry_item:
  - 在庫誤登録は hard delete 可
- shopping_list_item:
  - 再生成前提で hard delete 可
- meal_template_slot:
  - template 再構成時 hard delete 可
- user_menu_ingredient:
  - user_menu 編集時差し替え hard delete 可
- reference_cache tables:
  - cache refresh 時 hard delete 可

### immutable_or_careful_delete_tables
- meal_history:
  - hard delete 原則禁止
- meal_plan_export_job:
  - audit観点で保持推奨
- user_menu_publish_request:
  - publish audit 観点で保持推奨

## 5. foreign_key_delete_actions
### recommend_on_delete_restrict
- family_profile -> meal_plan
- family_profile -> user_menu
- meal_plan -> meal_slot
- meal_slot -> meal_history
- user_menu -> user_menu_publish_request

### recommend_on_delete_set_null
- dietary_rule.target_member_id
- shopping_list_item.checked_by_member_id

### recommend_on_delete_cascade
- meal_template -> meal_template_slot
- user_menu -> user_menu_ingredient
- shopping_list -> shopping_list_item

## 6. update_policy
- PK の update は禁止
- household 境界 FK の付け替えは原則禁止
- snapshot text は参照元変更でも保持
- publication_status は publish flow 完了時のみ変更

## 7. retention_policy
- free / paid の履歴閲覧差はアプリ側制御
- DB では meal_history を短期で削除しない
- export_job も短期で削除しない


---

## SOURCE FILE: 120.implementation/010.core/1200100009_MEAL_PLANNER_PHYSICAL_CONSTRAINT_RULES.md

# MealPlanner Physical Constraint Rules

## 1. purpose
論理設計から物理実装へ移る際の exact 制約方針を固定する。

## 2. not_null_priority_fields
以下は物理実装で NOT NULL を優先する
- household_id
- member_id
- budget_tier
- plan_horizon
- meal_category
- menu_source_type
- menu_reference_id
- menu_title_snapshot
- ingredient_reference_id
- ingredient_name_snapshot
- source_type
- publication_status
- visibility_scope
- export_format
- export_status

## 3. check_constraint_candidates
### budget_tier
- CHECK budget_tier IN ('saving','standard','generous')

### plan_horizon
- CHECK plan_horizon IN ('daily','weekly','monthly')

### meal_category
- CHECK meal_category IN ('breakfast','lunch','dinner','snack')

### source_type
- CHECK source_type IN ('system_seed','cx22073jw_base','user_private','user_published')

### publication_status
- CHECK publication_status IN ('private','draft','review_pending','published','rejected')

### actual_result_type
- CHECK actual_result_type IN ('planned','changed','skipped','eating_out','convenience_food')

### export_status
- CHECK export_status IN ('requested','generated','failed')

## 4. positive_numeric_candidates
- servings > 0
- quantity >= 0
- shortage_quantity >= 0
- derived_weekly_budget_amount >= 0
- derived_monthly_reference_amount >= 0
- derived_budget_amount >= 0
- estimated_cost >= 0 when not null
- estimated_kcal >= 0 when not null
- estimated_unit_price >= 0 when not null
- estimated_line_cost >= 0 when not null
- usage_count >= 0

## 5. date_range_candidates
- meal_plan.target_start_date <= meal_plan.target_end_date
- monthly horizon では target range が月単位に整合することを app / service 層で検証
- weekly horizon では 7日幅整合を app / service 層で検証
- daily horizon では start = end を app / service 層で検証

## 6. cross_field_rules
- meal_slot.changed_reason is nullable, but recommended when changed_flag=true
- user_menu.lifeos_publish_flag=true implies publication_status in ('review_pending','published')
- checked_at should be null when checked_flag=false
- reviewed_at should be null until review completion
- file_name should be null until export_status='generated'

## 7. implementation_notes
- 複雑な cross-field 制約は DB CHECK に入れすぎず service 層で担保してよい
- enum 系は CHECK で強めに固定する
- 外部正本参照は FK でなく logical reference を優先する


---

## SOURCE FILE: 120.implementation/1200000_IMPLEMENTATION_INDEX.md

# Implementation Index

## purpose
MealPlanner の実装境界、暫定実装方針を定義する

## files
- 1200001_IMPLEMENTATION_OVERVIEW.md

## notes
- この index は Implementation の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 120.implementation/1200001_IMPLEMENTATION_OVERVIEW.md

# Implementation Overview

## role
MealPlanner の実装境界、暫定実装方針を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 130.development/010.core/1300100000_CORE_INDEX.md

# Development Core Index

## purpose
MealPlanner の開発順序を定義する

## files
- 1300100001_CORE_OVERVIEW.md

## notes
- この index は Development Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 130.development/010.core/1300100001_CORE_OVERVIEW.md

# Development Core Overview

## role
MealPlanner の開発順序を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 130.development/010.core/1300100002_MEAL_PLANNER_DEVELOPMENT_PLAN.md

# MealPlanner Development Plan

## current_status
- 設計骨格作成済み
- 課金設計確定済み
- 提案粒度確定済み
- CSV出力方針確定済み
- CX22073JW 参照方針確定済み

## next_steps
- API request / response exact payload
- DB logical schema
- 画面別 exact I/O
- 公開フロー exact boundary


---

## SOURCE FILE: 130.development/010.core/1300100003_MEAL_PLANNER_DESIGN_CONSOLIDATION_NOTE.md

# MealPlanner Design Consolidation Note

## 1. current_position
MealPlanner は実装前設計確定フェーズにある。

## 2. fixed_in_this_round
- state transition design
- authority boundary design
- CX22073JW boundary final
- screen event action matrix

## 3. intentionally_not_doing_now
- DDL
- SQL
- 物理実装
- API 実装コード
- migration
- runtime wiring

## 4. next_possible_design_steps
- 画面文言 exact 固定
- バリデーション文言 exact 固定
- UI component 分解
- CSV 列 exact 定義の最終固定
- publish flow 返却状態の詳細化

## 5. policy
実装はまだ行わず、設計のズレを減らすための固定を優先する。


---

## SOURCE FILE: 130.development/010.core/1300100004_MEAL_PLANNER_DESIGN_BUNDLE_02_NOTE.md

# MealPlanner Design Bundle 02 Note

## 1. purpose
設計確定まとめ出し その2 の記録。

## 2. fixed_in_this_round
- UI copy exact
- validation copy exact
- CSV exact definition
- UI component decomposition

## 3. still_not_doing
- 実装
- DDL
- SQL
- component code
- API code

## 4. next_possible_design_steps
- 画面単位ワイヤー責務整理
- component ごとの props 設計
- CSV profile の無料/有料差最終固定
- 公開済み献立の版管理方針整理
- AIチャットサポート範囲のFAQ設計

## 5. phase_note
現在は実装準備前の設計確定フェーズを継続中。


---

## SOURCE FILE: 130.development/010.core/1300100005_MEAL_PLANNER_DESIGN_STATUS_SUMMARY.md

# MealPlanner Design Status Summary

## 1. current_status
MealPlanner は、実装前の設計確定をかなり進めた状態にある。

## 2. fixed_major_items
- アプリの位置づけ
- 無料 / 有料 500円
- AIチャットサポートのみ
- 日 / 週 / 月提案
- budget_tier
- CSV 出力
- user_menu 追加
- LifeOS 公開申請
- CX22073JW 境界
- API exact payload
- DB logical schema
- 画面 exact I/O
- required / optional / nullable
- index / unique / FK / audit 方針
- 状態遷移
- 権限境界
- UI copy
- validation copy
- CSV free / paid 差
- published menu 版管理方針

## 3. implementation_readiness_view
- business_readiness:
  - high
- design_readiness:
  - high
- implementation_readiness:
  - medium_high

## 4. still_open_but_not_blocking
- favorite / template の version 追従方針詳細
- 公開済み献立の quality score 利用詳細
- notification settings API 詳細
- FAQ のストア返金案内導線詳細
- component props exact

## 5. intentionally_not_done
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring

## 6. next_possible_design_steps
- component props 設計
- favorite / template の version 追従詳細
- 公開済み献立の検索並び順ルール
- AIチャット FAQ の store / billing 導線詳細

## 7. phase_statement
現在は「実装準備前の設計確定フェーズ」。
実装はまだ開始しない。


---

## SOURCE FILE: 130.development/010.core/1300100006_MEAL_PLANNER_DESIGN_BUNDLE_04_NOTE.md

# MealPlanner Design Bundle 04 Note

## 1. fixed_in_this_round
- component props design
- favorite/template version follow policy
- published menu search sort policy
- ai chat billing and store boundary

## 2. current_design_view
MealPlanner は、実装前設計として主要論点がかなり固定された状態にある。

## 3. remaining_small_items
- notification settings API exact
- component event payload detail
- published menu quality score detailed usage
- history retention exact day policy final wording

## 4. still_not_doing
- 実装
- DDL
- SQL
- migration
- runtime wiring

## 5. phase_statement
実装はまだ開始しない。


---

## SOURCE FILE: 130.development/010.core/1300100007_MEAL_PLANNER_DESIGN_BUNDLE_05_NOTE.md

# MealPlanner Design Bundle 05 Note

## 1. fixed_in_this_round
- notification settings API exact
- component event payload detail
- published menu quality score policy
- history retention final policy

## 2. current_design_view
MealPlanner は、実装前の主要設計論点がほぼ固定できた状態にある。

## 3. remaining_small_items
- notification settings DB save shape
- component props required/optional detail per framework
- tiny copy adjustments
- final integrated summary refresh

## 4. still_not_doing
- 実装
- DDL
- SQL
- migration
- runtime wiring

## 5. phase_statement
実装はまだ開始しない。


---

## SOURCE FILE: 130.development/010.core/1300100009_MEAL_PLANNER_INTEGRATED_REFRESH_NOTE.md

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


---

## SOURCE FILE: 130.development/010.core/1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md

# MealPlanner Final Design Snapshot

## 1. purpose
ここまでの設計確定内容を短く棚卸しする。

## 2. fixed_now
- schema: life
- pricing:
  - free
  - paid 500円 / 月
- support:
  - ai_chat_only
- plan horizons:
  - daily
  - weekly
  - monthly
- csv:
  - both free and paid
- user menu:
  - create / edit / publish request
- cx22073jw boundary:
  - fixed
- api exact payload:
  - fixed
- db logical schema:
  - fixed
- screen exact io:
  - fixed
- required / optional / nullable:
  - fixed
- index / unique / fk / audit policy:
  - fixed
- state transitions:
  - fixed
- authority boundaries:
  - fixed
- ui copy / validation copy:
  - fixed
- csv columns:
  - fixed
- ui component decomposition:
  - fixed
- published menu versioning:
  - fixed
- history retention:
  - fixed
- notification settings api / logical shape:
  - fixed

## 3. remaining_minor_items
- integrated note の更なる棚卸し
- framework 別の props 書き起こし
- 実装前の最終見直し

## 4. not_doing_yet
- implementation
- ddl
- sql
- migration
- runtime wiring

## 5. phase_statement
現在は実装前の設計確定フェーズ。


---

## SOURCE FILE: 130.development/010.core/1300100011_MEAL_PLANNER_FINAL_REVIEW_CHECKLIST.md

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


---

## SOURCE FILE: 130.development/010.core/1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md

# MealPlanner Implementation Not Yet Boundary

## 1. purpose
今は設計フェーズであり、まだ実装に入らないことを明確化する。

## 2. not_yet_items
- DDL
- SQL
- migration
- API server code
- UI code
- DB apply 手順
- edge function 実装
- scheduler 実装
- auth wiring
- background sync wiring

## 3. allowed_now
- 設計文書更新
- 境界固定
- 状態遷移整理
- API / DB / UI の意味合わせ
- CSV仕様固定
- policy 固定
- integration contract 整理

## 4. why_not_yet
- 先に設計のズレを減らすため
- 公開境界、課金境界、知識正本境界が大きいアプリだから
- いきなり SQL に落とすと手戻りが大きくなるため

## 5. move_to_implementation_condition
- 主要設計の棚卸し完了
- integrated document 反映完了
- review checklist で大きな穴なし
- Boss 判断で実装フェーズ移行

## 6. current_phase_statement
現在は「実装前の設計確定フェーズ」。


---

## SOURCE FILE: 130.development/010.core/1300100013_MEAL_PLANNER_NEXT_DESIGN_CANDIDATES.md

# MealPlanner Next Design Candidates

## 1. purpose
この後まだ設計を深掘りする場合の候補を整理する。

## 2. candidates
- integrated document の全文棚卸し
- overview 群と詳細文書の整合点検
- favorite / template の user interaction 詳細
- publish reject 後の再編集 UX 詳細
- notification settings の画面文言微調整
- search result card / suggestion card の表示粒度固定
- CSV 列 profile の locale 別見出し整理
- AIチャット FAQ の store 導線詳細

## 3. note
これ以降は大変更というより、設計の磨き込み寄り。


---

## SOURCE FILE: 130.development/010.core/1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md

# MealPlanner Design Consistency Matrix

## 1. purpose
主要設計論点が、各文書で矛盾なく扱われているかを点検するためのマトリクス。

## 2. matrix

### schema_is_life
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 1200100004_MEAL_PLANNER_DB_IMPLEMENTATION_NOTES.md
- status:
  - fixed
- check_point:
  - app_meal_planner 前提が残っていないか確認する

### pricing_free_paid_500
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100002_MEAL_PLANNER_POLICY.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- status:
  - fixed
- check_point:
  - plus / family 分離案が残っていないか確認する

### support_ai_chat_only
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
  - 0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md
- status:
  - fixed
- check_point:
  - 有人サポート前提の文言が残っていないか確認する

### plan_horizon_daily_weekly_monthly
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- status:
  - fixed
- check_point:
  - 週のみ前提になっている箇所がないか確認する

### budget_tier_saving_standard_generous
- source_of_truth:
  - 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- status:
  - fixed
- check_point:
  - 金額直入力主方式の記述が残っていないか確認する

### csv_available_both_free_paid
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
  - 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
- status:
  - fixed
- check_point:
  - free で CSV 不可の記述が残っていないか確認する

### csv_optional_columns_paid_only
- source_of_truth:
  - 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
  - 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
- status:
  - fixed
- check_point:
  - optional columns の無料公開が混ざっていないか確認する

### user_menu_private_first_publish_later
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
  - 0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md
- status:
  - fixed
- check_point:
  - private -> published 直接確定の記述がないか確認する

### cx22073jw_primary_knowledge_boundary
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0600200002_CX22073JW_INTEGRATION.md
  - 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- status:
  - fixed
- check_point:
  - MealPlanner 側が基礎知識正本になっていないか確認する

### favorite_template_snapshot_first
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
- status:
  - fixed
- check_point:
  - 自動最新版追従が既定になっていないか確認する

### history_retention_ui_control_not_delete
- source_of_truth:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
  - 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md
- status:
  - fixed
- check_point:
  - free 向け短期物理削除の記述がないか確認する

### quality_score_ranking_helper_only
- source_of_truth:
  - 0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md
  - 0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md
- status:
  - fixed
- check_point:
  - quality score が公開可否決定権になっていないか確認する

### notification_user_scope_primary
- source_of_truth:
  - 0600100003_NOTIFICATION_SETTINGS_API_EXACT.md
  - 0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md
- status:
  - fixed
- check_point:
  - household 正本と書いていないか確認する

## 3. review_outcome_target
- fixed 項目に明確な矛盾がないこと
- open 項目は将来候補に留まり、現時点の設計を壊していないこと


---

## SOURCE FILE: 130.development/010.core/1300100015_MEAL_PLANNER_DEFERRED_ITEMS_LEDGER.md

# MealPlanner Deferred Items Ledger

## 1. purpose
今は実装前設計フェーズのため、あえて後回しにしている項目を整理する。

## 2. deferred_now_but_known

### implementation_side
- DDL
- SQL
- migration
- API server implementation
- UI implementation
- notification delivery implementation
- sync scheduler
- auth wiring
- background job design

### design_refinement_side
- framework 別 component props 書き換え
- deep link 詳細
- animation / transition 詳細
- notification OS permission flow
- favorite/template 最新版候補提示 UI の細部
- published menu version 履歴閲覧 UI
- search card の quality badge 詳細
- CSV locale 見出しの全言語定義

### cross_system_side
- LifeOS publish 審査内部状態
- CX22073JW 側の物理 schema
- MoneyPlanner / BodyMetrics / TrainingCoach 側の exact transport
- store refund flow の詳説

## 3. defer_reason_patterns
- まだ実装に入らないため
- 他システム責務のため
- 現時点で business 決定を必要としないため
- UI 微調整のため
- 物理設計に寄りすぎるため

## 4. safe_to_defer_judgement
現時点で deferred item は、
MealPlanner の主要 business / data / api / ui / boundary を壊さない範囲に収まっている。

## 5. when_to_reopen
- 実装フェーズ移行時
- 別チャットの共通部品正式採用時
- LifeOS publish 側の contract 詳細が固まった時
- framework 決定時


---

## SOURCE FILE: 130.development/010.core/1300100016_MEAL_PLANNER_PHASE_CLOSEOUT_NOTE.md

# MealPlanner Phase Closeout Note

## 1. purpose
実装前の設計確定フェーズを閉じる前提で、現在の到達点を明確化する。

## 2. reached_state
- major business rules fixed
- major boundaries fixed
- api/model/ui/policy documents created
- overview and integrated documents refreshed
- deferred items separated from fixed items

## 3. can_say_now
MealPlanner は、実装前の設計確定フェーズとしてかなり整った状態にある。

## 4. next_phase_requires_boss_decision
実装へ進むか、さらに設計を磨くかは Boss 判断で切り替える。

## 5. current_rule
- 実装はまだしない
- 設計の棚卸しと整理を優先する


---

## SOURCE FILE: 130.development/010.core/1300100017_MEAL_PLANNER_DESIGN_FREEZE_CANDIDATE_NOTE.md

# MealPlanner Design Freeze Candidate Note

## 1. purpose
実装前の設計凍結候補として、どこまで固まっているかを整理する。

## 2. freeze_candidate_scope
以下は freeze candidate とみなせる

### business
- アプリ位置づけ
- 無料 / 有料500円
- AIチャットのみサポート
- 日 / 週 / 月提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界

### model
- life schema
- 主要 entity 群
- source_type / publication_status / plan_horizon / budget_tier
- snapshot 方針
- notification_preference の logical shape

### api
- 主要 request / response payload
- notification settings API
- publish request API
- export CSV API

### ui
- 主要画面一覧
- 画面 exact I/O
- free / paid gating
- UI copy
- validation copy
- CSV column policy
- component decomposition
- component props / event payload

### policy
- published menu versioning
- favorite / template snapshot-first
- published menu search / quality score
- history retention
- AIチャット / ストア境界

## 3. not_freezing_yet
- framework 別 component 定義
- DDL / SQL / migration
- 実装コード
- deep link / animation
- notification 実配送方式
- 他アプリ側 transport details

## 4. freeze_meaning
- いま大きく意味を変えない
- 小さな表現調整はありうる
- 実装前の大きな手戻りを防ぐための freeze candidate

## 5. recommended_judgement
- Boss がよければ、ここを設計 freeze candidate として扱ってよい


---

## SOURCE FILE: 130.development/010.core/1300100018_MEAL_PLANNER_FINAL_ACTION_LEDGER.md

# MealPlanner Final Action Ledger

## 1. purpose
実装前の最終レビューで見るべき action を整理する。

## 2. action_items_now

### action_01
- title:
  - integrated document との整合点検
- status:
  - pending
- goal:
  - 最新方針が 00_MEAL_PLANNER_INTEGRATED.md に十分反映されているか確認

### action_02
- title:
  - overview 群の軽い整合点検
- status:
  - pending
- goal:
  - architecture / model / operations / policy / interface の summary が矛盾していないか確認

### action_03
- title:
  - old wording の残存確認
- status:
  - pending
- goal:
  - plus / family 分離案や app_meal_planner など旧表現が残っていないか確認

### action_04
- title:
  - free / paid CSV 差の最終確認
- status:
  - pending
- goal:
  - free でも CSV 出力できる方針が全体で統一されているか確認

### action_05
- title:
  - CX22073JW 境界の最終確認
- status:
  - pending
- goal:
  - MealPlanner 側が基礎知識正本化していないか確認

### action_06
- title:
  - implementation not yet 境界の確認
- status:
  - pending
- goal:
  - DDL / SQL / code が混入していないか確認

## 3. action_items_later

### later_01
- title:
  - framework 決定後の props 落とし込み
- reopen_when:
  - 実装フェーズ移行時

### later_02
- title:
  - notification delivery 実装設計
- reopen_when:
  - 実装フェーズ移行時

### later_03
- title:
  - publish flow transport 詳細
- reopen_when:
  - LifeOS 側 contract 詳細化時

## 4. close_condition
- now actions を一通り見て大きな矛盾がなければ、
  実装前設計フェーズとしてはかなり閉じられる


---

## SOURCE FILE: 130.development/010.core/1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md

# MealPlanner Pre Implementation Acceptance Gate

## 1. purpose
実装フェーズへ移る前に、最低限通過したい gate を明示する。

## 2. gate_items

### gate_01_business
- アプリの価値が明確
- 課金設計が明確
- support 方針が明確

### gate_02_boundary
- life schema 統一
- CX22073JW 境界明確
- LifeOS Publish 境界明確
- private / household / lifeos_public 明確

### gate_03_model_api_ui
- entity 固定済み
- API payload 固定済み
- screen exact I/O 固定済み
- component 分解済み

### gate_04_policy
- versioning 固定済み
- retention 固定済み
- csv policy 固定済み
- quality score policy 固定済み

### gate_05_not_yet_respected
- DDLなし
- SQLなし
- 実装コードなし
- migrationなし

## 3. pass_condition
- 重大な意味矛盾なし
- 主要未決が business blocking でない
- Boss が設計として受け入れ可能と判断できる状態

## 4. note
- これは production gate ではなく、実装前設計 gate である


---

## SOURCE FILE: 130.development/010.core/1300100020_MEAL_PLANNER_DESIGN_FREEZE_READINESS_REPORT.md

# MealPlanner Design Freeze Readiness Report

## 1. purpose
MealPlanner を設計 freeze candidate とみなせるかを評価する。

## 2. summary
- business_readiness:
  - high
- boundary_readiness:
  - high
- api_readiness:
  - high
- model_readiness:
  - high
- ui_readiness:
  - high
- implementation_readiness:
  - medium_high
- overall_freeze_candidate:
  - yes

## 3. why_yes
- 無料 / 有料500円 が固定されている
- AIチャットのみサポートが固定されている
- 日 / 週 / 月提案が固定されている
- CSV出力方針が固定されている
- user_menu と公開申請境界が固定されている
- CX22073JW 正本境界が固定されている
- API / DB logical / UI / policy が一通りそろっている
- 実装まだ禁止の境界が明文化されている

## 4. what_is_not_frozen
- DDL
- SQL
- migration
- 実装コード
- notification delivery 実装方式
- framework 別 props の書き換え
- animation / deep link 詳細

## 5. residual_risks
- old wording が一部文書に残る可能性
- integrated doc と下位文書の更新ずれ
- plus / family 分離案の名残確認
- app_meal_planner など旧 schema 名残確認

## 6. recommended_freeze_scope
freeze candidate として扱う範囲:
- business rules
- boundary rules
- API exact payload
- DB logical schema
- state transitions
- authority / visibility policy
- csv policy
- versioning policy
- retention policy
- ai chat support boundary

## 7. recommended_next_action
- cross-document audit を1回行う
- old wording / old schema naming を潰す
- integrated doc と overview の差分を確認する
- その後、Boss 判断で freeze candidate 化

## 8. judgement_note
現時点で MealPlanner は、
「実装前の設計 freeze candidate」として十分に扱える水準に近い。


---

## SOURCE FILE: 130.development/010.core/1300100021_MEAL_PLANNER_FINAL_REVIEW_ACTION_SCRIPT.md

# MealPlanner Final Review Action Script

## 1. purpose
最終レビュー時に、どういう順番で何を確認するかを短くまとめる。

## 2. action_script

### step_01
- read:
  - 00_MEAL_PLANNER_INTEGRATED.md
- confirm:
  - 位置づけ
  - 無料 / 有料500円
  - AIチャットのみ
  - 日 / 週 / 月
  - schema life

### step_02
- read:
  - 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- confirm:
  - 主要論点が fixed になっているか

### step_03
- read:
  - 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- confirm:
  - 主要要件の行き先が揃っているか

### step_04
- read:
  - 9000100007_MEAL_PLANNER_CROSS_DOCUMENT_AUDIT_PLAYBOOK.md
- confirm:
  - old wording / old schema / old pricing の残りがないか

### step_05
- read:
  - 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
- confirm:
  - 実装前 gate を通せそうか

### step_06
- read:
  - 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
- confirm:
  - 実装文書が混ざっていないか

## 3. finish_condition
- major contradiction なし
- wording drift なし
- implementation leak なし
- Boss が freeze candidate とみなせる

## 4. next_after_finish
- さらに設計を磨く
or
- Boss 判断で実装前設計フェーズを閉じる


---

## SOURCE FILE: 130.development/010.core/1300100022_MEAL_PLANNER_CHANGE_IMPACT_CHECKLIST.md

# MealPlanner Change Impact Checklist

## 1. purpose
設計変更時に、どこへ影響が出るかを漏れなく見るためのチェックリスト。

## 2. usage
変更案が出たら、以下の観点を順に確認する。

## 3. impact_axes

### axis_01_business
- 価値提案が変わるか
- free / paid の差が変わるか
- AIチャットのみサポート方針に影響するか

### axis_02_boundary
- life schema に影響するか
- CX22073JW 境界に影響するか
- LifeOS Publish 境界に影響するか
- private / household / lifeos_public に影響するか

### axis_03_model
- entity 追加 / 削除 / 意味変更が必要か
- enum 変更が必要か
- snapshot 方針に影響するか

### axis_04_api
- request/response field 追加が必要か
- required / optional / nullable が変わるか
- screen I/O へ波及するか

### axis_05_ui
- 画面追加が必要か
- gating 変更が必要か
- copy / validation copy が変わるか
- component props / event payload が変わるか

### axis_06_policy
- versioning に影響するか
- retention に影響するか
- csv policy に影響するか
- quality score policy に影響するか

### axis_07_operations
- AIチャット FAQ を直す必要があるか
- ストア案内境界を直す必要があるか

## 4. mandatory_documents_to_recheck
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- related exact payload / model / interface docs

## 5. risk_labels
- low:
  - wording only
- medium:
  - UI / API / policy のどれかに影響
- high:
  - boundary / pricing / schema / source_of_truth に影響

## 6. note
変更規模が medium 以上なら、integrated + detail + consistency の3点を必ず見直す。


---

## SOURCE FILE: 130.development/010.core/1300100023_MEAL_PLANNER_FINAL_ALIGNMENT_ACTIONS.md

# MealPlanner Final Alignment Actions

## 1. purpose
freeze candidate 化の前に、最後に揃えるべき action を短くまとめる。

## 2. actions

### action_01
- title:
  - integrated と detail の wording drift 確認
- done_when:
  - old wording なし

### action_02
- title:
  - overview と detail の意味差確認
- done_when:
  - overview が detail と矛盾しない

### action_03
- title:
  - free / paid / support 文言の最終統一
- done_when:
  - 無料 / 有料500円 / AIチャットのみ で統一

### action_04
- title:
  - schema naming の最終統一
- done_when:
  - life 以外の旧命名なし

### action_05
- title:
  - implementation leak の最終確認
- done_when:
  - DDL / SQL / code 混入なし

## 3. exit_statement
この action 群に大きな問題がなければ、
MealPlanner は実装前設計 freeze candidate として十分に整理されたとみなせる。


---

## SOURCE FILE: 130.development/010.core/1300100024_MEAL_PLANNER_REVIEW_SIGNOFF_TEMPLATE.md

# MealPlanner Review Signoff Template

## 1. purpose
設計レビュー完了時の確認メモ雛形。

## 2. template

### review_scope
- integrated
- api
- model
- ui
- policy
- integration
- meta

### reviewer
- Boss

### review_date
- YYYY-MM-DD

### signoff_summary
- business meaning:
  - ok / needs_change
- boundary:
  - ok / needs_change
- api/model consistency:
  - ok / needs_change
- ui/policy consistency:
  - ok / needs_change
- implementation_not_yet boundary:
  - ok / needs_change

### key_findings
- finding_01:
  - ...
- finding_02:
  - ...
- finding_03:
  - ...

### required_changes_before_freeze
- none
or
- change_01
- change_02

### freeze_candidate_judgement
- yes / no

### note
- 実装はまだ開始しない


---

## SOURCE FILE: 130.development/010.core/1300100025_MEAL_PLANNER_FREEZE_DECLARATION_DRAFT.md

# MealPlanner Freeze Declaration Draft

## 1. purpose
MealPlanner を実装前の設計 freeze candidate として扱うための宣言草案。

## 2. draft
MealPlanner は、以下の主要論点について実装前設計として固定済みとみなす。

- schema は life
- 課金は 無料 / 有料500円
- サポートは AIチャットのみ
- 日 / 週 / 月の献立提案を扱う
- 予算入力は 節約 / 普通 / 多め
- CSV は free / paid とも利用可
- user_menu は private 起点で、LifeOS 公開申請を通じて公開可能
- 基礎知識の正本は CX22073JW 前提
- published menu は直接上書きしない
- favorite / template は snapshot-first
- 履歴は DB保持し、free / paid 差は閲覧範囲で制御する
- 通知設定の正本は user 単位
- 実装はまだ開始しない

## 3. freeze_meaning
- 大きな business rule は動かさない
- 小さな文言調整はありうる
- 実装前の手戻りを減らすための freeze candidate とする

## 4. not_included
- DDL
- SQL
- migration
- 実装コード
- runtime wiring

## 5. activation_condition
- final review checklist を通す
- change impact 観点で大きな抜けがない
- Boss 判断で freeze candidate 化する


---

## SOURCE FILE: 130.development/010.core/1300100026_MEAL_PLANNER_POST_FREEZE_CHANGE_RULE.md

# MealPlanner Post Freeze Change Rule

## 1. purpose
freeze candidate 後に設計変更が必要になった時の扱いを決める。

## 2. rule_summary
- freeze 後も変更禁止ではない
- ただし変更は軽く扱わない
- major / medium / low の3段階で扱う

## 3. change_levels

### low
examples:
- copy 微修正
- overview の言い回し整理
- typo 修正
required_action:
- detail との整合確認だけでよい

### medium
examples:
- UI flow 微修正
- CSV optional columns の見直し
- notification field の軽微修正
required_action:
- integrated
- related detail docs
- consistency matrix
- traceability matrix
を見直す

### major
examples:
- pricing 変更
- schema 変更
- CX22073JW 境界変更
- support mode 変更
- plan_horizon 変更
- publish policy 変更
required_action:
- cross-document audit 再実施
- freeze candidate 再評価
- Boss 判断で再承認

## 4. forbidden_shortcuts
- integrated だけ直して終える
- detail を更新せずに policy を変える
- traceability を無視する
- implementation都合で rule を黙って変える

## 5. review_rule_after_change
- medium 以上は review signoff template を使う
- major は freeze declaration draft を見直す

## 6. note
freeze candidate は停止ではなく、設計変更のハードルを正しく上げるためのもの


---

## SOURCE FILE: 130.development/010.core/1300100027_MEAL_PLANNER_FREEZE_EXECUTION_CHECKLIST.md

# MealPlanner Freeze Execution Checklist

## 1. purpose
MealPlanner を実装前の設計 freeze candidate として扱う前に、
最後に確認する順番を固定する。

## 2. execution_order

### step_01_integrated_check
confirm:
- 00_MEAL_PLANNER_INTEGRATED.md が最新方針を要約している
- schema が life になっている
- 無料 / 有料500円 が明記されている
- AIチャットのみサポートが明記されている
- 日 / 週 / 月提案が明記されている

### step_02_boundary_check
confirm:
- CX22073JW 正本境界が明記されている
- LifeOS Publish 境界が明記されている
- private / household / lifeos_public が混同されていない

### step_03_exact_check
confirm:
- API exact payload がある
- DB logical schema がある
- screen exact I/O がある
- required / optional / nullable がある
- index / unique / FK / audit policy がある

### step_04_policy_check
confirm:
- published menu versioning がある
- favorite / template snapshot-first がある
- CSV free / paid 差がある
- history retention がある
- notification settings policy がある

### step_05_ui_check
confirm:
- UI copy がある
- validation copy がある
- CSV columns がある
- component decomposition がある
- props / event payload がある

### step_06_not_yet_check
confirm:
- DDL がない
- SQL がない
- migration がない
- 実装コードがない
- runtime wiring がない

## 3. pass_condition
- major contradiction なし
- old wording なし
- implementation leak なし
- Boss が freeze candidate として扱ってよいと判断できる

## 4. result_labels
- pass
- pass_with_minor_wording_fix
- hold_for_major_revision


---

## SOURCE FILE: 130.development/010.core/1300100028_MEAL_PLANNER_PRE_IMPLEMENTATION_BRIDGE_NOTE.md

# MealPlanner Pre Implementation Bridge Note

## 1. purpose
今は実装しない前提のまま、
将来実装へ橋渡しする時に何を入口にするかを整理する。

## 2. bridge_principle
- いまは設計確定を優先する
- 実装へ移る時は detail docs を入口にする
- integrated doc だけで実装へ進まない

## 3. future_implementation_entry_points

### api_start_point
- 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- 1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md

### model_start_point
- 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- 0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md
- 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md

### ui_start_point
- 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- 0900200008_MEAL_PLANNER_UI_COMPONENT_DECOMPOSITION.md
- 0900200009_MEAL_PLANNER_COMPONENT_PROPS_DESIGN.md
- 0900200010_MEAL_PLANNER_COMPONENT_EVENT_PAYLOAD_DETAIL.md

### policy_start_point
- 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
- 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md

## 4. not_to_do_now
- DDL 化
- migration 化
- endpoint 実装
- UI 実装
- integration wiring

## 5. move_condition
- Boss が実装フェーズ移行を判断した時
- freeze candidate として大きな矛盾がない時


---

## SOURCE FILE: 130.development/010.core/1300100029_MEAL_PLANNER_DESIGN_FREEZE_READY_MESSAGE.md

# MealPlanner Design Freeze Ready Message

## 1. purpose
freeze candidate 段階に入ったことを簡潔に共有するための文面草案。

## 2. draft_message
MealPlanner は、実装前の設計 freeze candidate 段階にかなり近い状態です。

固定済みの主な内容:
- schema は life
- 無料 / 有料500円
- サポートは AIチャットのみ
- 日 / 週 / 月の献立提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界
- API / DB logical / UI / policy の主要設計

まだ含めないもの:
- DDL
- SQL
- migration
- 実装コード

次は、最終棚卸しのうえで freeze candidate として扱うかを判断する段階です。


---

## SOURCE FILE: 130.development/010.core/1300100030_MEAL_PLANNER_FINAL_CLOSE_PACKAGE.md

# MealPlanner Final Close Package

## 1. purpose
MealPlanner の実装前設計フェーズを、どこまで閉じたかをまとめる最終パッケージ文書。

## 2. reached_scope
MealPlanner では、以下が設計として固定済みである。

### business
- アプリ位置づけ
- 無料 / 有料500円
- AIチャットのみサポート
- 日 / 週 / 月提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界

### data_and_api
- life schema
- 主要 entity 群
- API exact payload
- screen exact I/O
- required / optional / nullable
- index / unique / FK / audit 方針
- notification settings API / logical shape

### policy_and_runtime
- 状態遷移
- 権限境界
- published menu versioning
- favorite / template snapshot-first
- history retention
- CSV free / paid 差
- quality score 利用方針

### interface
- UI copy
- validation copy
- CSV exact columns
- component decomposition
- component props
- event payload

### governance
- traceability
- consistency matrix
- freeze candidate documents
- review / signoff / post-freeze rules

## 3. not_in_scope_yet
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring
- background sync 実装
- notification delivery 実装

## 4. current_phase_statement
現在は「実装前の設計確定フェーズ」。
MealPlanner は freeze candidate として扱える水準にかなり近い。

## 5. recommended_use
- Boss review 用の最終入口
- freeze candidate 判断用
- 将来の実装移行前の棚卸し用


---

## SOURCE FILE: 130.development/010.core/1300100031_MEAL_PLANNER_FREEZE_DECISION_GUIDE.md

# MealPlanner Freeze Decision Guide

## 1. purpose
Boss が MealPlanner を freeze candidate として扱うか判断するための簡潔ガイド。

## 2. decide_yes_when
以下がすべて満たされる時、freeze candidate として扱ってよい。

- schema が life で統一
- pricing が 無料 / 有料500円 で統一
- support が AIチャットのみ で統一
- CX22073JW 境界が明確
- API / model / UI / policy が major contradiction なく揃っている
- CSV free / paid 差が明確
- user_menu / publish / versioning が明確
- 実装まだ禁止の境界が守られている

## 3. decide_hold_when
以下がある場合は freeze を保留する。

- old wording が多数残る
- integrated と detail が食い違う
- plus / family 分離案が残る
- schema の旧名残が残る
- private / public 境界が崩れている
- 実装コードや SQL が混入している

## 4. decide_after_fix_when
軽微修正後に freeze でよいもの:
- wording drift
- overview の表現ずれ
- integrated 文書の反映漏れ
- minor copy inconsistency

## 5. note
freeze candidate は「もう変更しない」ではなく、
大きな rule を軽く動かさないための基準である。


---

## SOURCE FILE: 130.development/010.core/1300100032_MEAL_PLANNER_HANDOFF_NOTE_FOR_NEXT_PHASE.md

# MealPlanner Handoff Note For Next Phase

## 1. purpose
次フェーズへ引き継ぐ時の最小メモ。

## 2. handoff_summary
- app_name:
  - MealPlanner
- schema:
  - life
- pricing:
  - 無料 / 有料500円
- support:
  - AIチャットのみ
- main planning horizons:
  - daily / weekly / monthly
- source_of_truth:
  - 基礎知識 / 公開知識 / 辞書知識は CX22073JW 前提
- user_menu:
  - private 起点
  - LifeOS 公開申請経由
- csv:
  - free / paid とも利用可
  - paid は optional columns 可
- history:
  - DB保持
  - free は直近30日
- versioning:
  - published menu 直接上書き禁止
  - snapshot-first

## 3. do_not_assume
- DDL があるとは思わない
- SQL があるとは思わない
- 実装コードがあるとは思わない
- notification delivery 実装があるとは思わない

## 4. next_phase_entry_points
- API:
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- model:
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- UI:
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- policy:
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- review:
  - 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md


---

## SOURCE FILE: 130.development/010.core/1300100034_MEAL_PLANNER_DESIGN_FREEZE_DECLARATION.md

# MealPlanner Design Freeze Declaration

## 1. declaration
MealPlanner は、**実装前の設計 Freeze** 状態として扱う。

## 2. freeze_date
- 2026-04-15

## 3. freeze_timestamp
- 2026-04-15 05:14:44 +0900

## 4. freeze_scope
以下を Freeze 対象とする。

### business
- アプリ位置づけ
- 無料 / 有料500円
- サポートは AIチャットのみ
- 日 / 週 / 月提案
- budget_tier
- CSV出力
- user_menu 追加 / 公開申請
- CX22073JW 正本境界

### data_and_api
- schema は life
- 主要 entity 群
- API exact payload
- screen exact I/O
- required / optional / nullable
- index / unique / FK / audit 方針
- notification settings API / logical shape

### policy_and_runtime
- 状態遷移
- 権限境界
- published menu versioning
- favorite / template snapshot-first
- history retention
- CSV free / paid 差
- quality score 利用方針

### interface
- UI copy
- validation copy
- CSV exact columns
- component decomposition
- component props
- component event payload

### governance
- traceability
- consistency matrix
- freeze candidate documents
- post-freeze change rule

## 5. explicitly_not_included
- DDL
- SQL
- migration
- API 実装コード
- UI 実装コード
- runtime wiring
- notification delivery 実装

## 6. freeze_meaning
- 大きな business rule は軽く動かさない
- 小さな wording 調整はありうる
- 変更が必要な場合は post-freeze 変更ルールに従う

## 7. current_phase
- design_freeze

## 8. implementation_status
- not_started

## 9. note
この Freeze は **設計 Freeze** であり、**実装開始宣言ではない**。


---

## SOURCE FILE: 130.development/010.core/1300100035_MEAL_PLANNER_FREEZE_SCOPE_SUMMARY.md

# MealPlanner Freeze Scope Summary

## 1. purpose
Freeze 時点で、何が固定済みで何が未着手かを短く示す。

## 2. fixed
- schema: life
- pricing: 無料 / 有料500円
- support: AIチャットのみ
- plan_horizon: daily / weekly / monthly
- budget input: 節約 / 普通 / 多め
- csv: free / paid とも利用可
- user_menu: private 起点
- publish flow: LifeOS 経由
- source of truth: CX22073JW
- state transitions
- authority boundary
- API exact payload
- DB logical schema
- screen exact I/O
- component props / event payload
- history retention
- versioning
- notification settings policy

## 3. not_started
- DDL
- SQL
- migration
- implementation
- runtime wiring

## 4. change_rule
Freeze 後に major change が必要なら、
- consistency matrix
- traceability matrix
- integrated document
- related detail docs
を再確認する。


---

## SOURCE FILE: 130.development/010.core/1300100036_MEAL_PLANNER_FREEZE_STATUS_BOARD.md

# MealPlanner Freeze Status Board

## freeze_status
- frozen_as_design

## freeze_date
- 2026-04-15

## freeze_timestamp
- 2026-04-15 05:14:44 +0900

## implementation_status
- not_started

## allowed_after_freeze
- wording micro-fix
- overview sync
- traceability update
- consistency update
- minor documentation clarification

## disallowed_without_reapproval
- pricing change
- schema change
- CX22073JW boundary change
- support mode change
- publish policy change
- plan_horizon change
- moving from design to implementation silently


---

## SOURCE FILE: 130.development/010.core/1300100037_MEAL_PLANNER_FREEZE_AUDIT_STATUS.md

# MealPlanner Freeze Audit Status

## audit_script
- /data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/MealPlanner/130.development/010.core/1300100033_run_mealplanner_design_audit.sh

## audit_run
- executed

## audit_run_timestamp
- 2026-04-15 05:14:44 +0900

## note
- 詳細は $HOME/.tmp/mealplanner-design-audit 配下を確認する
- この文書は Freeze 時に監査を走らせた記録である


---

## SOURCE FILE: 130.development/010.core/1300100038_MEAL_PLANNER_DESIGN_FREEZE_CLOSE_NOTE.md

# MealPlanner Design Freeze Close Note

## 1. result
MealPlanner は、**実装前の設計 Freeze** として整理完了。

## 2. date
- 2026-04-15

## 3. phase
- design_freeze

## 4. summary
- major business rules fixed
- boundaries fixed
- api/model/ui/policy fixed
- governance docs prepared
- implementation intentionally not started

## 5. next_step_kind
- final review reading
or
- Boss judgement for future implementation phase

## 6. hard_rule
- 実装はまだ開始しない


---

## SOURCE FILE: 130.development/1300000_DEVELOPMENT_INDEX.md

# Development Index

## purpose
MealPlanner の開発順序、未確定事項、次工程を定義する

## files
- 1300001_DEVELOPMENT_OVERVIEW.md

## notes
- この index は Development の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 130.development/1300001_DEVELOPMENT_OVERVIEW.md

# Development Overview

## role
MealPlanner の開発順序、未確定事項、次工程を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 900.meta/010.core/9000100000_CORE_INDEX.md

# Meta Core Index

## purpose
MealPlanner の設計メタ情報を定義する

## files
- 9000100001_CORE_OVERVIEW.md

## notes
- この index は Meta Core の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 900.meta/010.core/9000100001_CORE_OVERVIEW.md

# Meta Core Overview

## role
MealPlanner の設計メタ情報を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる


---

## SOURCE FILE: 900.meta/010.core/9000100002_MEAL_PLANNER_META.md

# MealPlanner Meta

## design_origin
- user-driven design in project context
- CivilizationOS-like layering adopted
- common components are intentionally separated into another discussion thread

## notes
- このディレクトリは設計メタの保持用


---

## SOURCE FILE: 900.meta/010.core/9000100003_MEAL_PLANNER_MASTER_DOCUMENT_INDEX.md

# MealPlanner Master Document Index

## 1. purpose
MealPlanner 配下の主要設計書を、役割別にたどれるようにするための索引。

## 2. integrated_entry
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md

## 3. business_and_positioning
- 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
- 0100200002_MEAL_PLANNER_DOMAIN_BOUNDARY.md
- 0800100002_MEAL_PLANNER_POLICY.md

## 4. api_and_io
- 0600100002_API_REQUEST_RESPONSE_EXACT_PAYLOAD_POLICY.md
- 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- 0900200003_SCREEN_API_MAPPING.md
- 0600100003_NOTIFICATION_SETTINGS_API_EXACT.md

## 5. model_and_schema
- 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- 0300200004_MEAL_PLANNER_TABLE_RELATION_OVERVIEW.md
- 0300200005_MEAL_PLANNER_NULLABILITY_AND_DEFAULT_POLICY.md
- 0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md

## 6. constraint_and_consistency
- 1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md
- 0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md
- 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md
- 1200100009_MEAL_PLANNER_PHYSICAL_CONSTRAINT_RULES.md

## 7. runtime_and_state
- 0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md
- 0400200003_MEAL_PLANNER_STATE_TRANSITION_DESIGN.md

## 8. interface_and_copy
- 0900100002_MEAL_PLANNER_UI_GATING.md
- 0900200002_MEAL_PLANNER_SCREEN_LIST.md
- 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- 0900100004_MEAL_PLANNER_VALIDATION_COPY_EXACT.md
- 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
- 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
- 0900200008_MEAL_PLANNER_UI_COMPONENT_DECOMPOSITION.md
- 0900200009_MEAL_PLANNER_COMPONENT_PROPS_DESIGN.md
- 0900200010_MEAL_PLANNER_COMPONENT_EVENT_PAYLOAD_DETAIL.md
- 0900200011_MEAL_PLANNER_COMPONENT_PROPS_REQUIRED_OPTIONAL_MATRIX.md
- 0900100007_MEAL_PLANNER_TINY_COPY_ADJUSTMENTS.md

## 9. authority_and_policy
- 1000100002_MEAL_PLANNER_SECURITY_POLICY.md
- 1000100003_MEAL_PLANNER_AUTHORITY_BOUNDARY_DESIGN.md
- 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
- 0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md
- 0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md
- 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md

## 10. integration
- 0600200002_CX22073JW_INTEGRATION.md
- 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- 0600100004_MEAL_PLANNER_LIFEOS_INTEGRATION_CONTRACT_SUMMARY.md
- 0600300002_LIFEOS_PUBLISH_INTEGRATION.md
- 0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md

## 11. operations_and_support
- 0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
- 0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md

## 12. design_progress_and_review
- 1300100003_MEAL_PLANNER_DESIGN_CONSOLIDATION_NOTE.md
- 1300100004_MEAL_PLANNER_DESIGN_BUNDLE_02_NOTE.md
- 1300100005_MEAL_PLANNER_DESIGN_STATUS_SUMMARY.md
- 1300100006_MEAL_PLANNER_DESIGN_BUNDLE_04_NOTE.md
- 1300100007_MEAL_PLANNER_DESIGN_BUNDLE_05_NOTE.md
- 1300100009_MEAL_PLANNER_INTEGRATED_REFRESH_NOTE.md
- 1300100011_MEAL_PLANNER_FINAL_REVIEW_CHECKLIST.md
- 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
- 1300100013_MEAL_PLANNER_NEXT_DESIGN_CANDIDATES.md

## 13. reading_order_recommendation
1. 00_MEAL_PLANNER_INTEGRATED.md
2. core principles / domain boundary
3. API exact payloads
4. DB logical schema
5. screen exact I/O
6. state / authority / integration boundary
7. copy / csv / component docs
8. review checklist / implementation-not-yet boundary


---

## SOURCE FILE: 900.meta/010.core/9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md

# MealPlanner Requirement Traceability Matrix

## 1. purpose
主要要件がどの設計書で固定されているかを追跡できるようにする。

## 2. traceability_matrix

### requirement_01
- requirement:
  - schema は life を使う
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 1200100004_MEAL_PLANNER_DB_IMPLEMENTATION_NOTES.md
  - 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md

### requirement_02
- requirement:
  - 無料 / 有料500円
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100002_MEAL_PLANNER_POLICY.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
  - 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md

### requirement_03
- requirement:
  - サポートは AIチャットのみ
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
  - 0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md

### requirement_04
- requirement:
  - 日 / 週 / 月の3粒度で献立提案
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

### requirement_05
- requirement:
  - 予算は 節約 / 普通 / 多め
- source_docs:
  - 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md

### requirement_06
- requirement:
  - CSV 出力可能
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
  - 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

### requirement_07
- requirement:
  - user_menu を追加可能
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

### requirement_08
- requirement:
  - user_menu は LifeOS を通じて公開可能
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0600300002_LIFEOS_PUBLISH_INTEGRATION.md
  - 0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md

### requirement_09
- requirement:
  - 基礎知識の正本は CX22073JW
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0600200002_CX22073JW_INTEGRATION.md
  - 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md

### requirement_10
- requirement:
  - 履歴は free / paid で閲覧範囲差をつける
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
  - 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md

### requirement_11
- requirement:
  - published menu は直接上書きしない
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
  - 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md

### requirement_12
- requirement:
  - favorite / template は snapshot-first
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md

### requirement_13
- requirement:
  - quality score は ranking helper only
- source_docs:
  - 0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md
  - 0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md

### requirement_14
- requirement:
  - notification settings は user 単位
- source_docs:
  - 0600100003_NOTIFICATION_SETTINGS_API_EXACT.md
  - 0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md

### requirement_15
- requirement:
  - 実装はまだしない
- source_docs:
  - 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
  - 1300100016_MEAL_PLANNER_PHASE_CLOSEOUT_NOTE.md

## 3. usage_note
- 新しい設計変更を入れる時は、この matrix に追記して影響範囲を確認する


---

## SOURCE FILE: 900.meta/010.core/9000100005_MEAL_PLANNER_CANONICAL_FOLDER_MAP.md

# MealPlanner Canonical Folder Map

## 1. purpose
MealPlanner 配下の主要フォルダの正本役割を簡潔に示す。

## 2. folder_map

### 010.constitution
- 基本原則
- 責務
- 境界

### 020.architecture
- 構造
- 依存
- 分割
- 受け入れ条件

### 030.model
- entity
- logical schema
- relation
- nullability
- notification logical shape

### 040.runtime
- 実行挙動
- 状態遷移

### 050.flow
- 利用フロー
- 画面遷移

### 060.integration
- CX22073JW
- LifeOS Publish
- LifeOS app integration summary
- notification API exact

### 070.operations
- AIチャットサポート
- ストア境界

### 080.policy
- free / paid
- versioning
- search sort
- quality score
- retention

### 090.interface
- 画面
- 文言
- CSV
- component
- props
- event payload

### 100.security
- private / household / public
- planner / viewer
- security boundary

### 110.infrastructure
- 基盤前提
- 実行基盤観点

### 120.implementation
- 実装境界
- required/optional/nullable
- audit/delete
- physical constraint rules
- ただし実装コードはまだ持たない

### 130.development
- 設計進捗
- レビュー
- 実装まだ禁止の境界
- closeout notes

### 900.meta
- master index
- canonical map
- traceability
- メタ整理

## 3. usage_note
- 新規文書を追加する時は、まず役割に合うフォルダを選ぶ
- 同じテーマの重複文書を増やしすぎない


---

## SOURCE FILE: 900.meta/010.core/9000100006_MEAL_PLANNER_DESIGN_REVIEW_ORDER.md

# MealPlanner Design Review Order

## 1. purpose
MealPlanner の設計書を、迷わずレビューできる順番で読むためのガイド。

## 2. fastest_review_path
1. 00_MEAL_PLANNER_INTEGRATED.md
2. 1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md
3. 1300100011_MEAL_PLANNER_FINAL_REVIEW_CHECKLIST.md
4. 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md

## 3. full_review_path

### phase_a_business_and_boundary
1. 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
2. 0100200002_MEAL_PLANNER_DOMAIN_BOUNDARY.md
3. 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
4. 1000100003_MEAL_PLANNER_AUTHORITY_BOUNDARY_DESIGN.md

### phase_b_api_and_model
5. 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
6. 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
7. 1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md
8. 0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md

### phase_c_runtime_and_policy
9. 0400200003_MEAL_PLANNER_STATE_TRANSITION_DESIGN.md
10. 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
11. 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
12. 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md

### phase_d_interface
13. 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
14. 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
15. 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
16. 0900200008_MEAL_PLANNER_UI_COMPONENT_DECOMPOSITION.md

### phase_e_operations_and_closeout
17. 0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
18. 0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md
19. 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
20. 1300100016_MEAL_PLANNER_PHASE_CLOSEOUT_NOTE.md

## 4. boss_quick_judgement_path
- 00_MEAL_PLANNER_INTEGRATED.md
- 0800100002_MEAL_PLANNER_POLICY.md
- 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md

## 5. review_goal
- 大きな意味矛盾がないこと
- old wording が残っていないこと
- 実装まだ禁止の境界が守られていること


---

## SOURCE FILE: 900.meta/010.core/9000100007_MEAL_PLANNER_CROSS_DOCUMENT_AUDIT_PLAYBOOK.md

# MealPlanner Cross Document Audit Playbook

## 1. purpose
MealPlanner 配下の文書を横断して、設計矛盾を見つけるための監査観点を整理する。

## 2. audit_targets
- 00_MEAL_PLANNER_INTEGRATED.md
- overview 群
- API / model / interface / policy / runtime / integration 文書
- meta / review / freeze 系文書

## 3. audit_points

### audit_01_schema_name
look_for:
- app_meal_planner
- app schema
pass_condition:
- life を正として統一されている

### audit_02_pricing
look_for:
- plus
- family
- 300円
- 700円
pass_condition:
- 無料 / 有料500円 に統一されている

### audit_03_support_mode
look_for:
- 電話サポート
- 有人サポート
- メール個別対応
pass_condition:
- AIチャットのみ に統一されている

### audit_04_plan_horizon
look_for:
- 週のみ前提
- 日/月が抜けている箇所
pass_condition:
- daily / weekly / monthly が主要文書で一致している

### audit_05_csv_policy
look_for:
- free で CSV 不可
- paid only csv
pass_condition:
- free / paid とも CSV 可
- paid は optional columns 可

### audit_06_cx22073jw_boundary
look_for:
- MealPlanner が基礎知識正本のように書かれている箇所
pass_condition:
- CX22073JW が基礎知識 / 公開知識 / 辞書知識の正本

### audit_07_publish_policy
look_for:
- private -> published 直接確定
- published 直接上書き
pass_condition:
- publish flow 経由
- versioning 前提

### audit_08_history_retention
look_for:
- free 用短期削除
- paid only storage
pass_condition:
- DB保持
- UI 閲覧範囲差

### audit_09_notification_scope
look_for:
- household が notification 正本と断定
pass_condition:
- user 単位正本
- household は文脈保持

### audit_10_implementation_leak
look_for:
- DDL
- CREATE TABLE
- migration
- 実装コード
pass_condition:
- 実装まだ禁止境界が守られている

## 4. audit_method
1. integrated doc を読む
2. consistency matrix を読む
3. requirement traceability matrix を読む
4. 各 major theme を spot check する
5. 差分があれば integrated / overview / detail のどこが古いかを切り分ける

## 5. outcome_types
- pass:
  - 問題なし
- minor_adjustment:
  - 文言微修正で吸収可
- major_conflict:
  - 設計ルール再確認が必要

## 6. non_goals
- physical implementation review
- performance review
- production rollout review


---

## SOURCE FILE: 900.meta/010.core/9000100008_MEAL_PLANNER_DOCUMENT_UPDATE_RULES.md

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


---

## SOURCE FILE: 900.meta/010.core/9000100009_MEAL_PLANNER_FREEZE_HANDOFF_PACKAGE.md

# MealPlanner Freeze Handoff Package

## 1. purpose
設計 freeze candidate として引き継ぐ時に、最低限そろっているべき文書群を定義する。

## 2. handoff_minimum_package

### package_a_core
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md
- 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md

### package_b_business_boundary
- 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
- 0100200002_MEAL_PLANNER_DOMAIN_BOUNDARY.md
- 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- 1000100003_MEAL_PLANNER_AUTHORITY_BOUNDARY_DESIGN.md

### package_c_api_model
- 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- 1200100006_MEAL_PLANNER_REQUIRED_OPTIONAL_NULLABLE_MATRIX.md
- 0300200006_MEAL_PLANNER_INDEX_UNIQUE_FK_MATRIX.md

### package_d_ui_policy
- 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
- 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
- 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md

### package_e_review_meta
- 9000100003_MEAL_PLANNER_MASTER_DOCUMENT_INDEX.md
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md

## 3. handoff_message_template
- MealPlanner は実装前の設計 freeze candidate 段階です
- schema は life です
- 基礎知識正本は CX22073JW 前提です
- free / paid は 無料 / 500円です
- サポートは AIチャットのみです
- 実装はまだ開始しません

## 4. non_handoff_items_yet
- DDL
- SQL
- migration
- 実装コード
- runtime wiring


---

## SOURCE FILE: 900.meta/010.core/9000100010_MEAL_PLANNER_META_GOVERNANCE_NOTE.md

# MealPlanner Meta Governance Note

## 1. purpose
MealPlanner 文書群のメタ運用を簡潔に固定する。

## 2. governance_points
- integrated doc は入口
- detailed docs が意味の正本
- overview docs は要約
- meta docs は追跡 / 点検 / 凍結支援
- implementation docs はまだ持たない

## 3. priority_when_conflict_found
1. detail exact docs
2. integrated doc
3. overview docs
4. meta docs

## 4. correction_rule
矛盾を見つけたら、detail を先に直し、その後 integrated / overview / meta を追随させる。

## 5. current_phase
- design_freeze_candidate_preparation


---

## SOURCE FILE: 900.meta/010.core/9000100011_MEAL_PLANNER_TERMINOLOGY_DICTIONARY.md

# MealPlanner Terminology Dictionary

## 1. purpose
MealPlanner 文書群で使う主要用語の意味をそろえる。

## 2. core_terms

### MealPlanner
- 献立管理アプリ
- LifeOS 配下の生活改善支援アプリ

### life schema
- MealPlanner の runtime / household / history / private data を置く schema

### CX22073JW
- 基礎知識
- 公開知識
- 辞書知識
- 参照知識
の正本前提

### LifeOS Publish
- user_menu の公開申請 / 審査 / 反映を担う外部責務

### user_menu
- ユーザーが作る独自献立
- 初期状態は private

### published menu
- 公開済み献立
- 直接上書きしない
- 版管理前提

### snapshot
- 当時の表示や参照安定性を保つために保存する文字列 / 状態
- 自動追従より安定性を優先する文脈で使う

### budget_tier
- 節約
- 普通
- 多め
- 金額直入力の代わりに使う主入力

### plan_horizon
- daily
- weekly
- monthly

### source_type
- system_seed
- cx22073jw_base
- user_private
- user_published

### publication_status
- private
- draft
- review_pending
- published
- rejected

### private
- household 内の内部利用状態

### household
- app 内 family / 家族共有の単位

### lifeos_public
- publish flow 通過後の公開状態

### free
- 無料プラン

### paid
- 月額500円プラン

### ai_chat_only
- サポートは AIチャットのみ
- 人手対応前提ではない

## 3. wording_preferences
use:
- 献立
- 献立表
- 買い物リスト
- 家族共有
- 公開申請
- 基本献立
- 自分の献立
- 公開献立

avoid_when_possible:
- プラン生成
- スロット更新
- draft
- published
- review_pending
- rejected

## 4. note
用語を変える時は、UI copy と design docs の両方を見る。


---

## SOURCE FILE: 900.meta/010.core/9000100012_MEAL_PLANNER_DECISION_LEDGER.md

# MealPlanner Decision Ledger

## 1. purpose
MealPlanner で確定した主要判断を短く一覧化する。

## 2. decisions

### decision_01
- theme:
  - schema
- decision:
  - schema は life
- status:
  - fixed

### decision_02
- theme:
  - pricing
- decision:
  - 無料 / 有料500円
- status:
  - fixed

### decision_03
- theme:
  - support
- decision:
  - サポートは AIチャットのみ
- status:
  - fixed

### decision_04
- theme:
  - planning horizon
- decision:
  - 日 / 週 / 月の3粒度
- status:
  - fixed

### decision_05
- theme:
  - budget
- decision:
  - 節約 / 普通 / 多め を主入力にする
- status:
  - fixed

### decision_06
- theme:
  - csv
- decision:
  - free / paid とも CSV出力可
- status:
  - fixed

### decision_07
- theme:
  - user menu
- decision:
  - user_menu を追加可能
- status:
  - fixed

### decision_08
- theme:
  - publish
- decision:
  - LifeOS を通じて公開申請
- status:
  - fixed

### decision_09
- theme:
  - source of truth
- decision:
  - 基礎知識の正本は CX22073JW
- status:
  - fixed

### decision_10
- theme:
  - versioning
- decision:
  - published menu は直接上書きしない
- status:
  - fixed

### decision_11
- theme:
  - favorite/template
- decision:
  - snapshot-first
- status:
  - fixed

### decision_12
- theme:
  - history retention
- decision:
  - DB保持、閲覧差で free / paid を分ける
- status:
  - fixed

### decision_13
- theme:
  - notification
- decision:
  - 通知設定の正本は user 単位
- status:
  - fixed

### decision_14
- theme:
  - implementation phase
- decision:
  - 実装はまだしない
- status:
  - fixed

## 3. usage_rule
- 新しい意思決定を増やしたら、この ledger に追記する
- fixed を覆す時は、related docs 全体を見直す


---

## SOURCE FILE: 900.meta/010.core/9000100013_MEAL_PLANNER_OLD_WORDING_CLEANUP_CHECKLIST.md

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


---

## SOURCE FILE: 900.meta/010.core/9000100014_MEAL_PLANNER_INTEGRATED_DETAIL_SYNC_CHECKLIST.md

# MealPlanner Integrated Detail Sync Checklist

## 1. purpose
integrated doc と detail docs の間に意味ずれがないかを見る。

## 2. sync_axes

### axis_01_pricing
integrated_should_match:
- policy docs
- ui copy docs
- support docs

### axis_02_schema
integrated_should_match:
- db logical schema
- implementation notes
- consistency matrix

### axis_03_plan_horizon
integrated_should_match:
- runtime behavior
- api exact payload
- screen exact io

### axis_04_csv
integrated_should_match:
- csv exact definition
- csv free paid final policy
- export api payload

### axis_05_publish
integrated_should_match:
- publish contract summary
- versioning policy
- authority boundary

### axis_06_cx22073jw
integrated_should_match:
- cx22073jw boundary final
- integration docs
- requirement traceability

### axis_07_history
integrated_should_match:
- history retention final policy
- audit and delete policy
- ui gating / history screen

### axis_08_notification
integrated_should_match:
- notification api exact
- notification logical shape
- notification settings screen

## 3. correction_rule
- detail が新しい場合:
  - integrated を追従修正
- integrated が新しい場合:
  - detail が古い可能性を疑って確認
- overview は最後に追従させる


---

## SOURCE FILE: 900.meta/010.core/9000100015_MEAL_PLANNER_META_CLOSEOUT_MAP.md

# MealPlanner Meta Closeout Map

## 1. purpose
meta / review / freeze 系文書を、終盤でどう使うか整理する。

## 2. use_order

### first
- 9000100003_MEAL_PLANNER_MASTER_DOCUMENT_INDEX.md
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md

### second
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 9000100007_MEAL_PLANNER_CROSS_DOCUMENT_AUDIT_PLAYBOOK.md
- 9000100013_MEAL_PLANNER_OLD_WORDING_CLEANUP_CHECKLIST.md

### third
- 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
- 1300100020_MEAL_PLANNER_DESIGN_FREEZE_READINESS_REPORT.md
- 1300100027_MEAL_PLANNER_FREEZE_EXECUTION_CHECKLIST.md

### fourth
- 1300100024_MEAL_PLANNER_REVIEW_SIGNOFF_TEMPLATE.md
- 1300100025_MEAL_PLANNER_FREEZE_DECLARATION_DRAFT.md
- 1300100026_MEAL_PLANNER_POST_FREEZE_CHANGE_RULE.md

## 3. closeout_goal
- 追跡できる
- 矛盾を見つけられる
- freeze candidate 判断ができる
- 実装まだ禁止の境界を守れる


---

## SOURCE FILE: 900.meta/010.core/9000100016_MEAL_PLANNER_FINAL_PACKAGE_INDEX.md

# MealPlanner Final Package Index

## 1. purpose
終盤で使う文書だけを短く束ねた index。

## 2. top_entry
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md
- 1300100030_MEAL_PLANNER_FINAL_CLOSE_PACKAGE.md

## 3. freeze_candidate_core
- 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
- 1300100020_MEAL_PLANNER_DESIGN_FREEZE_READINESS_REPORT.md
- 1300100027_MEAL_PLANNER_FREEZE_EXECUTION_CHECKLIST.md
- 1300100031_MEAL_PLANNER_FREEZE_DECISION_GUIDE.md

## 4. review_core
- 1300100011_MEAL_PLANNER_FINAL_REVIEW_CHECKLIST.md
- 1300100021_MEAL_PLANNER_FINAL_REVIEW_ACTION_SCRIPT.md
- 9000100007_MEAL_PLANNER_CROSS_DOCUMENT_AUDIT_PLAYBOOK.md
- 9000100013_MEAL_PLANNER_OLD_WORDING_CLEANUP_CHECKLIST.md
- 9000100014_MEAL_PLANNER_INTEGRATED_DETAIL_SYNC_CHECKLIST.md

## 5. governance_core
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 9000100012_MEAL_PLANNER_DECISION_LEDGER.md
- 9000100010_MEAL_PLANNER_META_GOVERNANCE_NOTE.md

## 6. phase_bridge
- 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
- 1300100028_MEAL_PLANNER_PRE_IMPLEMENTATION_BRIDGE_NOTE.md
- 1300100032_MEAL_PLANNER_HANDOFF_NOTE_FOR_NEXT_PHASE.md


---

## SOURCE FILE: 900.meta/010.core/9000100017_MEAL_PLANNER_REVIEW_QUERY_SET.md

# MealPlanner Review Query Set

## 1. purpose
grep / find などで設計監査する時の検索観点をまとめる。

## 2. query_groups

### old_pricing
- plus
- family
- 300円
- 700円

### old_schema
- app_meal_planner
- app schema

### old_support
- 電話サポート
- 有人サポート
- メールサポート

### old_publish
- directly published
- private to published
- published direct update

### implementation_leak
- CREATE TABLE
- ALTER TABLE
- INSERT INTO
- UPDATE life.
- psql
- migration

### missing_key_rules
- AIチャットのみ
- 無料 / 有料500円
- schema は life
- CX22073JW
- snapshot-first


---

## SOURCE FILE: 900.meta/010.core/9000100018_MEAL_PLANNER_FREEZE_PACKAGE_INDEX.md

# MealPlanner Freeze Package Index

## 1. purpose
Freeze 判定時に見るべき文書を束ねる。

## 2. must_read
- 00_MEAL_PLANNER_INTEGRATED.md
- 1300100010_MEAL_PLANNER_FINAL_DESIGN_SNAPSHOT.md
- 1300100034_MEAL_PLANNER_DESIGN_FREEZE_DECLARATION.md
- 1300100035_MEAL_PLANNER_FREEZE_SCOPE_SUMMARY.md

## 3. review_core
- 1300100011_MEAL_PLANNER_FINAL_REVIEW_CHECKLIST.md
- 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
- 1300100020_MEAL_PLANNER_DESIGN_FREEZE_READINESS_REPORT.md
- 1300100027_MEAL_PLANNER_FREEZE_EXECUTION_CHECKLIST.md

## 4. governance_core
- 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- 9000100012_MEAL_PLANNER_DECISION_LEDGER.md
- 1300100026_MEAL_PLANNER_POST_FREEZE_CHANGE_RULE.md

## 5. boundary_core
- 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md
- 1000100003_MEAL_PLANNER_AUTHORITY_BOUNDARY_DESIGN.md
- 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md


---

## SOURCE FILE: 900.meta/9000000_META_INDEX.md

# Meta Index

## purpose
MealPlanner 設計メタ情報を定義する

## files
- 9000001_META_OVERVIEW.md

## notes
- この index は Meta の入口である
- 詳細は配下ドキュメントを参照する


---

## SOURCE FILE: 900.meta/9000001_META_OVERVIEW.md

# Meta Overview

## role
MealPlanner 設計メタ情報を定義する

## mealplanner_context
- MealPlanner の当該レイヤーにおける責務を整理する
- CivilizationOS系構成に合わせる

