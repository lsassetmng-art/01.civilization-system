# ============================================================
# TRAINING COACH FULL INTEGRATED REGENERATED
# ============================================================

status: canonical-draft
phase: design-closure
system: TrainingCoach
domain: 01.civilization-system/07.applications/04.life-app
owner: Boss
prepared_by: Zero

---
<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

## 0. PURPOSE
この文書は、TrainingCoach の分割設計群をあとから読み返しやすいよう、
主要決定を1本に統合した再生成版である。

本書は次を目的とする。

- app identity / scope / pricing / schema の正本把握
- payload / runtime / DB draft / seed の要点集約
- copy / help / support / premium / share の要点集約
- handoff 時に最小読書セットとして使えるようにする

本書は**設計の統合版**であり、実装やDB適用を意味しない。

---
## 1. APP IDENTITY

### 1-1. app_name
- en: TrainingCoach
- ja: トレーニング支援アプリ

### 1-2. positioning
- ヨガ、ストレッチ、器具運動、日常運動を支援する軽量アプリ
- 生活に合わせた運動メニュー策定と実施継続に特化
- 医療ではなく、生活改善・運動習慣化・体力維持支援を主目的とする

### 1-3. core_purpose
- 運動メニュー作成
- 実施支援
- 継続支援
- 身体状態と目標に応じた負荷調整

### 1-4. main_users
- 運動初心者
- 在宅運動ユーザー
- 健康維持層
- 体力向上層

### 1-5. roles
#### owner
- メニュー作成
- 実施記録
- 目標設定
- 疲労度 / 体調入力

#### coach_view
- 将来拡張
- 初期リリース対象外

---
## 2. PRODUCT PRINCIPLES

### 2-1. mission
- 運動を習慣として続けやすくする
- 体調と目標に応じた無理のない提案を行う
- 医療ではなく生活改善支援として価値提供する

### 2-2. principles
- 安全優先
- 継続優先
- 分かりやすさ優先
- LifeOS連携優先
- 多言語 / 多通貨 / 多端末前提
- 明示されない医療判断をしない

### 2-3. scope_in
- 運動メニュー計画
- 実施支援
- 記録
- 継続支援
- 疲労度や体調に応じた軽微な提案調整

### 2-4. scope_out
- 医療診断
- 治療行為
- 薬剤指示
- 専門家による個別リハビリ判断

---
## 3. FUNCTIONAL SCOPE

### 3-1. must_functions
- 運動メニュー作成
- 実施記録
- 種目分類（ヨガ、ストレッチ、有酸素、筋トレ、器具）
- 日次 / 週次プラン
- 所要時間管理
- 達成チェック
- メニュー再利用
- 休息日設定

### 3-2. should_functions
- 体重や歩数連携
- 疲労度入力
- 難易度自動調整
- 動画 / 画像ガイド
- 連続実施記録
- 通知
- 目標別テンプレート
- 体調連動メニュー差し替え

### 3-3. nice_to_have
- 姿勢チェック連携
- スマートウォッチ心拍利用
- 家族 / 友人共有
- トレーナー相談連携
- 運動消費量の推定表示
- ガイドコンテンツのお気に入り保存

---
## 4. RELEASE SLICE

### 4-1. v1 include
- Free / Premium の2段階
- training_plan 作成
- training_session 実施
- completion_log 記録
- fatigue_note 入力
- streak_summary 表示
- guide_viewer
- BodyMetrics 日次概要受信
- MealPlanner / LifePlanner への概要連携
- safety messaging

### 4-2. later
- deeper family / share
- coach_view 詳細機能
- advanced wearable realtime
- external trainer support
- richer media library
- premium copy expansion

### 4-3. hard_out_of_scope
- 医療診断
- 治療メニュー
- 医療機関代替判断
- ERP 主保存

---
## 5. PRICING

### 5-1. product_type
- 月額利用型アプリ

### 5-2. plans
#### Free
- price: 0円
- 役割:
  - 基本プラン作成
  - 実施記録
  - 継続確認
  - 基本通知
  - streak確認

#### Premium
- price: 500円 / 月
- 役割:
  - BodyMetrics連携
  - 体調に応じた調整支援
  - 詳細進捗表示
  - ガイド強化
  - 将来共有の基盤候補

### 5-3. pricing_principles
- Free でも基本利用できることを明示する
- Premium は継続支援と連携強化中心
- 医療機能のように見せない
- AIチャットサポートのみ

---
## 6. MULTI-LANGUAGE / MULTI-CURRENCY / MULTI-DEVICE

### 6-1. multilingual
- required: true
- ja-JP を第一正本
- en は次段
- fallback policy 定義済み

### 6-2. multicurrency
- required: true
- pricing 正本は JPY
- display は現地通貨候補
- fallback は JPY

### 6-3. multi_device
- iPhone: true
- Android: true
- PC: true
- Tablet: true

---
## 7. LIFEOS BOUNDARIES

### 7-1. inbound
#### BodyMetrics
- 体重
- 歩数
- 睡眠傾向
- 心拍傾向
- readiness hint 候補

### 7-2. outbound
#### MealPlanner
- 消費活動量概要
- activity level summary

#### LifePlanner
- 健康目標進捗
- weekly completion rate
- streak summary

### 7-3. boundary_rules
- source-of-truth を奪わない
- payload で接続し意味境界を保つ
- direct cross-app ownership を避ける
- summary-only 連携を基本とする

---
## 8. SCHEMA / DATA

### 8-1. schema_binding
- primary_schema: life

### 8-2. major_entities
- training_plan
- training_plan_rest_rule
- training_plan_item
- training_session
- completion_log
- fatigue_note
- training_goal
- streak_summary
- exercise_category
- exercise_item
- exercise_item_safety_notice
- difficulty_rule
- guide_content
- device_sync_state
- bodymetrics_daily_summary_cache
- future training_share_invitation
- future training_share_relation
- future training_share_audit_event

### 8-3. data_principles
- TrainingCoach の保存責務は life
- BodyMetrics raw ownership は BodyMetrics 側
- share は raw health を既定共有しない
- seed master は最小構成で開始
- ja-JP guide seed を正本とする

---
## 9. PHYSICAL MODEL SUMMARY

### 9-1. core tables
- life.training_plan
- life.training_plan_rest_rule
- life.training_plan_item
- life.training_session
- life.completion_log
- life.fatigue_note
- life.training_goal
- life.streak_summary
- life.exercise_category
- life.exercise_item
- life.exercise_item_safety_notice
- life.difficulty_rule
- life.guide_content
- life.device_sync_state
- life.bodymetrics_daily_summary_cache

### 9-2. future share tables
- life.training_share_invitation
- life.training_share_relation
- life.training_share_audit_event

### 9-3. data modeling notes
- physical mapping 定義済み
- relation/cardinality 定義済み
- index strategy 定義済み
- nullability/default policy 定義済み
- correction event persistence 定義済み
- audit persistence detail 定義済み

---
## 10. DDL / SQL STATUS

### 10-1. prepared
- life DDL draft prepared
- share SQL draft prepared

### 10-2. not_done
- apply-ready SQL 化
- DB適用
- migration 実行

### 10-3. db_review_note
- 佐藤 review 前提
- 実適用はまだしない

---
## 11. SEED STATUS

### 11-1. prepared
- seed and master policy
- seed master actual row catalog
- guide content actual draft body set
- seed insert transformation note

### 11-2. exercise_category initial rows
- yoga
- stretch
- cardio
- strength
- equipment
- daily_activity

### 11-3. seed strategy note
- 初期は ja-JP 正本
- 最小構成 seed
- code -> id 解決方針は DB review で最終固定

---
## 12. RUNTIME / STATE / PAYLOAD

### 12-1. runtime_modes
- menu_planning
- guided_execution
- quick_logging
- continuity_review

### 12-2. key states
#### training_plan
- active
- paused
- archived

#### training_session
- scheduled
- in_progress
- completed
- skipped
- stopped

#### completion_log
- finalized
- finalized 後の direct update 禁止

#### fatigue_note
- same day editable candidate
- day rollover 後 locked

### 12-3. payload status
- screen request/response exact payload fixed
- LifeOS integration payload fixed
- API <-> DB exact mapping fixed
- empty/error response contract fixed
- payload versioning fixed
- error code catalog fixed
- permission boundary fixed
- audit event overview fixed
- idempotency/correlation fixed

---
## 13. UX / SCREEN SUMMARY

### 13-1. major_screens
- dashboard
- today_plan
- plan_editor
- session_execution
- completion_result
- guide_viewer
- settings
- premium_upgrade

### 13-2. screen_principles
- 実施中は迷わせない
- 1画面1目的
- dashboard は編集画面にしない
- guide_viewer は content management にしない
- completion_result は correction 画面にしない

### 13-3. onboarding
- welcome
- goal
- level/time
- schedule/rest
- condition baseline
- optional notifications
- optional premium education
- first plan proposal

---
## 14. HELP / SUPPORT

### 14-1. help taxonomy
- getting_started
- plans_and_goals
- today_training
- streak_and_progress
- notifications
- premium
- safety
- privacy_and_data
- sync_and_troubleshooting

### 14-2. support policy
- FAQ / help center / AI support routing fixed
- AI support is non-medical
- safety concern では safety-first
- billing platform issue は external route candidate

### 14-3. prepared help assets
- FAQ design
- FAQ ja/en actual draft
- help taxonomy
- help article inventory
- help article ledger linkage
- help article ja/en actual draft
- help search design
- support routing policy

---
## 15. CONTENT / COPY / LOCALIZATION

### 15-1. prepared copy assets
- onboarding ja/en
- faq ja/en
- help article ja/en
- notification ja/en
- premium ja/en
- AI support ja/en
- share viewer ja/en
- guide body ja/en starter

### 15-2. message key status
- localization/message key policy prepared
- localized copy starter ledger prepared
- message key expansion core set prepared
- notification localization set policy prepared

### 15-3. content governance
- safety copy は最優先 review
- premium copy は誇張禁止
- FAQ は product behavior と一致必須
- locale 差分で意味が変わらないようにする

### 15-4. content review
- content review role matrix prepared
- safety-related content は safety review 必須

---
## 16. NOTIFICATION SUMMARY

### 16-1. notification types
- scheduled_session_reminder
- streak_encouragement
- missed_session_followup
- rest_recommended_notice
- premium_feature_hint

### 16-2. tone rules
- reminder は support tone
- streak は guilt-free
- missed followup は pressure-free
- rest recommendation は calm + safety-first
- premium hint は non-pushy

### 16-3. copy status
- notification localized starter prepared
- actual en draft prepared
- actual ja polished draft prepared

---
## 17. PREMIUM SUMMARY

### 17-1. prepared
- premium value copy design
- premium actual ja/en full copy draft
- premium screen exact copy placement matrix

### 17-2. premium principles
- Free を隠さない
- continuity support を中心価値にする
- future share を現在機能のように見せない
- guaranteed result copy を置かない

---
## 18. GUIDE SUMMARY

### 18-1. prepared
- guide content draft body set prepared
- text-only でも成立する初期ガイド資産を用意

### 18-2. initial guide examples
- yoga_morning_breath
- stretch_neck
- cardio_walk_indoor
- strength_squat_basic

### 18-3. guide principles
- 短い
- 分かりやすい
- 無理を促さない
- pain/discomfort時は stop寄り
- 医療判断しない

---
## 19. SHARE SUMMARY (FUTURE)

### 19-1. position
- future feature
- v1 実装対象外
- semantic boundary は強く準備済み

### 19-2. share principles
- summary-first
- privacy-first
- owner control first
- raw fatigue/body_condition/memo は既定共有しない
- ranking UI を作らない

### 19-3. prepared assets
- exact design
- payload and permission detail
- storage physical candidate
- share SQL draft
- share audit payload detail
- viewer UI exact design
- localized copy ledger
- ja/en copy drafts

---
## 20. AI SUPPORT SUMMARY

### 20-1. policy
- non-medical
- non-judgmental
- supportive
- practical
- privacy-respecting

### 20-2. prepared assets
- AI support response policy
- AI support template catalog
- AI support copy ledger starter
- AI support actual ja/en draft

### 20-3. disallowed
- medical diagnosis
- injury judgment
- treatment recommendation
- guaranteed outcome claims
- coercive continuation pressure

---
## 21. CROSS-DOCUMENT CONSISTENCY

### 21-1. confirmed_consistencies
- schema は life で統一
- pricing は Free / Premium(500円) で統一
- implementation は未着手で統一
- notification は support-first / safety-first
- AI support は non-medical / non-judgmental
- share は summary-first / privacy-first
- BodyMetrics inbound / MealPlanner-LifePlanner outbound summary で統一
- guide seed は ja-JP 正本で統一

### 21-2. still_future_recheck
- premium screen runtime rendering consistency
- seed master catalog vs future physical SQL key strategy
- future share UI wording vs permission model
- guide body vs future content governance workflow

---
## 22. CURRENT PROJECT POSITION

### 22-1. current_position
- design: strong and wide coverage
- implementation: not started
- db_apply: not started
- seed_execution: not started
- copy_assets: broad draft coverage available
- handoff: strongly prepared

### 22-2. what_is_done
- concept
- scope
- pricing
- payload
- schema
- db draft
- seed direction
- copy/help/support assets
- share future boundary
- handoff structure
- reading order and link map

### 22-3. what_is_intentionally_not_done
- 実DB適用
- API実装
- UI実装
- seed投入実行
- final translation QA
- exhaustive one-file concatenation of every subdocument

---
## 23. HOW TO READ NEXT

recommended_next_reading:
  - 00_TRAINING_COACH_FINAL_INTEGRATED_CANONICAL_SUMMARY.md
  - 900.meta/010.notes/9000100004_TRAINING_COACH_CANONICAL_READING_ORDER.md
  - 900.meta/010.notes/9000100005_TRAINING_COACH_CROSS_FILE_LINK_MAP.md
  - 920.meta/010.handoff/9200100003_TRAINING_COACH_HANDOFF_INVENTORY_AND_PACKAGE_GUIDE.md
  - 920.meta/010.handoff/9200100004_TRAINING_COACH_FINAL_HANDOFF_CHECKLIST.md

policy_reminder:
  - Boss 方針により現時点では実装は進めない
  - bundled output 方針を維持する
