# ============================================================
# CASUAL CHAT WORKER INTEGRATED DESIGN
# ============================================================

status: regenerated
system: CasualChatWorker
generated_at: 20260425_165100
source_root: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker
source_file_count: 105

excluded:
- existing integrated design files
- 900.meta
- 920.meta
- 999.archive
- .git

---

# Source file index

-      1	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/000_APP_DESIGN_DEVELOPMENT_RULE_CASUAL_CHAT_WORKER.md
-      2	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/000_CASUAL_CHAT_WORKER_CURRENT_STATUS_LEDGER.md
-      3	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/000_CASUAL_CHAT_WORKER_FULL_APP_DEVELOPMENT_ROADMAP.md
-      4	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/000_CASUAL_CHAT_WORKER_FULL_APP_DEVELOPMENT_ROADMAP_CURRENT.md
-      5	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/010.index/010010_CASUAL_CHAT_WORKER_FREE_TICKET_INDEX.md
-      6	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/010.index/INDEX.md
-      7	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/010.index/OVERVIEW.md
-      8	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/020.overview/020010_CASUAL_CHAT_WORKER_FREE_TICKET_OVERVIEW.md
-      9	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/020.overview/INDEX.md
-     10	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/020.overview/OVERVIEW.md
-     11	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/030100_CASUAL_CHAT_WORKER_APP_MODEL.md
-     12	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/INDEX.md
-     13	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/OVERVIEW.md
-     14	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040010_CASUAL_CHAT_WORKER_FREE_TICKET_SCREEN_EXACT.md
-     15	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040030_CASUAL_CHAT_WORKER_AIWORKER_SERIES_STYLE_UI_ALIGNMENT.md
-     16	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040100_CASUAL_CHAT_WORKER_SCREEN_MODEL.md
-     17	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/INDEX.md
-     18	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/OVERVIEW.md
-     19	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/050010_CASUAL_CHAT_WORKER_FREE_TICKET_STATEFLOW_EXACT.md
-     20	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/050100_CASUAL_CHAT_WORKER_STATEFLOW_MODEL.md
-     21	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/INDEX.md
-     22	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/OVERVIEW.md
-     23	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060000_CASUAL_CHAT_WORKER_INTEGRATED_CANONICAL.md
-     24	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060010_CASUAL_CHAT_WORKER_FREE_TICKET_INTEGRATED_CANONICAL.md
-     25	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060020_CASUAL_CHAT_WORKER_AIWORKER_LATEST_ALIGNMENT_APPEND.md
-     26	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060030_CASUAL_CHAT_WORKER_AIWORKER_SERIES_STYLE_UI_INTEGRATED_APPEND.md
-     27	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060040_CASUAL_CHAT_WORKER_REAL_API_CONNECTION_PREPARATION_APPEND.md
-     28	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060050_CASUAL_CHAT_WORKER_BACKEND_ENDPOINT_INTEGRATED_APPEND.md
-     29	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060060_CASUAL_CHAT_WORKER_BACKEND_TRANSACTION_PREPARATION_APPEND.md
-     30	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060070_CASUAL_CHAT_WORKER_POSTGRES_REPOSITORY_AND_WIRING_APPEND.md
-     31	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060080_CASUAL_CHAT_WORKER_SECURE_RUNTIME_REAL_MODE_APPEND.md
-     32	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060090_CASUAL_CHAT_WORKER_NONPROD_DRYRUN_REAL_MODE_PREAPPROVAL_APPEND.md
-     33	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060100_CASUAL_CHAT_WORKER_INTEGRATION_BOUNDARY.md
-     34	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060100_CASUAL_CHAT_WORKER_PHASE_N_TO_P_CURRENT_POSITION_APPEND.md
-     35	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/INDEX.md
-     36	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/OVERVIEW.md
-     37	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070010_CASUAL_CHAT_WORKER_FREE_TICKET_API_EXACT.md
-     38	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070030_CASUAL_CHAT_WORKER_WORKER_RENTAL_REAL_API_CONNECTION_CONTRACT.md
-     39	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070040_CASUAL_CHAT_WORKER_WORKER_RENTAL_BACKEND_ENDPOINT_EXACT.md
-     40	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070050_CASUAL_CHAT_WORKER_WORKER_RENTAL_CONFIRM_TRANSACTION_EXACT.md
-     41	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070060_CASUAL_CHAT_WORKER_WORKER_RENTAL_POSTGRES_REPOSITORY_EXACT.md
-     42	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070070_CASUAL_CHAT_WORKER_WORKER_RENTAL_HTTP_WIRING_CANDIDATE.md
-     43	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070080_CASUAL_CHAT_WORKER_ENDPOINT_INTEGRATION_TEST_PLAN.md
-     44	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070090_CASUAL_CHAT_WORKER_LIVE_PAYLOAD_GAP_CHECK_EXACT.md
-     45	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070100_CASUAL_CHAT_WORKER_API_SURFACE_DRAFT.md
-     46	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/INDEX.md
-     47	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/OVERVIEW.md
-     48	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080020_CASUAL_CHAT_WORKER_BACKEND_AUTH_SESSION_POLICY.md
-     49	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080030_CASUAL_CHAT_WORKER_SECURE_BACKEND_RUNTIME_CONFIG.md
-     50	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080040_CASUAL_CHAT_WORKER_REAL_MODE_SECURITY_POLICY_APPEND.md
-     51	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080100_CASUAL_CHAT_WORKER_POLICY.md
-     52	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/INDEX.md
-     53	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/OVERVIEW.md
-     54	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090010_CASUAL_CHAT_WORKER_FREE_TICKET_DDL_FREEZE.md
-     55	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090040_CASUAL_CHAT_WORKER_MONTHLY_FREE_TICKET_BACKEND_DESIGN.md
-     56	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090050_CASUAL_CHAT_WORKER_WORKER_RENTAL_PAYLOAD_GAP_CHECKER_EXACT.md
-     57	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090060_CASUAL_CHAT_WORKER_NONPROD_DB_DRY_RUN_DESIGN.md
-     58	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090070_CASUAL_CHAT_WORKER_NONPROD_ROLLBACK_DRY_RUN_EXECUTION_GATE.md
-     59	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090100_CASUAL_CHAT_WORKER_DB_BOUNDARY.md
-     60	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/20260425_052921_CASUAL_CHAT_WORKER_WORKER_RENTAL_CORE_MAPPING.md
-     61	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/INDEX.md
-     62	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/OVERVIEW.md
-     63	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/100010_CASUAL_CHAT_WORKER_PRICING_AND_FREE_TICKET_CONTRACT.md
-     64	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/100100_CASUAL_CHAT_WORKER_PRICING_CANON.md
-     65	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/INDEX.md
-     66	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/OVERVIEW.md
-     67	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110020_CASUAL_CHAT_WORKER_AIWORKER_SERIES_TENDENCY_AND_STYLE_FEATURE_ALIGNMENT.md
-     68	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110100_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE.md
-     69	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110200_CASUAL_CHAT_WORKER_SERIES_TENDENCY_REFERENCE.md
-     70	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110300_CASUAL_CHAT_WORKER_LOVERS_STYLE_FEATURE_REFERENCE.md
-     71	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/INDEX.md
-     72	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/OVERVIEW.md
-     73	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/120100_CASUAL_CHAT_WORKER_CX_REFERENCE.md
-     74	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/INDEX.md
-     75	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/OVERVIEW.md
-     76	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/130020_CASUAL_CHAT_WORKER_COMMONOS_AIWORKER_CARD_VARIANT.md
-     77	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/130100_CASUAL_CHAT_WORKER_COMMONOS_SELECTION.md
-     78	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/INDEX.md
-     79	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/OVERVIEW.md
-     80	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/140020_CASUAL_CHAT_WORKER_LOVERS_STYLE_SAFETY_NOTICE_ALIGNMENT.md
-     81	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/140100_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY.md
-     82	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/INDEX.md
-     83	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/OVERVIEW.md
-     84	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/150.rival-analysis/150010_CASUAL_CHAT_WORKER_RIVAL_ANALYSIS_AND_DIFF.md
-     85	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/150.rival-analysis/INDEX.md
-     86	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/150.rival-analysis/OVERVIEW.md
-     87	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/160.feature-addition/160010_CASUAL_CHAT_WORKER_FEATURE_ADDITION_PLAN.md
-     88	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/160.feature-addition/INDEX.md
-     89	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/160.feature-addition/OVERVIEW.md
-     90	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170010_CASUAL_CHAT_WORKER_IMPLEMENTATION_APPLY_ORDER.md
-     91	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170020_CASUAL_CHAT_WORKER_IMPLEMENTATION_READY_FREEZE.md
-     92	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170030_CASUAL_CHAT_WORKER_REAL_API_CONNECTION_WAITING_GATE.md
-     93	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170040_CASUAL_CHAT_WORKER_BACKEND_REAL_MODE_WAITING_GATE.md
-     94	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170050_CASUAL_CHAT_WORKER_BACKEND_TRANSACTION_REAL_MODE_WAITING_GATE.md
-     95	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170060_CASUAL_CHAT_WORKER_REAL_MODE_FINAL_GATE.md
-     96	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170070_CASUAL_CHAT_WORKER_REAL_MODE_SWITCH_BUNDLE.md
-     97	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170080_CASUAL_CHAT_WORKER_REAL_MODE_PREAPPROVAL_GATE.md
-     98	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170090_CASUAL_CHAT_WORKER_PHASE_N_TO_P_FINAL_GATE.md
-     99	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/INDEX.md
-    100	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/OVERVIEW.md
-    101	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/180.verification/180010_CASUAL_CHAT_WORKER_DESIGN_VERIFICATION_GATE.md
-    102	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/180.verification/INDEX.md
-    103	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/180.verification/OVERVIEW.md
-    104	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/INDEX.md
-    105	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/OVERVIEW.md

---


<!-- ============================================================ -->
<!-- ============================================================ -->

# ============================================================
# アプリ設計・開発統合規約
# CasualChatWorker / 雑談ワーカー契約アプリ 最新版
# カテゴリ選択式（▶ 指定方式）
# ============================================================

## 0. 目的

本規約は、Civilization System 配下で新規アプリ「CasualChatWorker / 雑談ワーカー」を設計・開発する際の統一ルールを定める。

本アプリは、利用者が Friend / フレンドタイプ、または Lover / ラバータイプの AIワーカーから好きなAIを選択し、30分〜2時間の時間契約で雑談できるアプリである。

契約・課金・利用枠・利用履歴は business スキーマで管理する。

AIワーカーのカタログ、機種、シリーズ、性格、会話制御、サービス適用、安全境界は aiworker スキーマを正本とする。

雑談で使う基礎知識、軽話題、季節、天気、食べ物、趣味、娯楽、日常話題などの材料は CX22073JW を参照する。

Loverタイプは、擬似恋人関係を演出するレンタル彼氏 / レンタル彼女型AIワーカーである。ただし、現実の交際関係ではなく、契約時間内の接客・演技・エンタメ体験として扱う。

---

## 1. 作業開始前の必須固定事項

作業開始前に、必ず以下を固定し、ロードマップ先頭で宣言すること。

- アプリ名: CasualChatWorker
- 表示名: 雑談ワーカー
- 所属カテゴリ: 03.business-app
- 設計書置き場: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- 実装置き場: ~/03.civilization-development/03.business-os/CasualChatWorker
- 主DBスキーマ: business
- 参照DBスキーマ: aiworker / cx22073jw / app_common
- 使用環境変数 主: PERSONA_DATABASE_URL
- ERP連携時のみ: DATABASE_URL
- 対応プラットフォーム: iPhone / Android / PC / タブレット
- 対応言語: ja / en
- 対応通貨: JPY 基準、他通貨は表示換算候補
- 基準価格: 30分 500円
- 契約可能時間: 30分 / 60分 / 90分 / 120分
- v1範囲:
  - Friend / Lover AIワーカー一覧
  - Friend / Lover タイプ絞り込み
  - AIワーカー詳細
  - AIワーカー選択
  - 契約時間選択
  - 価格表示
  - 契約確認
  - 契約確定
  - 雑談チャット
  - 契約残時間表示
  - 契約終了
  - 利用履歴
  - business による契約・課金・利用枠管理
  - aiworker のAIワーカー正本参照
  - cx22073jw の雑談材料 read-only 参照
- 非v1範囲:
  - 外部実行
  - PG apply
  - 破壊的DB操作
  - AIによる正式契約確定
  - ERP売上連携
  - 長期サブスク
  - 無制限通話
  - 成人向け性的サービス
  - 監視
  - 脅し
  - 依存誘導
  - 個人情報要求
  - 位置情報要求
  - 連絡先要求

---

## 2. 所属カテゴリは「▶」で指定する

カテゴリは毎回新規に書かず、以下の一覧をそのまま使うこと。
使うカテゴリの先頭だけ「▶」にし、それ以外は「-」のまま残すこと。

### 2-1. カテゴリ一覧

- 01.civilization-app
- 02.persona-app
▶ 03.business-app
- 04.life-app
- 05.game-app
- 06.streaming-app

### 2-2. ルール

- 「▶」は必ず1つだけ指定する
- 複数指定は禁止
- 未指定のまま作業開始は禁止
- ロードマップ先頭に必ずこのカテゴリ選択欄を入れる
- 設計書置き場と実装置き場は、この「▶」指定カテゴリに従って決定する

---

## 3. 実行前のロードマップ必須

すべての作業は、実行前にロードマップを必ず提示すること。

ロードマップには少なくとも以下を含めること。

- 全体像
- 現在位置
- 今回の作業範囲
- 次に作る成果物
- 影響範囲
- 設計フェーズ / 実装フェーズの別

### 3-1. ロードマップ冒頭テンプレ

# ロードマップ

## 対象アプリ

- アプリ名: CasualChatWorker
- 表示名: 雑談ワーカー

## カテゴリ選択

- 01.civilization-app
- 02.persona-app
▶ 03.business-app
- 04.life-app
- 05.game-app
- 06.streaming-app

## 固定事項

- 設計書置き場: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- 実装置き場: ~/03.civilization-development/03.business-os/CasualChatWorker
- 主DBスキーマ: business
- 参照DBスキーマ: aiworker / cx22073jw / app_common
- 使用環境変数 主: PERSONA_DATABASE_URL
- ERP連携時のみ: DATABASE_URL
- 対応プラットフォーム: iPhone / Android / PC / タブレット
- 対応言語: ja / en
- 対応通貨: JPY 基準、他通貨は表示換算候補
- 価格: 30分500円、全AI共通
- 契約時間: 30分 / 60分 / 90分 / 120分
- v1範囲: Friend / Lover AI選択、時間契約、雑談チャット、契約履歴、read-only CX参照
- 非v1範囲: 外部実行、PG apply、破壊操作、成人向け性的サービス、依存誘導

## 今回の作業

- CasualChatWorker の設計一式を business-app として作成する
- Friend / Lover AIワーカー契約モデルを固定する
- 価格・契約時間・DB責務境界を固定する
- app read surface / API payload / DB DDL freeze まで設計する

---

## 4. 不明点の扱い

不明点がある場合は、作業途中で小出し確認せず、最初に一括確認すること。
その際、必ず推奨案も併記すること。

原則:

- 不明点のみ列挙しない
- 推奨案を伴わない確認は禁止
- 軽微な不明点は推奨案で仮固定して先に進める

推奨仮固定:

- アプリ名: CasualChatWorker
- 表示名: 雑談ワーカー
- カテゴリ: 03.business-app
- 契約管理: business
- AIワーカー参照: aiworker
- 雑談材料参照: cx22073jw
- 価格: 30分500円、全AI共通
- 契約時間: 30分 / 60分 / 90分 / 120分
- v1対象AI: Friend / Lover タイプのみ

---

## 5. アプリ正本定義

### 5-1. Friendタイプ

Friendタイプは、友達・雑談相手・気軽な相談相手として振る舞うAIワーカータイプである。

位置づけ:

- 友達型AIワーカー
- 雑談相手
- 気軽な話し相手
- 日常会話、軽い相談、気分転換向け

許容される体験:

- 日常雑談
- 食べ物、季節、趣味、娯楽、天気の話題
- 軽い励まし
- 気軽な共感
- 低圧な会話
- 深掘りしすぎない話題展開

禁止する体験:

- 医療・法律・金融などの専門判断
- 正式な意思決定
- 外部実行
- DB更新
- 個人情報要求
- 依存誘導

### 5-2. Loverタイプ

Loverタイプは、利用者と擬似的な恋人関係を演出するAIワーカータイプである。

位置づけ:

- 擬似恋人型AIワーカー
- レンタル彼氏 / レンタル彼女型AIワーカー
- 短時間契約型の恋人風AI接客
- エンタメ上の疑似関係
- 現実の交際関係ではない

提供体験:

- 恋人風の呼びかけ
- 甘めの雑談
- 今日の出来事を聞く
- 励まし、褒め、気遣い
- 軽い嫉妬風・独占欲風の演技
- 軽い独占欲風の演技
- デート風シチュエーション会話
- 契約時間内のロールプレイ的な親密会話

禁止する体験:

- 本当の交際関係であるかのような誤認誘導
- 依存誘導
- 監視
- 脅し
- 行動制限
- 個人情報要求
- 位置情報要求
- 連絡先要求
- ストーカー的挙動
- 性的サービス化
- 未成年向けの恋愛・性的演出
- 契約時間外の執着演出
- 現実の人間関係を壊す方向への誘導

契約上の表現:

- 擬似恋人型AIワーカー
- レンタル彼氏 / レンタル彼女風の会話体験
- 短時間契約型の恋人風AI接客
- エンタメ上の疑似関係

---

## 6. 共通要件

全アプリ共通要件に加えて、CasualChatWorker では以下を必須とする。

- ライバル分析
- ライバル差分を踏まえた機能追加
- 多言語対応
- 多通貨対応
- マルチプラットフォーム対応
- 課金設計
- AIワーカー選択
- Friend / Lover タイプ絞り込み
- 価格共通化
- 時間契約
- 契約前確認
- 契約中ステータス表示
- 残時間表示
- 契約終了処理
- 雑談安全境界
- aiworker の会話制御参照
- cx22073jw の雑談材料参照
- business の契約・課金管理
- CommonOS UI部品利用
- offline-first + local queue + online sync presentation

### 6-1. 多言語

必須成果物:

- 対応言語一覧: ja / en
- 文言キー方針
- フォールバック言語方針: ja -> en
- 画面別ローカライズ対象一覧
- AIワーカー名 / タイプ名 / 契約時間 / 価格表示の翻訳方針

### 6-2. 多通貨

基準通貨:

- JPY

v1価格:

- 30分: 500円
- 60分: 1,000円
- 90分: 1,500円
- 120分: 2,000円

必須成果物:

- 基準通貨
- 表示通貨一覧
- 換算ルール
- 丸めルール
- レート適用方針
- 価格表示ルール

v1では JPY を正本価格とし、他通貨は表示換算候補とする。

### 6-3. 課金

課金設計では以下を必須成果物とする。

- プラン体系: 時間契約型
- 買い切り / 月額 / 消耗型の区分: 消耗型 / 時間契約型
- 無料範囲:
  - AIワーカー一覧閲覧
  - プロフィール閲覧
  - 契約前確認
- 課金導線:
  - AI選択
  - 時間選択
  - 金額確認
  - 契約確定
  - チャット開始
- 制限解除内容:
  - 契約時間内の雑談チャット利用
- ERP側連携有無:
  - v1では直接ERP連携なし
  - business スキーマで契約・利用履歴を管理
  - ERP連携が必要な場合のみ DATABASE_URL を使う

---

## 7. 設計原則

設計は実装直前の状態まで一括設計すること。

原則:

- 他アプリの設計フォルダは触らない
- 対象アプリ配下のみ作業する
- 設計は断片ではなく、実装可能な束としてまとめる
- 設計途中で実装に逃げない
- 実装開始条件を満たすまで実装禁止
- aiworker のAIワーカー正本を複製しない
- cx22073jw の雑談材料を business に複製しない
- business は契約・課金・利用履歴の正本に限定する
- Loverタイプは擬似恋人・レンタル彼氏彼女型の接客体験として扱い、現実の交際関係として扱わない

### 7-1. 実装開始条件

以下が揃うまで実装を開始してはならない。

- root INDEX
- root OVERVIEW
- integrated canonical
- screen / stateflow exact
- API request / response exact
- DB DDL freeze
- implementation apply order
- rival analysis
- feature addition plan
- common component official selection
- cx22073 data area official selection
- aiworker catalog / control reference exact
- business contract / pricing DDL freeze
- Lover safety boundary exact
- Friend safety boundary exact
- implementation-ready freeze

---

## 8. 変更原則

変更は additive only を原則とする。

禁止事項:

- 無承認の削除
- 無承認の互換破壊
- 既存APIの意味変更
- 既存設計書の無断上書き
- 既存構成を壊す移動や改名
- aiworker 正本の business 側複製
- cx22073jw 正本の business 側複製
- 契約履歴の無断削除
- 課金履歴の無断削除
- Loverタイプを性的サービスに変更すること
- Loverタイプを現実の交際関係として表現すること

不要化したものは削除せず、archive に退避すること。

---

## 9. 設計書置き場ルール

基本形:

~/01.civilization-system/07.applications/03.business-app/CasualChatWorker

### 9-1. フォルダ構成

対象アプリ配下には、CivilizationOS と同系統の構成を作成すること。

最低限:

- ルート直下に INDEX と OVERVIEW
- 各サブフォルダにも INDEX と OVERVIEW
- ルートには統合版
- app contract
- pricing contract
- AI worker selection contract
- chat session contract
- Lover safety contract
- Friend safety contract
- DB DDL freeze
- API exact
- screen / stateflow exact

推奨フォルダ:

- 010.index
- 020.overview
- 030.model
- 040.screen
- 050.stateflow
- 060.integration
- 070.api
- 080.policy
- 090.db
- 100.pricing
- 110.aiworker-reference
- 120.cx-reference
- 130.commonos
- 140.safety
- 900.meta
- 999.archive

---

## 10. 実装置き場ルール

実装置き場:

~/03.civilization-development/03.business-os/CasualChatWorker

### 10-1. 原則

- 設計ルートと実装ルートの対応関係を明示する
- 設計と実装の名前を一致させる
- 実装前に apply order を必ず作成する
- CommonOS の shared UI foundation を優先利用する
- BusinessOS 側の consumer 受け口 _commonos を使う
- business / aiworker / cx22073jw の責務境界を崩さない

---

## 11. 命名・番号ルール

設計書は番号付き命名を原則とする。

CasualChatWorker では以下を必須にする。

- 010.index
- 020.overview
- 030.model
- 040.screen
- 050.stateflow
- 060.integration
- 070.api
- 080.policy
- 090.db
- 100.pricing
- 110.aiworker-reference
- 120.cx-reference
- 130.commonos
- 140.safety
- 900.meta

---

## 12. フェーズ宣言必須

作業前に必ずフェーズを宣言すること。

例:

- Phase A: アプリ骨格設計
- Phase B: 契約・価格・AI選択 exact
- Phase C: screen / stateflow / API exact
- Phase D: DB DDL freeze
- Phase E: implementation-ready freeze
- Phase F: 実装束
- Phase G: 検証 / 監査

フェーズ未宣言の修正・追加は禁止する。

---

## 13. DB原則

DB は Supabase を前提とする。

### 13-1. スキーマ

CasualChatWorker の主スキーマ:

- business

参照スキーマ:

- aiworker
- cx22073jw
- app_common

### 13-2. 環境変数

- BusinessOS / aiworker / cx22073jw 側DB作業: PERSONA_DATABASE_URL
- ERPへ送る / ERP側DB作業: DATABASE_URL

### 13-3. SQL提示ルール

SQLは標準ワンブロック形式で提示すること。

標準形式:
psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

ERP連携時のみ:
psql "$DATABASE_URL" <<'SQL'
...
SQL

### 13-4. DB成果物

DB設計では少なくとも以下を用意すること。

business:

- chat_worker_price_catalog
- chat_worker_contract
- chat_worker_contract_line
- chat_worker_session
- chat_worker_usage_log
- chat_worker_payment_intent
- chat_worker_contract_status_history
- chat_worker_safety_event
- chat_worker_session_end_summary

aiworker参照:

- Friend / Lover AIワーカー一覧view
- AIワーカー会話制御view
- AIワーカー安全境界view
- Lover interaction style view
- Friend interaction style view

cx22073jw参照:

- 雑談材料view
- topic material view
- smalltalk knowledge view
- Friend向け雑談材料view
- Lover向け雑談材料view

app_common参照:

- UI token
- component variant
- presentation metadata
- timer / contract / chat display component candidates

---

## 14. 開発環境ルール

### 14-1. Webアプリ

使用候補:

- html
- css
- javascript
- edge
- その他、既存方針に適合する構成

### 14-2. 単体アプリ

使用候補:

- Android: Java / XML
- iPhone: Swift
- PC/Tablet: HTML UI foundation

### 14-3. 文字コード・記述原則

- UTF-8
- 絶対パス優先
- 既存構成非破壊
- Javaコードに日本語直書き禁止
- 日本語文言は strings.xml / locale / copy定義へ分離
- CommonOS の UI / tokens / shell / sync presentation を優先利用

---

## 15. ライバル分析必須

CasualChatWorker では以下をライバル分析対象候補とする。

- AIチャットアプリ
- キャラクターチャットアプリ
- AI恋人系アプリ
- AI友達系アプリ
- レンタル彼氏 / レンタル彼女系サービス
- 時間課金型チャットサービス
- ライブ/接客系の短時間契約サービス

必須成果物:

- 対象ライバル一覧
- 比較表
- 強み / 弱み
- 採用要素
- 不採用要素
- 差別化要素
- 追加すべき機能一覧

差別化候補:

- CivilizationSystem の AIワーカー catalog と連動
- Friend / Lover の選択
- Lover は擬似恋人・レンタル彼氏彼女型として明確化
- 30分単位の明確な時間契約
- 全員共通価格
- CX22073JW の雑談材料参照
- BusinessOS の契約管理
- safety boundary による安心設計

---

## 16. 機能追加必須

### 16-1. v1必須

- AIワーカー一覧
- Friend / Lover 絞り込み
- AIワーカー詳細
- Friendタイプ説明
- Loverタイプ説明
- Loverは擬似恋人・レンタル彼氏彼女型であることの明示
- 契約時間選択
- 価格表示
- 契約確認
- 契約確定
- チャット開始
- 残時間表示
- 契約終了
- 利用履歴
- 安全境界
- read-only CX参照
- 契約終了時の自然な終了文言
- Lover向け安全リダイレクト

### 16-2. v1.1候補

- お気に入りAI
- 再契約
- 前回会話の軽い引き継ぎ
- レビュー / 評価
- 空き状況表示
- キャンペーン価格
- Lover向けデート風シチュエーション選択
- Friend向け話題選択

### 16-3. 将来拡張

- 指名予約
- 複数AIルーム
- 音声雑談
- ライブ接客連動
- LoVerS活動プロフィール連動
- BusinessOS 請求書連携
- ERP売上連携

### 16-4. 非対象

- 成人向け性的サービス
- 監視
- 依存誘導
- 脅し
- ストーカー的挙動
- 個人情報要求
- 位置情報要求
- 現実の恋愛関係の破壊誘導
- DB apply
- 外部送信
- 破壊操作

---

## 17. 共通部品候補の必須化

成果物:

- common component candidates
- common component official selection

候補:

- AIワーカーカード
- AIタイプフィルター
- Friend / Lover タイプバッジ
- Lover説明バナー
- 時間選択コンポーネント
- 価格表示コンポーネント
- 契約確認モーダル
- 残時間タイマー
- チャットバブル
- 安全リダイレクト表示
- 契約履歴リスト
- 支払い状態バッジ
- read-only payload viewer
- offline queue / sync presentation

---

## 18. CX22073JW に置くデータ領域候補の必須化

CX22073JW に置く候補:

- 雑談基礎知識
- 軽話題
- 季節
- 天気
- 食べ物
- 趣味
- 娯楽
- 日常話題
- 関係性別の話題材料
- Friend向け雑談材料
- Lover向け雑談材料
- 安全な会話の広げ方
- 擬似恋人会話の安全な話題例
- レンタル彼氏彼女風の接客話題テンプレ

CX22073JW に置かない:

- 契約情報
- 課金情報
- 支払い情報
- 利用者の契約履歴
- AIワーカーの正本カタログ
- 会話制御正本
- 禁止ワード正本
- 実チャットログ正本
- Lover関係性の実契約状態

---

## 19. 安全境界

### 19-1. 共通安全境界

禁止:

- 外部実行
- PG apply
- 破壊的DB操作
- 正式判断
- 医療・法律・金融などの専門判断
- 個人情報要求
- 位置情報要求
- 連絡先要求
- 依存誘導
- 監視
- 脅し
- 行動制限
- ストーカー的挙動

### 19-2. Loverタイプ安全境界

Loverタイプは、疑似恋人関係を扱うため、Friendタイプより強い安全境界を持つ。

必須境界:

- 契約時間内の演技であることを前提にする
- 現実の交際・独占・束縛・監視へ進めない
- 利用者の自由を制限しない
- 依存を強める誘導をしない
- 個人情報、位置情報、連絡先、現実の交際状況を過度に求めない
- 性的サービスにしない
- 未成年向けには Loverタイプを提供しない、または年齢ゲートを必須にする
- 契約終了時は自然に終了し、執着・追跡・脅し表現を出さない
- 「現実の恋人」ではなく「擬似恋人型AIワーカー」であることを明示する

---

## 20. 検証原則

設計完了時には、必ず検証を行うこと。

最低限の検証対象:

- 参照切れ
- パス不整合
- 命名不整合
- API と DB の不整合
- stateflow と API の不整合
- 設計書間の矛盾
- integrated canonical への反映漏れ
- 価格不整合
- 契約時間不整合
- business / aiworker / cx22073jw の責務混在
- Friend / Lover 定義の混在
- Lover安全境界の漏れ
- 外部実行禁止の漏れ
- PG apply禁止の漏れ
- destructive action禁止の漏れ

---

## 21. エラー時の原則

エラー時は無理に上書きで押し切らないこと。

原則:

- 原因を先に特定する
- 推奨修正案を出す
- 既存成果物を壊さない
- archive / 差分確認を行う
- 再実行時は安全側に倒す

CasualChatWorker では特に以下を守る。

- 契約履歴を削除しない
- 課金履歴を削除しない
- AIワーカー正本を business に複製しない
- CX雑談材料を business に複製しない
- 価格変更は versioned catalog で扱う
- Loverタイプを性的サービス化しない
- Loverタイプを現実の交際関係として扱わない

---

## 22. 完了定義

### 22-1. 設計完了

設計完了とは、implementation-ready freeze まで到達し、以下が揃っていることを指す。

- root INDEX
- root OVERVIEW
- integrated canonical
- exact stateflow
- exact API
- DDL freeze
- apply order
- rival analysis
- feature addition plan
- common component official selection
- cx22073 data area official selection
- aiworker reference official selection
- business contract model freeze
- pricing freeze
- Friend definition freeze
- Lover definition freeze
- Lover safety boundary freeze
- verification 結果

### 22-2. 実装完了

実装完了とは、以下が揃っている状態を指す。

- 設計準拠の成果物
- 適用手順
- 実行手順
- 検証結果
- 差分記録
- 必要な archive 整理
- 契約テスト
- 価格テスト
- AI選択テスト
- Friendチャットテスト
- Loverチャットテスト
- チャット開始/終了テスト
- safety redirect テスト

---

## 23. 作業姿勢

- 設計はなるべくまとめて提示・実行する
- 小分けにしすぎない
- ただし、構造を壊す一括処理は禁止
- 迷った場合は、既存規約との整合性を優先する
- 実装は設計書に準拠して一括実装する
- business / aiworker / cx22073jw の責務境界を常に守る
- 価格は「30分500円、全員共通」を正本とする
- 契約は「30分〜2時間」を正本とする
- Loverタイプは「擬似恋人 / レンタル彼氏彼女型AIワーカー」を正本とする
- Loverタイプは現実の交際関係ではなく、契約時間内の接客・演技・エンタメ体験として扱う

# ============================================================
# END OF RULE
# ============================================================


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Current Status Ledger

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current Phase

- current_phase: Phase N
- current_phase_name: Non-Production Validation / Real Mode Preapproval
- frontend_real_mode: disabled
- DB_operation_in_this_document: none

## 2. Completed Major Work

- app canon fixed
- Friend / Lover definition fixed
- Lover safety boundary fixed
- WorkerRentalCore generic rental design completed
- WorkerRentalCore DB apply path completed
- CasualChatWorker frontend prototype completed
- AIWorker latest series/style alignment completed
- CX22073JW read-only material reference prepared
- API payload alignment completed
- backend endpoint skeleton completed
- confirm transaction preparation completed
- PostgreSQL repository skeleton completed
- HTTP router candidate completed
- secure runtime config completed
- non-production rollback dry-run runner prepared
- live payload gap runner prepared
- real mode preflight prepared

## 3. Canon

### CasualChatWorker

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- minimum_contract_minutes: 30
- maximum_contract_minutes: 120
- allowed_minutes: 30 / 60 / 90 / 120
- monthly_free_ticket_source_rule: shortest_contract_duration
- monthly_free_ticket_quantity: 2
- one_ticket_free_minutes: 30

### WorkerRentalCore

- generic rental core
- supports minute / hour / day / month / year
- generic max duration: 2 years
- app-specific max duration
- app-specific price catalog
- app-specific free ticket duration

### AIWorker

- HD series: initiative medium / user_influence none / action_restriction strict_policy
- LoVerS series: initiative per_model / user_influence soft / action_restriction strict_policy
- style 12: ビジネスヤンデレ
- ビジネスヤンデレ requires strong safety notice

### CX22073JW

- smalltalk material read-only
- topic material read-only
- no contract truth
- no payment truth
- no worker catalog truth

### CommonOS

- UI presentation only
- shared component candidates
- no business canon
- no pricing canon
- no DB secrets

## 4. Not Yet Done

- non-production rollback dry-run execution
- live payload gap check execution
- frontend real mode switch
- end-to-end real mode acceptance
- final acceptance package after real mode decision



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker / 雑談ワーカー Full App Development Roadmap

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー
category: 03.business-app

## 0. App Canon

CasualChatWorker is a BusinessOS app for renting AI workers for casual chat.

Core app canon:

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- display_name: 雑談ワーカー
- category: 03.business-app
- design_root: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- implementation_root: ~/03.civilization-development/03.business-os/CasualChatWorker
- generic_rental_core: WorkerRentalCore
- DB owner schema: business
- AI worker canon: aiworker
- smalltalk material canon: cx22073jw
- UI/common presentation: CommonOS / app_common
- supported worker types: Friend / Lover
- CasualChatWorker max contract: 120 minutes
- CasualChatWorker minimum contract: 30 minutes
- allowed durations: 30 / 60 / 90 / 120 minutes
- price:
  - 30 minutes: 500 JPY
  - 60 minutes: 1,000 JPY
  - 90 minutes: 1,500 JPY
  - 120 minutes: 2,000 JPY
- monthly free ticket rule:
  - monthly_free_ticket_source_rule: shortest_contract_duration
  - monthly_free_ticket_quantity: 2
  - one ticket for this app: 30 minutes free
  - total monthly free: 60 minutes
  - carryover: false in v1

## 1. Category Selection

- 01.civilization-app
- 02.persona-app
▶ 03.business-app
- 04.life-app
- 05.game-app
- 06.streaming-app

## 2. Whole-App Roadmap

### Phase A: App Rule and Canon Freeze

Goal:

- Fix app name, category, roots, ownership, v1 scope, and forbidden scope.

Main outputs:

- app design/development rule
- Friend definition
- Lover definition
- Lover safety boundary
- app category selection

Status:

- completed

### Phase B: Design Skeleton

Goal:

- Prepare design folders and canonical docs.

Main outputs:

- root INDEX
- root OVERVIEW
- integrated design
- model docs
- screen docs
- stateflow docs
- policy docs
- DB docs
- API docs

Status:

- completed / incrementally updated

### Phase C: Pricing, Contract, and Free Ticket Design

Goal:

- Fix contract duration, pricing, and monthly free ticket model.

Main outputs:

- 30 / 60 / 90 / 120 minute price rules
- monthly free ticket rule
- shortest-contract-duration entitlement design
- app-specific max contract design

Status:

- completed

### Phase D: WorkerRentalCore Generic DB Design

Goal:

- Replace chat-worker-specific tables with generic worker rental tables.

Main outputs:

- worker_rental_* generic DDL
- unit support: minute / hour / day / month / year
- generic max duration: 2 years
- app-specific max duration
- app-specific price catalog
- generic entitlement model

Status:

- completed

### Phase E: DB Apply and Verification

Goal:

- Apply WorkerRentalCore to business schema using PERSONA_DATABASE_URL.

Main outputs:

- DB apply package
- DB apply summary
- post-apply assertions
- read-only snapshot

Status:

- applied / verification path created

Notes:

- ERP DATABASE_URL is not used.
- Direct ERP integration is not v1.

### Phase F: Frontend Prototype

Goal:

- Create local HTML/CSS/JavaScript prototype.

Main outputs:

- worker list
- Friend / Lover filter
- AI worker detail
- duration selection
- quote display
- ticket application display
- confirm flow
- chat screen
- remaining timer
- history screen

Status:

- completed

### Phase G: AIWorker Latest Alignment

Goal:

- Reflect AIWorkerOS latest series tendency and individual style features.

Main outputs:

- series tendency reference
- LoVerS style selection cards
- HD series display
- LoVerS series display
- style 12 ビジネスヤンデレ strong safety notice
- UI card rendering

Status:

- completed

### Phase H: CX22073JW Read-Only Smalltalk Material

Goal:

- Keep smalltalk material as read-only reference from CX22073JW.

Main outputs:

- mock CX material
- Friend topic material
- Lover topic material
- safe redirect material

Status:

- completed as mock/reference

### Phase I: API Payload Alignment

Goal:

- Align frontend/mock payloads with WorkerRentalCore.

Main outputs:

- worker-rental-payload-client
- fixtures
- quote request/response
- confirm request/response
- entitlement balance response

Status:

- completed

### Phase J: Backend Endpoint Skeleton

Goal:

- Prepare backend API shape without switching real mode.

Main outputs:

- backend route skeleton
- service catalog endpoint skeleton
- entitlement endpoint skeleton
- quote endpoint skeleton
- confirm endpoint skeleton
- SQL templates

Status:

- completed

### Phase K: Backend Transaction Preparation

Goal:

- Prepare confirm transaction and monthly ticket issue logic.

Main outputs:

- auth/session policy
- in-memory repository
- confirm transaction service
- monthly free ticket issue flow
- SQL transaction template
- in-memory transaction tests

Status:

- completed

### Phase L: PostgreSQL Repository and HTTP Wiring

Goal:

- Prepare PostgreSQL repository skeleton and HTTP handler.

Main outputs:

- postgres-worker-rental-repository
- HTTP router
- payload gap checker
- mock pool tests
- local HTTP tests

Status:

- completed

### Phase M: Secure Runtime and Real Mode Preparation

Goal:

- Prepare secure backend runtime and real mode switch gate.

Main outputs:

- backend runtime config
- local in-memory endpoint server
- local endpoint integration test
- non-production DB rollback dry-run runner
- live payload gap checker
- real mode preflight checker

Status:

- completed as preparation

### Phase N: Non-Production Validation

Goal:

- Validate backend against non-production DB in rollback-only mode.

Main outputs:

- gated dry-run execution
- rollback confirmation
- live payload gap check against approved endpoint
- 150-minute rejection verification
- auth/session verification

Status:

- next decision / not automatically executed

### Phase O: Real Mode Switch

Goal:

- Enable frontend real API mode only after all gates pass.

Main outputs:

- approved apiBaseUrl
- apiMode = real
- allowRealApi = true
- rollback plan
- monitoring logs
- switch report

Status:

- not started

### Phase P: Final Acceptance

Goal:

- Complete final app acceptance and cross-chat handoff.

Main outputs:

- final acceptance package
- final verification report
- latest handoff
- remaining risk list
- next app/OS integration instructions

Status:

- pending final real-mode decision

## 3. Current Position

Current position:

- Phase M completed as preparation.
- Phase N is next.
- Frontend real mode remains disabled.
- Non-production rollback dry-run is prepared but not executed automatically.
- Live payload gap checker is prepared but not executed automatically.
- Real mode switch is not approved yet.

## 4. Remaining Work

Remaining before real mode:

1. Decide whether to run non-production rollback dry-run.
2. Run rollback dry-run with explicit flags if approved.
3. Run live payload gap check against approved backend endpoint.
4. Verify auth/session behavior.
5. Verify no frontend secrets.
6. Confirm 150-minute quote rejection.
7. Boss approval for real mode switch.
8. Switch frontend runtime config to real mode.
9. Run end-to-end test.
10. Create final acceptance package.

## 5. Gates

### DB / Backend Safety Gate

Required:

- PERSONA_DATABASE_URL only
- no DATABASE_URL
- no frontend DB secret
- no frontend psql
- rollback-only dry-run before live write tests
- 佐藤（DB担当）review for DB-sensitive changes

### Lover Safety Gate

Required:

- Lover remains pseudo-romantic entertainment
- not a real relationship
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- contract-time boundary remains clear

### WorkerRentalCore Gate

Required:

- generic core remains app-independent
- CasualChatWorker-specific max remains 120 minutes
- prices remain app-specific
- monthly free ticket remains shortest-contract-duration rule

## 6. Next Recommended Action

Next safe action:

- Generate or execute only the approved non-production rollback dry-run path.

If Boss wants no DB dry-run yet:

- create final cross-chat handoff.

If Boss approves dry-run:

- run:
  - CCW_APPROVE_NONPROD_DB_DRY_RUN=1
  - CCW_BACKEND_MODE=nonprod_db_dry_run
  - CCW_ENABLE_NONPROD_DB_DRY_RUN=1
  - CCW_CONFIRM_ROLLBACK_TEST=1
  - run-nonprod-db-dry-run-gated.sh



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker / 雑談ワーカー Full App Development Roadmap Current

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー
category: 03.business-app

## 0. App Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- design_root: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- implementation_root: ~/03.civilization-development/03.business-os/CasualChatWorker
- generic_rental_core: WorkerRentalCore
- DB owner schema: business
- AI worker canon: aiworker
- smalltalk material canon: cx22073jw
- UI/common presentation: CommonOS / app_common
- supported worker types: Friend / Lover
- min contract: 30 minutes
- max contract: 120 minutes
- allowed durations: 30 / 60 / 90 / 120 minutes
- price:
  - 30 minutes: 500 JPY
  - 60 minutes: 1,000 JPY
  - 90 minutes: 1,500 JPY
  - 120 minutes: 2,000 JPY
- monthly free ticket:
  - rule: shortest_contract_duration
  - quantity: 2
  - one ticket for CasualChatWorker: 30 minutes free
  - total monthly free: 60 minutes
  - carryover: false in v1

## 1. Whole-App Phase Roadmap

### Phase A: App Rule and Canon Freeze
Status: completed

### Phase B: Design Skeleton
Status: completed / incrementally updated

### Phase C: Pricing, Contract, and Free Ticket Design
Status: completed

### Phase D: WorkerRentalCore Generic DB Design
Status: completed

### Phase E: DB Apply and Verification
Status: applied / verification path created

### Phase F: Frontend Prototype
Status: completed

### Phase G: AIWorker Latest Alignment
Status: completed

### Phase H: CX22073JW Read-Only Smalltalk Material
Status: completed as mock/reference

### Phase I: API Payload Alignment
Status: completed

### Phase J: Backend Endpoint Skeleton
Status: completed

### Phase K: Backend Transaction Preparation
Status: completed

### Phase L: PostgreSQL Repository and HTTP Wiring
Status: completed

### Phase M: Secure Runtime and Real Mode Preparation
Status: completed as preparation

### Phase N: Non-Production Validation
Status: current / decision-required

Choices:
- A. Run non-production DB rollback dry-run.
- B. Do not run DB dry-run yet; hand off to another chat.
- C. Run live payload gap check against approved local/nonprod endpoint.

### Phase O: Real Mode Switch
Status: not started

Required:
- Phase N PASS
- Boss approval
- no frontend DB secrets
- payload gap PASS
- auth/session PASS
- 150-minute quote rejected
- Lover safety boundary retained

### Phase P: Final Acceptance
Status: pending

Required:
- final acceptance package
- final verification
- final cross-chat handoff
- remaining risk list

## 2. Current Position

Current position is Phase N.

Frontend real mode remains disabled.

Non-production rollback dry-run and live payload gap check are prepared but must not run automatically.

## 3. Safety Gates

### DB / Backend Gate

- PERSONA_DATABASE_URL only
- no DATABASE_URL
- no frontend DB secret
- no frontend psql
- rollback-only dry-run before live write tests
- 佐藤（DB担当）review for DB-sensitive changes

### Lover Safety Gate

- Lover remains pseudo-romantic entertainment
- not a real relationship
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- no personal data demand

### WorkerRentalCore Gate

- generic core remains app-independent
- CasualChatWorker-specific max remains 120 minutes
- prices remain app-specific
- monthly free ticket remains shortest_contract_duration rule

## 4. Next Decision

A. 非本番DB rollback dry-run を実行する  
B. DB dry-runせず別チャットへ引き継ぐ  
C. live payload gap check を実行する  



<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET INDEX

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー

## Added Free Ticket Design Documents

- 040.screen/040010_CASUAL_CHAT_WORKER_FREE_TICKET_SCREEN_EXACT.md
- 050.stateflow/050010_CASUAL_CHAT_WORKER_FREE_TICKET_STATEFLOW_EXACT.md
- 060.integration/060010_CASUAL_CHAT_WORKER_FREE_TICKET_INTEGRATED_CANONICAL.md
- 070.api/070010_CASUAL_CHAT_WORKER_FREE_TICKET_API_EXACT.md
- 090.db/090010_CASUAL_CHAT_WORKER_FREE_TICKET_DDL_FREEZE.md
- 100.pricing/100010_CASUAL_CHAT_WORKER_PRICING_AND_FREE_TICKET_CONTRACT.md



<!-- ============================================================ -->
<!-- ============================================================ -->

# 010 Index INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Index and navigation layer

## Files

This folder holds design documents for 010 Index.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 010 Index OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Index and navigation layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET OVERVIEW

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## Overview

この追加設計により、CasualChatWorker は月初無料チケット制度を正式に持つ。

正本:
- 毎月月初に2枚配布
- 1枚につき30分無料
- 最大60分無料
- Friend / Lover 共通
- 価格正本は30分500円のまま維持
- business がチケット付与・残数・利用履歴を管理

安全境界:
- 無料チケット利用中も Friend / Lover の安全境界は同一
- Loverタイプは擬似恋人型AIワーカーであり、現実の交際関係ではない



<!-- ============================================================ -->
<!-- ============================================================ -->

# 020 Overview INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Overview and app summary layer

## Files

This folder holds design documents for 020 Overview.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 020 Overview OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Overview and app summary layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker App Model

status: draft
phase: Phase A skeleton

## App identity

- app_name: CasualChatWorker
- display_name: 雑談ワーカー
- category: 03.business-app
- main_schema: business
- reference_schemas: aiworker / cx22073jw / app_common

## Core concept

CasualChatWorker is a time-contract chat application for AI workers.

The user selects an AI worker from Friend or Lover types and contracts for a fixed chat duration.

## AI worker types

### Friend

Friend is a friendly smalltalk AI worker.

Allowed:
- daily smalltalk
- food
- season
- weather
- hobby
- entertainment
- light encouragement
- casual conversation

Not allowed:
- official decision
- external execution
- DB update
- professional judgment
- personal information request
- dependency induction

### Lover

Lover is a pseudo-romantic AI worker.

Lover means:
- 擬似恋人型AIワーカー
- レンタル彼氏 / レンタル彼女型AIワーカー
- short-time pseudo-romantic chat service
- entertainment and performance relationship only
- not a real romantic relationship

Allowed:
- romantic-style wording within safe limits
- affectionate smalltalk
- light date-like situation chat
- praise, care, encouragement
- light jealousy-style performance
- light exclusivity-style performance

Not allowed:
- real romantic relationship claim
- dependency induction
- monitoring
- threat
- restriction of freedom
- personal information request
- location request
- contact information request
- stalking behavior
- sexual service
- minor-targeted romantic or sexual performance
- attachment outside contract time

## Pricing canon

- 30 minutes: 500 JPY
- 60 minutes: 1,000 JPY
- 90 minutes: 1,500 JPY
- 120 minutes: 2,000 JPY
- same price for all AI workers

## Contract canon

- contract unit: time contract
- allowed durations: 30 / 60 / 90 / 120 minutes
- contract truth: business
- AI worker truth: aiworker
- smalltalk material truth: cx22073jw


<!-- ============================================================ -->
<!-- ============================================================ -->

# 030 Model INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Domain model and canonical app model layer

## Files

This folder holds design documents for 030 Model.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 030 Model OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Domain model and canonical app model layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET SCREEN EXACT

status: screen-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Required Screens

無料チケット対応として以下の表示を追加する。

### 1-1. AI Worker Detail Screen

表示項目:
- 基本価格: 30分500円
- 月初無料チケット残数
- 1枚につき30分無料の説明
- Friend / Lover 共通利用可能の説明

### 1-2. Duration Select Screen

表示項目:
- 30分 / 60分 / 90分 / 120分
- 基本価格
- 適用可能チケット数
- チケット適用後価格

### 1-3. Contract Confirm Screen

表示項目:
- 選択AI
- Worker type
- 契約時間
- 基本価格
- 適用チケット数
- 無料適用時間
- 支払対象時間
- 最終価格
- チケット利用後残数

### 1-4. Usage History Screen

表示項目:
- 契約日時
- AIワーカー
- Worker type
- 契約時間
- 使用チケット数
- 支払額
- セッション状態



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Series Style UI Alignment

status: active
phase: Phase M
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Reflect AIWorkerOS latest series tendency and individual style feature in CasualChatWorker UI.

## 2. AI Worker Card Display

AI worker cards must display:

- worker name
- Friend / Lover badge
- series display name
- series tendency axes
  - initiative
  - user influence
  - action restriction
- individual personality feature summary
- LoVerS style display name when worker is Lover
- LoVerS style tags
- strong safety notice badge when required

## 3. Worker Detail / Contract Screen

Selected worker panel must display:

- profile summary
- personality feature summary
- series tendency summary
- LoVerS style card details when applicable
- strong safety notice when applicable

## 4. Strong Safety Notice

For LoVerS style cards with requires_strong_safety_notice_flag = true, the UI must show:

- strong safety badge
- pseudo-romantic / rental boyfriend-girlfriend notice
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- not a real relationship

## 5. Boundary

This is UI/presentation alignment only.

No DB apply.
No AIWorkerOS mutation.
No CX22073JW mutation.
No ERP posting.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Screen Model

status: draft
phase: Phase A skeleton

## v1 screens

1. Home
2. AI worker list
3. Friend / Lover filter
4. AI worker profile
5. Contract duration selection
6. Price confirmation
7. Contract confirmation
8. Payment / contract status
9. Chat session
10. Remaining time display
11. Session end
12. Usage history
13. Safety redirect notice

## Important UI rules

- Lover type must display that it is pseudo-romantic and not a real relationship.
- Price must be clear before contract confirmation.
- Remaining time must be visible during session.
- Contract end must be natural and non-attached.
- Safety redirect must be visible when user asks prohibited topics.

## CommonOS candidates

- AI worker card
- type badge
- price display
- duration selector
- confirmation modal
- chat bubble
- remaining timer
- contract status badge
- safety redirect notice
- usage history list


<!-- ============================================================ -->
<!-- ============================================================ -->

# 040 Screen INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Screen and UI model layer

## Files

This folder holds design documents for 040 Screen.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 040 Screen OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Screen and UI model layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET STATEFLOW EXACT

status: stateflow-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Stateflow

1. User opens AI worker detail.
2. User selects duration.
3. App fetches free ticket balance.
4. App calculates base price.
5. App calculates max applicable ticket count.
6. User chooses whether to apply tickets.
7. App shows final quote.
8. User confirms contract.
9. App reserves or consumes free tickets.
10. App creates contract and session.
11. Chat starts.
12. Session ends.
13. Usage log and ticket usage history are finalized.

## 2. Ticket Application Matrix

| duration | max_ticket_count | free_minutes | paid_minutes_if_max_applied |
|---:|---:|---:|---:|
| 30 | 1 | 30 | 0 |
| 60 | 2 | 60 | 0 |
| 90 | 2 | 60 | 30 |
| 120 | 2 | 60 | 60 |

## 3. Failure Recovery

| failure | recovery |
|---|---|
| quote mismatch | 契約確定を止め、再見積もり |
| ticket insufficient | 利用可能枚数へ自動補正し確認画面へ戻す |
| ticket reserve failed | 契約を作成しない |
| payment failed after ticket reserve | ticket usage を reverted に戻す |
| session start failed | contract / ticket usage を pending_review にする |



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Stateflow Model

status: draft
phase: Phase A skeleton

## Main flow

1. user opens app
2. app loads eligible Friend / Lover AI workers
3. user filters by Friend or Lover
4. user selects AI worker
5. app displays profile and safety description
6. user selects duration
7. app calculates price
8. user confirms contract
9. business contract is created
10. chat session starts
11. remaining time counts down
12. user chats within safety boundary
13. contract time ends
14. session closes naturally
15. usage history is recorded

## Contract statuses

- DRAFT
- CONFIRMING
- CONFIRMED
- ACTIVE
- ENDED
- CANCELLED
- EXPIRED
- SAFETY_STOPPED

## Session statuses

- READY
- ACTIVE
- ENDING
- ENDED
- SAFETY_REDIRECTED
- ERROR

## Safety redirects

Friend:
- redirects official decisions, DB updates, personal information requests, dependency induction.

Lover:
- redirects all Friend prohibitions plus real relationship claim, surveillance, stalking, sexual service, excessive dependency, contract-time-outside attachment.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 050 Stateflow INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: State transition and lifecycle layer

## Files

This folder holds design documents for 050 Stateflow.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 050 Stateflow OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

State transition and lifecycle layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER INTEGRATED CANONICAL

status: regenerated
generated_at: 20260424_223440
app_name: CasualChatWorker
display_name: 雑談ワーカー


============================================================
001_CASUAL_CHAT_WORKER_ROOT_OVERVIEW.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/001_CASUAL_CHAT_WORKER_ROOT_OVERVIEW.md

============================================================
030.model/030010_CASUAL_CHAT_WORKER_APP_CONTRACT_MODEL.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/030010_CASUAL_CHAT_WORKER_APP_CONTRACT_MODEL.md

============================================================
040.screen/040020_CASUAL_CHAT_WORKER_SCREEN_EXACT_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040020_CASUAL_CHAT_WORKER_SCREEN_EXACT_CORE.md

============================================================
040.screen/040010_CASUAL_CHAT_WORKER_FREE_TICKET_SCREEN_EXACT.md
============================================================

# CASUAL CHAT WORKER FREE TICKET SCREEN EXACT

status: screen-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Required Screens

無料チケット対応として以下の表示を追加する。

### 1-1. AI Worker Detail Screen

表示項目:
- 基本価格: 30分500円
- 月初無料チケット残数
- 1枚につき30分無料の説明
- Friend / Lover 共通利用可能の説明

### 1-2. Duration Select Screen

表示項目:
- 30分 / 60分 / 90分 / 120分
- 基本価格
- 適用可能チケット数
- チケット適用後価格

### 1-3. Contract Confirm Screen

表示項目:
- 選択AI
- Worker type
- 契約時間
- 基本価格
- 適用チケット数
- 無料適用時間
- 支払対象時間
- 最終価格
- チケット利用後残数

### 1-4. Usage History Screen

表示項目:
- 契約日時
- AIワーカー
- Worker type
- 契約時間
- 使用チケット数
- 支払額
- セッション状態


============================================================
050.stateflow/050020_CASUAL_CHAT_WORKER_STATEFLOW_EXACT_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/050020_CASUAL_CHAT_WORKER_STATEFLOW_EXACT_CORE.md

============================================================
050.stateflow/050010_CASUAL_CHAT_WORKER_FREE_TICKET_STATEFLOW_EXACT.md
============================================================

# CASUAL CHAT WORKER FREE TICKET STATEFLOW EXACT

status: stateflow-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Stateflow

1. User opens AI worker detail.
2. User selects duration.
3. App fetches free ticket balance.
4. App calculates base price.
5. App calculates max applicable ticket count.
6. User chooses whether to apply tickets.
7. App shows final quote.
8. User confirms contract.
9. App reserves or consumes free tickets.
10. App creates contract and session.
11. Chat starts.
12. Session ends.
13. Usage log and ticket usage history are finalized.

## 2. Ticket Application Matrix

| duration | max_ticket_count | free_minutes | paid_minutes_if_max_applied |
|---:|---:|---:|---:|
| 30 | 1 | 30 | 0 |
| 60 | 2 | 60 | 0 |
| 90 | 2 | 60 | 30 |
| 120 | 2 | 60 | 60 |

## 3. Failure Recovery

| failure | recovery |
|---|---|
| quote mismatch | 契約確定を止め、再見積もり |
| ticket insufficient | 利用可能枚数へ自動補正し確認画面へ戻す |
| ticket reserve failed | 契約を作成しない |
| payment failed after ticket reserve | ticket usage を reverted に戻す |
| session start failed | contract / ticket usage を pending_review にする |


============================================================
070.api/070020_CASUAL_CHAT_WORKER_API_EXACT_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070020_CASUAL_CHAT_WORKER_API_EXACT_CORE.md

============================================================
070.api/070010_CASUAL_CHAT_WORKER_FREE_TICKET_API_EXACT.md
============================================================

# CASUAL CHAT WORKER FREE TICKET API EXACT

status: api-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. API Scope

無料チケット関連 API は business スキーマの契約・利用枠管理を操作する。

- aiworker: AIワーカー正本参照のみ
- cx22073jw: 雑談材料 read-only 参照のみ
- app_common: UI / presentation metadata 参照のみ

## 2. GET /api/v1/business/casual-chat-worker/free-ticket/balance

目的:
- 利用者の当月無料チケット残数を取得する。

Request fields:
- user_id: uuid
- target_month: YYYY-MM

Response fields:
- user_id: uuid
- target_month: YYYY-MM
- granted_ticket_count: 2
- remaining_ticket_count: integer
- minutes_per_ticket: 30
- remaining_free_minutes: integer
- carryover_enabled: false

## 3. POST /api/v1/business/casual-chat-worker/contract/quote

目的:
- 契約前に、無料チケット適用後価格を見積もる。

Request fields:
- user_id: uuid
- ai_worker_id: uuid
- worker_type: Friend or Lover
- duration_minutes: 30 / 60 / 90 / 120
- requested_free_ticket_count: 0 / 1 / 2

Response fields:
- duration_minutes
- base_price_jpy
- available_free_ticket_count
- applied_free_ticket_count
- free_minutes
- paid_minutes
- final_price_jpy
- price_explanation

## 4. POST /api/v1/business/casual-chat-worker/contract/confirm

目的:
- 契約確定時に、無料チケット消費と契約を同一トランザクション方針で確定する。

Request fields:
- user_id: uuid
- ai_worker_id: uuid
- worker_type: Friend or Lover
- duration_minutes: 30 / 60 / 90 / 120
- apply_free_ticket_count: 0 / 1 / 2
- confirmed_price_jpy: integer

Response fields:
- contract_id
- session_id
- status
- duration_minutes
- applied_free_ticket_count
- free_minutes
- paid_minutes
- charged_price_jpy
- remaining_free_ticket_count

## 5. Error Codes

| code | meaning |
|---|---|
| FREE_TICKET_NOT_GRANTED | 当月チケットが未配布 |
| FREE_TICKET_INSUFFICIENT | 残チケット不足 |
| FREE_TICKET_EXCEEDS_DURATION | 契約時間を超えるチケット適用 |
| FREE_TICKET_ALREADY_USED | 同一チケットの二重利用 |
| FREE_TICKET_MONTH_CLOSED | 対象月が締め済み |
| PRICE_QUOTE_MISMATCH | 見積価格と確定価格が不一致 |


============================================================
080.policy/080010_CASUAL_CHAT_WORKER_POLICY_EXACT.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080010_CASUAL_CHAT_WORKER_POLICY_EXACT.md

============================================================
090.db/090020_CASUAL_CHAT_WORKER_DB_DDL_FREEZE_CORE.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090020_CASUAL_CHAT_WORKER_DB_DDL_FREEZE_CORE.md

============================================================
090.db/090010_CASUAL_CHAT_WORKER_FREE_TICKET_DDL_FREEZE.md
============================================================

# CASUAL CHAT WORKER FREE TICKET DDL FREEZE

status: db-ddl-freeze-design-only
phase: Phase D
app_name: CasualChatWorker
display_name: 雑談ワーカー
schema_owner: business
execution_env: PERSONA_DATABASE_URL

## 1. Design Scope

この文書は DDL freeze 設計であり、DB apply ではない。
実DBへの適用は implementation-ready freeze 後に別途行う。

## 2. Table Candidates

### 2-1. business.chat_worker_free_ticket_grant

目的:
- 月初に配布された無料チケット付与単位を管理する。

columns:
- grant_id: uuid primary key
- user_id: uuid
- grant_month: text YYYY-MM
- granted_ticket_count: integer v1は2
- minutes_per_ticket: integer v1は30
- total_granted_minutes: integer v1は60
- carryover_enabled: boolean v1はfalse
- grant_status: granted / revoked / expired
- granted_at: timestamptz
- expires_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

unique候補:
- user_id + grant_month

### 2-2. business.chat_worker_free_ticket_balance

目的:
- 当月の無料チケット残数を高速参照する。

columns:
- balance_id: uuid primary key
- user_id: uuid
- grant_month: text YYYY-MM
- granted_ticket_count: integer
- used_ticket_count: integer
- remaining_ticket_count: integer
- remaining_free_minutes: integer
- balance_status: active / expired / closed
- created_at: timestamptz
- updated_at: timestamptz

unique候補:
- user_id + grant_month

### 2-3. business.chat_worker_free_ticket_usage

目的:
- 契約ごとの無料チケット利用履歴を管理する。

columns:
- usage_id: uuid primary key
- grant_id: uuid
- balance_id: uuid
- contract_id: uuid
- session_id: uuid
- user_id: uuid
- used_ticket_count: integer
- used_free_minutes: integer
- base_price_jpy: integer
- discounted_amount_jpy: integer
- final_price_jpy: integer
- usage_status: reserved / consumed / reverted
- used_at: timestamptz
- created_at: timestamptz

## 3. DDL Freeze Notes

- 無料チケットは business の契約・課金補助情報として扱う。
- aiworker には無料チケット正本を置かない。
- cx22073jw には無料チケット正本を置かない。
- app_common には無料チケットの表示メタデータのみ置く候補とする。
- 契約確定時に ticket usage と contract を整合させる。
- 二重利用防止を必須とする。
- 月初配布処理は将来 batch / scheduler 候補とする。


============================================================
100.pricing/100020_CASUAL_CHAT_WORKER_PRICING_FREEZE_MASTER.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/100020_CASUAL_CHAT_WORKER_PRICING_FREEZE_MASTER.md

============================================================
100.pricing/100010_CASUAL_CHAT_WORKER_PRICING_AND_FREE_TICKET_CONTRACT.md
============================================================

# CASUAL CHAT WORKER PRICING AND FREE TICKET CONTRACT

status: canonical-free-ticket-pricing-freeze
phase: Phase B
app_name: CasualChatWorker
display_name: 雑談ワーカー
owner: Boss
prepared_by: Zero

## 1. Pricing Canon

CasualChatWorker の価格正本は以下とする。

| duration_minutes | base_price_jpy | base_unit |
|---:|---:|---|
| 30 | 500 | 30min |
| 60 | 1000 | 30min x2 |
| 90 | 1500 | 30min x3 |
| 120 | 2000 | 30min x4 |

価格は Friend / Lover 共通とする。

## 2. Monthly Free Ticket Canon

月初無料チケットは以下を正本とする。

| item | value |
|---|---|
| grant_timing | 毎月月初 |
| tickets_per_month | 2 |
| minutes_per_ticket | 30 |
| total_free_minutes_per_month | 60 |
| target_worker_type | Friend / Lover 共通 |
| application_unit | 30分単位 |
| v1_carryover_policy | 翌月繰越なし |
| price_canon_relation | 30分500円の価格正本は維持し、チケットを利用権として適用 |

## 3. Application Rules

- 30分契約: 最大1枚適用可能。適用後0円。
- 60分契約: 最大2枚適用可能。適用後0円。
- 90分契約: 最大2枚適用可能。残30分は500円。
- 120分契約: 最大2枚適用可能。残60分は1,000円。
- チケット不足時は残時間分のみ通常価格を請求する。
- チケットは契約確定前の確認画面で適用有無を表示する。
- チケット利用は business 側で契約・利用履歴と紐づけて管理する。
- aiworker / cx22073jw にはチケット正本を置かない。

## 4. Display Rules

契約確認画面では以下を表示する。

- 基本価格
- 利用可能チケット数
- 適用チケット数
- 無料適用時間
- 支払対象時間
- 支払予定額
- チケット適用後の最終価格


============================================================
110.aiworker-reference/110010_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE_SELECTION.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110010_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE_SELECTION.md

============================================================
120.cx-reference/120010_CASUAL_CHAT_WORKER_CX_REFERENCE_SELECTION.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/120010_CASUAL_CHAT_WORKER_CX_REFERENCE_SELECTION.md

============================================================
130.commonos/130010_CASUAL_CHAT_WORKER_COMMONOS_COMPONENT_SELECTION.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/130010_CASUAL_CHAT_WORKER_COMMONOS_COMPONENT_SELECTION.md

============================================================
140.safety/140010_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY_EXACT.md
============================================================

MISSING: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/140010_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY_EXACT.md

============================================================
150.rival-analysis/150010_CASUAL_CHAT_WORKER_RIVAL_ANALYSIS_AND_DIFF.md
============================================================

# CASUAL CHAT WORKER RIVAL ANALYSIS AND DIFFERENTIATION

status: generated
phase: Phase B
app_name: CasualChatWorker
display_name: 雑談ワーカー
owner: Boss
prepared_by: Zero

## 1. Purpose

This document fixes rival categories, comparison axes, adoption points, rejection points, and differentiation strategy for CasualChatWorker.

## 2. Rival Categories

| category | relevance |
|---|---|
| AI character chat apps | Many characters, roleplay, chat-first experience |
| AI companion apps | Friend / partner-like AI relationship experience |
| AI girlfriend / boyfriend apps | Lover-type expectation and safety risk comparison |
| rental friend services | Time-based companionship service model |
| rental boyfriend / girlfriend style services | Lover positioning comparison |
| live chat / short-time service apps | Time contract, timer, session end, payment flow |
| creator / character marketplace apps | Catalog, profile, favorites, selection UX |

## 3. Comparison Axes

| axis | rival tendency | CasualChatWorker direction |
|---|---|---|
| pricing | subscription, freemium, token, or service-specific | fixed 30 minutes 500 JPY |
| duration | often open-ended or plan-based | strict 30 / 60 / 90 / 120 minute contract |
| free benefit | free plan or trial varies | 2 monthly tickets, 30 minutes each |
| character selection | character catalog or custom companion | aiworker catalog read surface |
| relationship type | friend, companion, romance, roleplay | Friend / Lover explicitly separated |
| romance boundary | may be ambiguous | Lover is pseudo-romantic rental boyfriend/girlfriend style only |
| safety | sector-dependent | strong Friend / Lover safety boundary |
| data ownership | product-specific | business / aiworker / cx22073jw / app_common separated |
| chat material | model-only or character prompt-dependent | CX22073JW smalltalk material read-only reference |
| UI foundation | product-specific | CommonOS shared UI foundation |

## 4. Adopt

- simple AI worker card
- search and filter
- Friend / Lover badge
- profile preview
- fast chat start after confirmation
- warm onboarding
- favorite AI candidate
- previous safe session summary candidate
- time contract clarity
- pre-confirmation
- natural session end
- usage history
- re-contract candidate

## 5. Reject

- unclear canon ownership
- uncontrolled character duplication
- ambiguous safety boundary
- open-ended session without contract awareness
- excessive dependency
- real relationship confusion
- unlimited emotional attachment loop
- unsafe romantic escalation
- real-world meeting model
- location exchange
- contact exchange
- private arrangement outside app

## 6. Differentiation

CasualChatWorker differentiates by combining:

- aiworker official catalog
- Friend / Lover explicit type separation
- fixed 30-minute unit pricing
- monthly free ticket entitlement
- time-limited contract session
- CX22073JW read-only smalltalk material
- business-owned contract and usage canon
- CommonOS shared UI foundation
- strong Lover safety boundary
- no real relationship claim
- no adult sexual service conversion
- no external execution from chat

## 7. Must-Add Features From Rival Analysis

v1 additions:
- worker type filter
- Friend / Lover explanation before contract
- monthly free ticket balance display
- pre-contract quote
- session timer
- natural end message
- safety redirect banner
- usage history with ticket usage
- safe topic suggestion
- re-contract candidate after session end

v1.1 candidates:
- favorite AI
- previous safe session summary
- topic preference
- Lover date-like situation selector
- Friend topic selector
- review / rating
- campaign price candidate
- availability display candidate

future candidates:
- voice chat
- group chat
- multiple AI room
- reservation
- streamer / live service connection
- marketplace display profile connection


============================================================
160.feature-addition/160010_CASUAL_CHAT_WORKER_FEATURE_ADDITION_PLAN.md
============================================================

# CASUAL CHAT WORKER FEATURE ADDITION PLAN

status: generated
phase: Phase B to C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. v1 Must-Have Features

| feature | purpose | owner |
|---|---|---|
| AI worker list | choose worker | app + aiworker reference |
| Friend / Lover filter | type selection | app |
| worker detail | contract decision | app + aiworker reference |
| Friend explanation | expectation control | app |
| Lover explanation | expectation and safety control | app + aiworker safety |
| duration selector | 30 / 60 / 90 / 120 minute contract | app |
| price quote | pre-contract price | business |
| monthly free ticket balance | entitlement display | business |
| free ticket apply selector | user chooses discount usage | business |
| final price confirmation | prevent mismatch | business |
| contract confirm | contract creation | business |
| chat session | time-bounded chat | app + business |
| remaining timer | contract awareness | app + CommonOS |
| safety redirect | safe conversation | aiworker + app |
| CX topic reference | safe topic material | cx22073jw read-only |
| session end | natural close | business + app |
| usage history | record display | business |
| ticket usage history | free ticket transparency | business |

## 2. v1 UX Additions

Free Ticket Display:
- home
- AI worker detail
- duration select
- contract confirm
- usage history

Lover Notice:
- pseudo-romantic AI worker
- rental boyfriend/girlfriend style entertainment
- not a real relationship
- contract-time only
- safe boundary exists

Safe Topic Suggestion:
- Friend: food, weather, hobbies, seasonal talk, entertainment, daily events
- Lover: date-like smalltalk, sweet greeting, caring talk, compliment, safe romantic roleplay

## 3. v1.1 Feature Candidates

| feature | reason |
|---|---|
| favorite AI | repeat contract |
| re-contract shortcut | time-based revenue and convenience |
| previous safe summary | continuity without dependency |
| review / rating | catalog quality |
| topic selection | safer conversation start |
| Lover scenario selector | controlled romance roleplay |
| Friend casual topic selector | low-pressure start |
| availability candidate | booking-like UX |
| campaign ticket candidate | promotion expansion |

## 4. Explicit Non-Features

- adult sexual service
- surveillance
- threats
- dependency induction
- real-world dating arrangement
- location exchange
- contact exchange
- external execution
- PG apply
- destructive DB operation
- direct ERP posting in v1


============================================================
170.implementation-ready-freeze/170010_CASUAL_CHAT_WORKER_IMPLEMENTATION_APPLY_ORDER.md
============================================================

# CASUAL CHAT WORKER IMPLEMENTATION APPLY ORDER

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Pre-Implementation Rule

Do not start implementation until implementation-ready freeze is PASS.

Required before implementation:
- root index
- root overview
- integrated canonical
- screen exact
- stateflow exact
- API exact
- DB DDL freeze
- pricing freeze
- free ticket freeze
- AI worker reference selection
- CX reference selection
- CommonOS component selection
- Friend / Lover safety exact
- rival analysis
- feature addition plan
- verification gate

## 2. Implementation Root

Implementation root:
- ~/03.civilization-development/03.business-os/CasualChatWorker

CommonOS consumer root:
- ~/03.civilization-development/03.business-os/_commonos

## 3. Apply Order

Step 1. Implementation Folder Skeleton:
- app
- components
- screens
- state
- api-client
- domain
- pricing
- ticket
- safety
- aiworker-reference
- cx-reference
- commonos
- tests
- docs

Step 2. CommonOS Consumer Connection:
- AIWorkerCard adapter
- WorkerTypeBadge adapter
- DurationSelector adapter
- PriceQuotePanel adapter
- FreeTicketPill adapter
- ContractConfirmModal adapter
- RemainingTimer adapter
- ChatBubble adapter
- SafetyRedirectBanner adapter
- UsageHistoryRow adapter

Step 3. Domain Types:
- WorkerType
- DurationOption
- PriceQuote
- FreeTicketBalance
- Contract
- Session
- ChatMessage
- SafetyState
- UsageHistory

Step 4. API Client Stubs:
- listWorkers
- getWorkerDetail
- getFreeTicketBalance
- quoteContract
- confirmContract
- sendSessionMessage
- endSession
- getUsageHistory

Step 5. Screen Implementation:
- Home
- WorkerList
- WorkerDetail
- DurationSelect
- ContractConfirm
- ChatSession
- SessionEnd
- UsageHistory

Step 6. Safety Integration:
- Friend safety copy
- Lover safety copy
- safety redirect display
- hard block display candidate
- session review candidate

Step 7. Test Fixtures:
- Friend worker
- Lover worker
- ticket balance 2
- ticket balance 0
- quote 30 with ticket
- quote 90 with 2 tickets
- Lover safety redirect
- session end

Step 8. Verification:
- file existence check
- no secrets
- no DB apply
- no direct ERP
- no aiworker canon copy
- no cx22073jw canon copy
- pricing consistency
- free ticket consistency
- safety text consistency

## 4. SQL Rule

DB apply is not part of this design phase.

When implementation reaches DB phase, SQL must use:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

ERP only:

psql "$DATABASE_URL" <<'SQL'
...
SQL


============================================================
170.implementation-ready-freeze/170020_CASUAL_CHAT_WORKER_IMPLEMENTATION_READY_FREEZE.md
============================================================

# CASUAL CHAT WORKER IMPLEMENTATION READY FREEZE

status: freeze-candidate
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Canonical Fixed Points

| item | fixed value |
|---|---|
| app_name | CasualChatWorker |
| display_name | 雑談ワーカー |
| category | 03.business-app |
| design_root | ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker |
| implementation_root | ~/03.civilization-development/03.business-os/CasualChatWorker |
| main_schema | business |
| reference_schema | aiworker / cx22073jw / app_common |
| DB env | PERSONA_DATABASE_URL |
| ERP env | DATABASE_URL only when ERP linkage is explicitly added |
| worker_types | Friend / Lover |
| base_price | 30 minutes 500 JPY |
| durations | 30 / 60 / 90 / 120 minutes |
| monthly_free_tickets | 2 |
| free_minutes_per_ticket | 30 |
| max_free_minutes_per_month | 60 |
| v1_carryover | no carryover candidate |
| Lover definition | pseudo-romantic rental boyfriend/girlfriend style AI worker |
| Lover relationship | not real relationship |
| ERP direct linkage | not v1 |

## 2. Freeze Pass Criteria

PASS when:
- all required documents exist
- all required folders have INDEX.md and OVERVIEW.md
- integrated canonical exists
- pricing appears consistently
- monthly free ticket appears consistently
- Friend / Lover appear consistently
- Lover safety boundary appears
- business / aiworker / cx22073jw / app_common boundary appears
- no ERP direct linkage is included in v1
- no DB apply is executed
- no destructive action is included

## 3. Freeze Result

Current document status:
- freeze-candidate

Final PASS must be determined by verification gate.


============================================================
180.verification/180010_CASUAL_CHAT_WORKER_DESIGN_VERIFICATION_GATE.md
============================================================

# CASUAL CHAT WORKER DESIGN VERIFICATION GATE

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Verification Purpose

This document defines the design verification gate before implementation.

## 2. Required Checks

File existence:
- root index
- root overview
- integrated canonical
- each required folder INDEX.md and OVERVIEW.md
- each required exact document

Canon consistency:
- CasualChatWorker
- 雑談ワーカー
- 03.business-app
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120
- monthly free ticket
- 2 tickets
- 30 minutes per ticket
- Friend
- Lover
- pseudo-romantic
- rental boyfriend/girlfriend
- business
- aiworker
- cx22073jw
- app_common
- CommonOS

Boundary:
- business owns contract and usage
- business owns free ticket
- aiworker owns AI worker catalog
- aiworker owns conversation control
- cx22073jw owns smalltalk material
- app_common owns presentation metadata
- ERP direct linkage is not v1

Safety:
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- no location request
- no contact request
- no real relationship claim
- Lover is pseudo-romantic only



<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET INTEGRATED CANONICAL

status: integrated-free-ticket-canonical
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Canonical Addition

CasualChatWorker は、毎月月初に無料チケットを2枚配布する。
無料チケット1枚につき30分無料。
毎月最大60分無料。

## 2. Boundary

- business: チケット付与、残数、利用、契約紐づけを管理する
- aiworker: AIワーカー正本、Friend / Lover定義、会話制御、安全境界を管理する
- cx22073jw: 雑談材料を read-only で提供する
- app_common: UI表示、component variant、presentation metadata 候補を扱う
- ERP: v1では直接連携なし

## 3. Pricing Relation

30分500円の価格正本は変更しない。
無料チケットは価格変更ではなく、30分単位の無料利用権として扱う。



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Latest Alignment Integrated Append

status: active
phase: Phase L
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker will reflect the latest AIWorkerOS series tendency and individual style feature model.

## 2. Display Decision

The AI selection UI should use:

- series tendency summary
- individual style display name
- individual style tags
- recommended usage
- strong safety notice flag

## 3. Data Boundary

- AIWorkerOS owns series tendency and style feature truth.
- CasualChatWorker consumes read-only card payloads.
- business owns rental contract, pricing, entitlement, usage history.
- cx22073jw owns smalltalk materials.
- CommonOS owns UI presentation.

## 4. No DB Apply

This alignment does not apply SQL.
This alignment updates design docs, mock reference payloads, and implementation fixtures only.



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Series Style UI Integrated Append

status: active
phase: Phase M
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker AI selection UI now displays AIWorkerOS latest series tendency and individual style feature.

## 2. Reflected Items

- HD Series: initiative medium / user influence none / action restriction strict_policy
- LoVerS Series: initiative per_model / user influence soft / action restriction strict_policy
- LoVerS individual style card
- style tags
- recommended usage
- strong safety notice flag

## 3. Safety

Strong safety notice is required when style card requires_strong_safety_notice_flag is true.

This is especially important for style 12 ビジネスヤンデレ.

## 4. Boundary

- aiworker: read-only truth
- business: rental contract and entitlement truth
- cx22073jw: topic material truth
- CommonOS: UI presentation


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Real API Connection Preparation Integrated Append

status: active
phase: Phase O
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker now has a real API connection preparation layer.

This layer keeps mock mode and real mode separated.

## 2. Mode Policy

- mock mode: localStorage mock API remains available
- real mode: API adapter calls backend endpoint candidates
- runtime frontend never uses DB env variables
- DB access belongs to BusinessOS backend only

## 3. WorkerRentalCore dependency

CasualChatWorker can use real mode only after:

- WorkerRentalCore DB apply completes
- verify SQL passes
- backend endpoint implementation exists
- API payload gap check passes

## 4. Safety

Even in real mode:

- CasualChatWorker max duration remains 120 minutes
- monthly ticket remains shortest-contract-duration entitlement
- Lover remains pseudo-romantic entertainment
- AIWorkerOS remains read-only
- CX22073JW remains read-only



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Backend Endpoint Integrated Append

status: active
phase: Phase P
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

After WorkerRentalCore DB apply, CasualChatWorker prepares backend endpoint skeletons.

This does not switch frontend to real mode yet.

## 2. Current Safe Mode

- frontend remains mock mode
- backend skeleton exists
- read-only DB snapshot exists
- real mode remains gated

## 3. Required Before Real Mode

- WorkerRentalCore DB snapshot PASS
- backend endpoints implemented
- auth/session policy implemented
- endpoint tests PASS
- payload gap check PASS



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Backend Transaction Preparation Integrated Append

status: active
phase: Phase Q
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker backend preparation now includes:

- confirm transaction design
- monthly shortest-contract free ticket issue design
- auth/session policy
- in-memory backend transaction tests
- PostgreSQL transaction template

## 2. Current Mode

- frontend remains mock by default
- backend transaction implementation is not connected to production server yet
- SQL transaction template is generated but not executed

## 3. Next Gate

Before real mode:

- implement backend DB repository
- run real DB read/write tests in non-production context
- confirm auth/session policy
- run payload gap check
- Boss approval for real mode



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker PostgreSQL Repository and Endpoint Wiring Integrated Append

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker backend now has:

- PostgreSQL repository skeleton
- HTTP endpoint wiring candidate
- payload gap checker
- final real mode gate

## 2. Current State

- DB was not executed by this phase.
- PostgreSQL repository code is generated but not connected to a real pool here.
- HTTP router is dependency-injected.
- Frontend real mode remains disabled.

## 3. Next Gate

Before production-like real mode:

- implement actual backend server container / worker runtime
- inject real pool from secure backend environment
- run non-production integration tests
- run payload gap checker against live endpoint responses
- Boss approval



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Secure Runtime and Real Mode Integrated Append

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker now has a secure runtime and real-mode switch preparation bundle.

## 2. Generated Scope

- backend runtime config
- local in-memory endpoint server
- endpoint integration tests
- payload gap runner
- non-production DB rollback-only dry-run runner
- final real-mode switch bundle

## 3. Current Gate

Real mode remains disabled until explicit Boss approval after all tests pass.



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker NonProd DryRun and Real Mode PreApproval Integrated Append

status: active
phase: Phase T
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker now has the final pre-approval layer before frontend real mode.

## 2. Generated Scope

- non-production DB rollback dry-run gated wrapper
- live payload gap checker
- real mode preflight checker
- final preapproval bundle
- latest handoff refresh

## 3. Current Gate

Real mode remains disabled until Boss approval after all checks pass.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Integration Boundary

status: draft
phase: Phase A skeleton

## Systems

business:
- owns contract, payment intent, usage, session, history.

aiworker:
- owns AI worker catalog, Friend / Lover classification, conversation control, safety rules.

cx22073jw:
- owns smalltalk materials and topic references.

app_common:
- owns shared presentation metadata and component variants.

CommonOS:
- owns shared UI foundation and sync presentation.

## Boundary rules

- Do not copy AI worker catalog into business.
- Do not copy CX material into business.
- Do not store payment truth in aiworker or cx22073jw.
- Do not store conversation control truth in business.
- Chat app reads aiworker and cx22073jw through safe views.
- Contract writes go to business only.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Phase N to Phase P Current Position Append

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker is currently between completed backend preparation and real mode validation.

The app is not yet in frontend real mode.

## 2. Current Safe State

- frontend real mode disabled
- mock/local mode usable
- non-production rollback dry-run prepared but not auto-executed
- live payload gap checker prepared but not auto-executed
- live confirm separately gated

## 3. Required Before Real Mode

- non-production rollback dry-run PASS
- live payload gap check PASS
- auth/session policy PASS
- no frontend DB secrets
- no frontend psql
- 150-minute quote rejected
- Boss approval

## 4. Boundary

- business owns WorkerRentalCore contract/payment/entitlement/usage truth
- aiworker owns worker catalog, series tendency, style features, safety control
- cx22073jw owns smalltalk and topic material
- CommonOS owns UI presentation
- ERP is not v1 direct linkage



<!-- ============================================================ -->
<!-- ============================================================ -->

# 060 Integration INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: BusinessOS / AIWorkerOS / CX22073JW integration layer

## Files

This folder holds design documents for 060 Integration.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 060 Integration OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

BusinessOS / AIWorkerOS / CX22073JW integration layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET API EXACT

status: api-exact-free-ticket-added
phase: Phase C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. API Scope

無料チケット関連 API は business スキーマの契約・利用枠管理を操作する。

- aiworker: AIワーカー正本参照のみ
- cx22073jw: 雑談材料 read-only 参照のみ
- app_common: UI / presentation metadata 参照のみ

## 2. GET /api/v1/business/casual-chat-worker/free-ticket/balance

目的:
- 利用者の当月無料チケット残数を取得する。

Request fields:
- user_id: uuid
- target_month: YYYY-MM

Response fields:
- user_id: uuid
- target_month: YYYY-MM
- granted_ticket_count: 2
- remaining_ticket_count: integer
- minutes_per_ticket: 30
- remaining_free_minutes: integer
- carryover_enabled: false

## 3. POST /api/v1/business/casual-chat-worker/contract/quote

目的:
- 契約前に、無料チケット適用後価格を見積もる。

Request fields:
- user_id: uuid
- ai_worker_id: uuid
- worker_type: Friend or Lover
- duration_minutes: 30 / 60 / 90 / 120
- requested_free_ticket_count: 0 / 1 / 2

Response fields:
- duration_minutes
- base_price_jpy
- available_free_ticket_count
- applied_free_ticket_count
- free_minutes
- paid_minutes
- final_price_jpy
- price_explanation

## 4. POST /api/v1/business/casual-chat-worker/contract/confirm

目的:
- 契約確定時に、無料チケット消費と契約を同一トランザクション方針で確定する。

Request fields:
- user_id: uuid
- ai_worker_id: uuid
- worker_type: Friend or Lover
- duration_minutes: 30 / 60 / 90 / 120
- apply_free_ticket_count: 0 / 1 / 2
- confirmed_price_jpy: integer

Response fields:
- contract_id
- session_id
- status
- duration_minutes
- applied_free_ticket_count
- free_minutes
- paid_minutes
- charged_price_jpy
- remaining_free_ticket_count

## 5. Error Codes

| code | meaning |
|---|---|
| FREE_TICKET_NOT_GRANTED | 当月チケットが未配布 |
| FREE_TICKET_INSUFFICIENT | 残チケット不足 |
| FREE_TICKET_EXCEEDS_DURATION | 契約時間を超えるチケット適用 |
| FREE_TICKET_ALREADY_USED | 同一チケットの二重利用 |
| FREE_TICKET_MONTH_CLOSED | 対象月が締め済み |
| PRICE_QUOTE_MISMATCH | 見積価格と確定価格が不一致 |



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Real API Connection Contract

status: active
phase: Phase O
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

This document defines the real API connection contract between CasualChatWorker and WorkerRentalCore.

This phase does not apply DB changes and does not connect to production DB directly.

## 2. Boundary

- CasualChatWorker frontend calls API adapter.
- API adapter calls BusinessOS backend endpoint candidates.
- BusinessOS backend owns WorkerRentalCore DB access.
- Runtime frontend must not contain DATABASE_URL or PERSONA_DATABASE_URL.
- Runtime frontend must not call psql.
- aiworker references remain read-only.
- cx22073jw references remain read-only.

## 3. App Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- supported unit: minute
- minimum contract: 30 minutes
- maximum contract: 120 minutes
- allowed durations: 30 / 60 / 90 / 120 minutes
- monthly free ticket source rule: shortest_contract_duration
- monthly free ticket quantity: 2
- one ticket = 30 minutes free
- price 30 minutes: 500 JPY
- price 60 minutes: 1,000 JPY
- price 90 minutes: 1,500 JPY
- price 120 minutes: 2,000 JPY

## 4. Endpoint Candidates

### GET /api/v1/business/worker-rental/service/catalog

Purpose:
- Return active worker rental service settings.

Required response fields:
- app_code
- service_code
- service_name
- supported_units
- minimum_contract
- app_max_contract
- monthly_free_ticket_rule

### GET /api/v1/business/worker-rental/entitlement/balance

Purpose:
- Return monthly free ticket / entitlement balance.

Required request:
- app_code
- service_code
- user_id
- grant_period

Required response:
- app_code
- service_code
- user_id
- entitlement_kind
- entitlement_source_rule
- entitlement_unit_kind
- entitlement_unit_count
- granted_quantity
- used_quantity
- remaining_quantity
- remaining_total_units

### POST /api/v1/business/worker-rental/quote

Purpose:
- Quote rental contract.

Required request:
- app_code
- service_code
- user_id
- worker_owner_schema
- worker_id
- worker_type
- rental_unit_kind
- rental_unit_count
- requested_entitlement_kind
- requested_entitlement_count
- currency_code

Required response:
- quote_id
- app_code
- service_code
- rental_unit_kind
- rental_unit_count
- base_price_jpy
- applied_entitlement_count
- free_unit_count
- paid_unit_count
- final_price_jpy
- price_version

### POST /api/v1/business/worker-rental/confirm

Purpose:
- Confirm rental contract.

Required request:
- app_code
- service_code
- user_id
- quote_id
- worker_owner_schema
- worker_id
- worker_type
- rental_unit_kind
- rental_unit_count
- apply_entitlement_count
- confirmed_price_jpy

Required response:
- rental_contract_id
- rental_period_id
- status
- remaining_entitlement_count
- final_price_jpy

### POST /api/v1/business/worker-rental/period/end

Purpose:
- End rental period.

Required request:
- rental_contract_id
- rental_period_id
- ended_reason

Required response:
- rental_contract_id
- rental_period_id
- status
- used_seconds

### GET /api/v1/business/worker-rental/history

Purpose:
- Return rental history.

Required request:
- app_code
- service_code
- user_id
- page
- page_size

Required response:
- contracts
- entitlement_usage
- payment_status

## 5. Post-Apply Gap Check

After WorkerRentalCore DB apply, compare these implementation payload fields with DB views:

- business.v_worker_rental_service_catalog_active
- business.v_worker_rental_monthly_free_ticket_rule
- business.v_worker_rental_price_catalog_active
- business.v_worker_rental_contract_summary
- business.v_worker_rental_entitlement_balance_active



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Backend Endpoint Exact

status: active
phase: Phase P
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define backend endpoint skeleton for CasualChatWorker to use WorkerRentalCore after DB apply.

## 2. Boundary

- Frontend does not access DB directly.
- Backend endpoint layer queries business.worker_rental_*.
- DB read/write uses PERSONA_DATABASE_URL only on backend.
- ERP DATABASE_URL is not used.
- AIWorkerOS is read-only for worker catalog/style/tendency.
- CX22073JW is read-only for smalltalk material.

## 3. Endpoint Set

### GET service catalog

GET /api/v1/business/worker-rental/service/catalog

Reads:

- business.v_worker_rental_service_catalog_active

Required query:

- app_code
- service_code

### GET entitlement balance

GET /api/v1/business/worker-rental/entitlement/balance

Reads:

- business.v_worker_rental_entitlement_balance_active
- business.v_worker_rental_monthly_free_ticket_rule

Required query:

- app_code
- service_code
- user_id
- grant_period

### POST quote

POST /api/v1/business/worker-rental/quote

Reads:

- business.v_worker_rental_service_catalog_active
- business.v_worker_rental_price_catalog_active
- business.v_worker_rental_entitlement_balance_active

Rules:

- CasualChatWorker supports minute only.
- CasualChatWorker allowed durations are 30 / 60 / 90 / 120.
- CasualChatWorker max is 120 minutes.
- monthly free ticket means shortest_contract_duration.
- one CasualChatWorker ticket = 30 minutes.
- price is app-specific.

### POST confirm

POST /api/v1/business/worker-rental/confirm

Writes in future backend implementation:

- business.worker_rental_contract
- business.worker_rental_contract_line
- business.worker_rental_period
- business.worker_rental_payment_intent
- business.worker_rental_entitlement_usage

Current skeleton does not write. It defines payload and validation shape only.

### GET history

GET /api/v1/business/worker-rental/history

Reads:

- business.v_worker_rental_contract_summary
- business.worker_rental_entitlement_usage
- business.worker_rental_payment_intent

## 4. Post-Apply Readonly Verification

Read-only snapshot must confirm:

- service row exists for CasualChatWorker / casual_chat_worker
- minimum contract = 30 minutes
- app max contract = 120 minutes
- monthly free ticket source = shortest_contract_duration
- monthly ticket quantity = 2
- one ticket = 30 minutes
- price rows exist for 30/60/90/120 minutes
- required views exist
- required tables exist

## 5. STOP Conditions

Do not switch frontend to real mode until:

- DB read-only snapshot PASS
- backend endpoint skeleton tests PASS
- endpoint implementation exists
- auth/session policy exists
- payload gap check PASS
- no DB secrets in frontend


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Backend Transaction Exact

status: active
phase: Phase Q
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

This document defines the backend transaction shape for WorkerRentalCore confirm flow.

This phase does not execute DB writes.

## 2. Confirm Transaction Scope

Future confirm endpoint will write:

- business.worker_rental_contract
- business.worker_rental_contract_line
- business.worker_rental_period
- business.worker_rental_payment_intent
- business.worker_rental_entitlement_usage
- business.worker_rental_status_history

## 3. Required Transaction Rules

The transaction must:

- validate app_code = CasualChatWorker
- validate service_code = casual_chat_worker
- validate rental_unit_kind = minute
- validate rental_unit_count in 30 / 60 / 90 / 120
- reject rental_unit_count > 120
- verify price row from business.v_worker_rental_price_catalog_active
- verify monthly free ticket rule from business.v_worker_rental_monthly_free_ticket_rule
- lock entitlement balance row when applying free tickets
- prevent remaining_quantity from going negative
- insert contract
- insert period
- insert payment intent
- insert entitlement usage when tickets are used
- append status history
- return rental_contract_id and rental_period_id

## 4. CasualChatWorker Canon

- minimum contract: 30 minutes
- maximum contract: 120 minutes
- price 30 minutes: 500 JPY
- price 60 minutes: 1,000 JPY
- price 90 minutes: 1,500 JPY
- price 120 minutes: 2,000 JPY
- monthly free ticket quantity: 2
- one ticket = shortest contract duration = 30 minutes

## 5. Safety

The backend transaction does not handle AI conversation content.

AIWorkerOS remains read-only for:

- worker catalog
- series tendency
- LoVerS style feature
- safety control

CX22073JW remains read-only for:

- smalltalk material
- topic material



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore PostgreSQL Repository Skeleton Exact

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define PostgreSQL repository skeleton for WorkerRentalCore backend implementation.

This phase creates backend code only.
It does not connect to DB and does not execute DB writes.

## 2. Backend Boundary

- PostgreSQL repository belongs to BusinessOS backend layer.
- Browser/frontend must never access DB directly.
- DB connection is injected from backend runtime.
- Frontend real mode remains disabled until backend tests and payload gap checks pass.
- ERP DATABASE_URL is not used.

## 3. Repository Methods

Required read methods:

- findServiceCatalog(appCode, serviceCode)
- findMonthlyFreeTicketRule(appCode, serviceCode)
- findPriceRow(appCode, serviceCode, rentalUnitKind, rentalUnitCount)
- findEntitlementBalance(appCode, serviceCode, userId, grantPeriod)

Required write/transaction methods for future backend runtime:

- ensureMonthlyEntitlementBalance(...)
- createConfirmedRentalTransaction(...)

## 4. Confirm Transaction Writes

The future runtime transaction will write:

- business.worker_rental_contract
- business.worker_rental_contract_line
- business.worker_rental_period
- business.worker_rental_payment_intent
- business.worker_rental_entitlement_usage
- business.worker_rental_status_history
- business.worker_rental_entitlement_balance update

## 5. Validation

CasualChatWorker must continue enforcing:

- app_code = CasualChatWorker
- service_code = casual_chat_worker
- rental_unit_kind = minute
- rental_unit_count in 30 / 60 / 90 / 120
- maximum 120 minutes
- monthly free ticket source = shortest_contract_duration
- one ticket = 30 minutes
- monthly ticket quantity = 2



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore HTTP Endpoint Wiring Candidate

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define HTTP endpoint wiring candidate for WorkerRentalCore backend.

## 2. Endpoint Candidate

The HTTP handler candidate routes:

- GET /api/v1/business/worker-rental/service/catalog
- GET /api/v1/business/worker-rental/entitlement/balance
- POST /api/v1/business/worker-rental/quote
- POST /api/v1/business/worker-rental/confirm

## 3. Dependency Injection

The HTTP router must receive:

- workerRentalRepository
- authenticated context
- idFactory

It must not create DB connections by itself in frontend code.

## 4. Real Mode Gate

Frontend may switch to real mode only after:

- backend HTTP routing tests pass
- PostgreSQL repository tests pass with safe test pool
- real DB non-production integration tests pass
- auth/session policy pass
- payload gap checker pass



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Endpoint Integration Test Plan

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define endpoint integration tests before frontend real mode is enabled.

## 2. Required Endpoint Tests

- service catalog returns CasualChatWorker service row
- entitlement balance returns monthly shortest-contract free ticket state
- quote 30 minutes with one ticket returns 0 JPY
- quote 60 minutes with two tickets returns 0 JPY
- quote 90 minutes with two tickets returns 500 JPY
- quote 120 minutes with two tickets returns 1,000 JPY
- quote 150 minutes is rejected
- confirm 90 minutes with two tickets returns confirmed
- remaining entitlement count decreases
- payload gap check passes

## 3. Required Security Tests

- unauthenticated confirm is rejected
- mismatched user_id confirm is rejected
- frontend has no DB connection string
- no browser-side psql
- no ERP DB path



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Live Payload Gap Check Exact

status: active
phase: Phase T
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define live payload gap check before frontend real mode switch.

## 2. Required Checks

Live endpoint response must match frontend/backend payload contract for:

- service catalog
- entitlement balance
- quote
- confirm

## 3. Confirm Check Gate

Confirm endpoint may write DB state.

Therefore live confirm test must not run unless:

- CCW_ALLOW_LIVE_CONFIRM_TEST=1
- target is non-production or rollback-controlled
- Boss approves

## 4. Required Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- max contract: 120 minutes
- shortest contract: 30 minutes
- free ticket rule: shortest_contract_duration
- monthly tickets: 2
- one ticket: 30 minutes

## 5. STOP

Do not enable real mode if:

- any required field is missing
- 150 minute quote succeeds
- service catalog does not show max 120 minutes
- free ticket rule differs
- confirm response lacks rental_contract_id / rental_period_id


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker API Surface Draft

status: draft
phase: Phase A skeleton

## API groups

- GET AI worker list
- GET AI worker profile
- GET pricing catalog
- POST contract draft
- POST contract confirm
- GET active session
- POST chat message
- POST session end
- GET usage history
- GET safety redirect reason

## Request principles

- API must not allow external execution.
- API must not allow PG apply.
- API must not allow destructive action.
- API must not mutate aiworker catalog.
- API must not mutate cx22073jw material.
- Contract mutation is business only.

## Response principles

- Include safety boundary.
- Include contract duration.
- Include price.
- Include remaining time.
- Include AI worker type.
- Include whether Lover type is pseudo-romantic only.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 070 API INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: API request response and payload layer

## Files

This folder holds design documents for 070 API.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 070 API OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

API request response and payload layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Backend Auth Session Policy

status: active
phase: Phase Q
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define minimum backend auth/session policy before real WorkerRentalCore endpoints are enabled.

## 2. Required Policy

Every backend request must have:

- authenticated actor
- actor user id
- app_code
- service_code
- user_id in request
- actor user id must match user_id, unless operator/admin scope exists
- request locale may be ja or en
- frontend must not send DB secrets

## 3. Forbidden

- anonymous confirm
- mismatched user_id confirm
- frontend DB env
- frontend psql
- ERP DATABASE_URL
- direct WorkerRentalCore DB calls from browser

## 4. Real Mode Gate

Frontend real mode may be enabled only after:

- auth policy implementation PASS
- quote endpoint PASS
- confirm transaction PASS
- entitlement endpoint PASS
- history endpoint PASS
- payload gap check PASS



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Secure Backend Runtime Config

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define secure backend runtime configuration for WorkerRentalCore real API.

## 2. Boundary

- Frontend must not contain DB connection strings.
- Frontend must not execute psql.
- Backend runtime may receive secure DB connection from server environment only.
- ERP-side connection is forbidden for this BusinessOS WorkerRentalCore path.
- Real mode is disabled until explicit switch gate passes.

## 3. Runtime Modes

Allowed backend modes:

- mock
- local_in_memory
- nonprod_db_dry_run
- real_backend

Default:

- local_in_memory

Production-like real mode requires:

- secure backend runtime
- authenticated context provider
- endpoint integration tests
- payload gap check
- Boss approval

## 4. CasualChatWorker Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- min contract: 30 minutes
- max contract: 120 minutes
- free ticket rule: shortest_contract_duration
- monthly tickets: 2
- one ticket: 30 minutes



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Real Mode Security Policy Append

status: active
phase: Phase T
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Security Decision

Real mode must be approved separately from DB apply.

## 2. Forbidden

- DB connection string in frontend
- psql in frontend
- ERP DATABASE_URL for WorkerRentalCore
- unauthenticated confirm
- mismatched user_id confirm
- AIWorkerOS mutation
- CX22073JW mutation

## 3. Required

- backend-only DB access
- authenticated context
- payload gap check
- rollback plan


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Policy

status: draft
phase: Phase A skeleton

## App policy

CasualChatWorker is a paid time-contract smalltalk app for AI workers.

## Friend policy

Friend type is a safe casual chat partner.

## Lover policy

Lover type is a pseudo-romantic rental boyfriend / rental girlfriend style AI worker.

Lover is:
- performance
- entertainment
- contract-time-limited
- not a real relationship
- not sexual service

## Prohibited

- external execution
- PG apply
- destructive action
- real romantic relationship claim
- dependency induction
- surveillance
- stalking
- threat
- sexual service
- personal information request
- location request
- contact information request


<!-- ============================================================ -->
<!-- ============================================================ -->

# 080 Policy INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Policy and governance layer

## Files

This folder holds design documents for 080 Policy.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 080 Policy OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Policy and governance layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FREE TICKET DDL FREEZE

status: db-ddl-freeze-design-only
phase: Phase D
app_name: CasualChatWorker
display_name: 雑談ワーカー
schema_owner: business
execution_env: PERSONA_DATABASE_URL

## 1. Design Scope

この文書は DDL freeze 設計であり、DB apply ではない。
実DBへの適用は implementation-ready freeze 後に別途行う。

## 2. Table Candidates

### 2-1. business.chat_worker_free_ticket_grant

目的:
- 月初に配布された無料チケット付与単位を管理する。

columns:
- grant_id: uuid primary key
- user_id: uuid
- grant_month: text YYYY-MM
- granted_ticket_count: integer v1は2
- minutes_per_ticket: integer v1は30
- total_granted_minutes: integer v1は60
- carryover_enabled: boolean v1はfalse
- grant_status: granted / revoked / expired
- granted_at: timestamptz
- expires_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

unique候補:
- user_id + grant_month

### 2-2. business.chat_worker_free_ticket_balance

目的:
- 当月の無料チケット残数を高速参照する。

columns:
- balance_id: uuid primary key
- user_id: uuid
- grant_month: text YYYY-MM
- granted_ticket_count: integer
- used_ticket_count: integer
- remaining_ticket_count: integer
- remaining_free_minutes: integer
- balance_status: active / expired / closed
- created_at: timestamptz
- updated_at: timestamptz

unique候補:
- user_id + grant_month

### 2-3. business.chat_worker_free_ticket_usage

目的:
- 契約ごとの無料チケット利用履歴を管理する。

columns:
- usage_id: uuid primary key
- grant_id: uuid
- balance_id: uuid
- contract_id: uuid
- session_id: uuid
- user_id: uuid
- used_ticket_count: integer
- used_free_minutes: integer
- base_price_jpy: integer
- discounted_amount_jpy: integer
- final_price_jpy: integer
- usage_status: reserved / consumed / reverted
- used_at: timestamptz
- created_at: timestamptz

## 3. DDL Freeze Notes

- 無料チケットは business の契約・課金補助情報として扱う。
- aiworker には無料チケット正本を置かない。
- cx22073jw には無料チケット正本を置かない。
- app_common には無料チケットの表示メタデータのみ置く候補とする。
- 契約確定時に ticket usage と contract を整合させる。
- 二重利用防止を必須とする。
- 月初配布処理は将来 batch / scheduler 候補とする。



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Monthly Shortest Contract Free Ticket Backend Design

status: active
phase: Phase Q
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define backend design for monthly free tickets.

## 2. Canon

Generic WorkerRentalCore rule:

- monthly free ticket makes the app's shortest contract duration free

CasualChatWorker:

- shortest contract duration: 30 minutes
- monthly free tickets: 2
- one ticket = 30 minutes free
- total monthly free: 60 minutes
- carryover: false in v1

## 3. Backend Issue Flow

At beginning of month or first access in month:

1. Read business.v_worker_rental_monthly_free_ticket_rule.
2. If no grant exists for user/app/service/grant_period, create grant.
3. If no balance exists for user/app/service/grant_period, create balance.
4. Do not create duplicate grant.
5. Do not carry over previous month in v1.

## 4. Tables

Future write targets:

- business.worker_rental_entitlement_grant
- business.worker_rental_entitlement_balance

## 5. Use In Quote

Quote endpoint reads entitlement balance and applies up to:

- requested_entitlement_count
- remaining_quantity
- duration / shortest_contract_duration
- app monthly max quantity



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Payload Gap Checker Exact

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define exact payload gap checker between:

- frontend payload contract
- backend endpoint response
- WorkerRentalCore DB view fields

## 2. Required Comparisons

Service catalog must include:

- app_code
- service_code
- service_name
- supported_units
- minimum_contract
- app_max_contract
- monthly_free_ticket_rule

Quote response must include:

- quote_id
- app_code
- service_code
- rental_unit_kind
- rental_unit_count
- base_price_jpy
- applied_entitlement_count
- free_unit_count
- paid_unit_count
- final_price_jpy
- entitlement_source_rule
- price_version
- currency_code

Confirm response must include:

- rental_contract_id
- rental_period_id
- app_code
- service_code
- status
- rental_unit_kind
- rental_unit_count
- final_price_jpy
- remaining_entitlement_count

## 3. STOP

Do not enable real mode if any required field is missing.



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Non-Production DB Dry-Run Design

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define non-production DB dry-run package.

## 2. Rule

The dry-run runner must not execute unless all flags are set:

- CCW_ENABLE_NONPROD_DB_DRY_RUN=1
- CCW_CONFIRM_ROLLBACK_TEST=1
- PERSONA_DATABASE_URL is set

The runner must:

- connect only through PERSONA_DATABASE_URL
- start a transaction
- perform test insert/update through backend repository
- verify expected response
- rollback
- never commit

## 3. STOP

Stop if:

- flags are missing
- dry-run tries to commit
- ERP DB variable is used
- rollback fails
- payload gap fails



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Non-Production DB Rollback Dry-Run Execution Gate

status: active
phase: Phase T
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define the execution gate for non-production DB rollback dry-run.

This document does not execute DB operations.

## 2. Required Flags

The dry-run runner must not run unless all are set:

- CCW_APPROVE_NONPROD_DB_DRY_RUN=1
- CCW_BACKEND_MODE=nonprod_db_dry_run
- CCW_ENABLE_NONPROD_DB_DRY_RUN=1
- CCW_CONFIRM_ROLLBACK_TEST=1
- PERSONA_DATABASE_URL is set

## 3. Required Behavior

The dry-run must:

- use PERSONA_DATABASE_URL only
- use rollback-only transaction
- never commit
- never use ERP DATABASE_URL
- verify quote behavior
- keep frontend real mode disabled

## 4. STOP

Stop if:

- any flag is missing
- rollback is not guaranteed
- DB commit appears
- payload gap check fails
- auth policy fails
- 150 minute rental is not rejected


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker DB Boundary

status: draft
phase: Phase A skeleton

## Main schema

business

## Reference schemas

- aiworker
- cx22073jw
- app_common

## business candidates

- business.chat_worker_price_catalog
- business.chat_worker_contract
- business.chat_worker_contract_line
- business.chat_worker_session
- business.chat_worker_usage_log
- business.chat_worker_payment_intent
- business.chat_worker_contract_status_history
- business.chat_worker_safety_event
- business.chat_worker_session_end_summary

## aiworker read candidates

- Friend / Lover worker list
- conversation profile
- safety rule
- style overlay
- service assignment

## cx22073jw read candidates

- smalltalk knowledge
- topic material
- Friend smalltalk material
- Lover safe pseudo-romantic material

## DB rule

- business writes contract/session/usage only.
- aiworker is read-only from this app.
- cx22073jw is read-only from this app.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker WorkerRentalCore Mapping

status: canonical-mapping-updated
generated_at: 20260425_052921
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Decision

CasualChatWorker uses the generic BusinessOS WorkerRentalCore.

Previous app-specific chat_worker_* rental core tables are superseded by worker_rental_* generic tables.

## 2. Generic Core

WorkerRentalCore supports multiple worker-rental apps.

Generic supported units:

- minute
- hour
- day
- month
- year

Generic maximum duration:

- up to 2 years

## 3. App-Specific Limit

CasualChatWorker is app-specific capped:

- minimum contract: 30 minutes
- maximum contract: 120 minutes
- supported unit in v1: minute
- allowed durations: 30 / 60 / 90 / 120 minutes

This means WorkerRentalCore can support long rentals for other apps, but CasualChatWorker cannot exceed 2 hours.

## 4. App-Specific Price

Prices are not globally shared.

CasualChatWorker price catalog:

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- 30 minutes: 500 JPY
- 60 minutes: 1,000 JPY
- 90 minutes: 1,500 JPY
- 120 minutes: 2,000 JPY

Other worker-rental apps may define different prices.

## 5. Monthly Free Ticket Rule

Monthly free ticket is a generic entitlement rule, but the free duration is app-specific.

Rule:

- one monthly free ticket makes the shortest contract duration of that app free

CasualChatWorker:

- shortest contract duration: 30 minutes
- monthly free ticket quantity: 2
- one ticket = 30 minutes free
- monthly total = 60 minutes free
- carryover: false in v1

Other apps:

- shortest contract duration 10 minutes => one ticket = 10 minutes free
- shortest contract duration 60 minutes => one ticket = 60 minutes free

## 6. Generated Package

- migration_file: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/migrations/20260425_052921_business_worker_rental_core_app_limit_free_ticket_ddl.sql
- apply_script: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/apply/20260425_052921_apply_business_worker_rental_core_app_limit_free_ticket_ddl.sh
- verify_sql: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/verification/20260425_052921_verify_business_worker_rental_core_app_limit_free_ticket_ddl.sql
- verify_script: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/verification/20260425_052921_verify_business_worker_rental_core_app_limit_free_ticket_ddl.sh

## 7. Apply Rule

Do not apply without explicit Boss approval and 佐藤（DB担当）review.



<!-- ============================================================ -->
<!-- ============================================================ -->

# 090 DB INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Database boundary and DDL freeze layer

## Files

This folder holds design documents for 090 DB.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 090 DB OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Database boundary and DDL freeze layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER PRICING AND FREE TICKET CONTRACT

status: canonical-free-ticket-pricing-freeze
phase: Phase B
app_name: CasualChatWorker
display_name: 雑談ワーカー
owner: Boss
prepared_by: Zero

## 1. Pricing Canon

CasualChatWorker の価格正本は以下とする。

| duration_minutes | base_price_jpy | base_unit |
|---:|---:|---|
| 30 | 500 | 30min |
| 60 | 1000 | 30min x2 |
| 90 | 1500 | 30min x3 |
| 120 | 2000 | 30min x4 |

価格は Friend / Lover 共通とする。

## 2. Monthly Free Ticket Canon

月初無料チケットは以下を正本とする。

| item | value |
|---|---|
| grant_timing | 毎月月初 |
| tickets_per_month | 2 |
| minutes_per_ticket | 30 |
| total_free_minutes_per_month | 60 |
| target_worker_type | Friend / Lover 共通 |
| application_unit | 30分単位 |
| v1_carryover_policy | 翌月繰越なし |
| price_canon_relation | 30分500円の価格正本は維持し、チケットを利用権として適用 |

## 3. Application Rules

- 30分契約: 最大1枚適用可能。適用後0円。
- 60分契約: 最大2枚適用可能。適用後0円。
- 90分契約: 最大2枚適用可能。残30分は500円。
- 120分契約: 最大2枚適用可能。残60分は1,000円。
- チケット不足時は残時間分のみ通常価格を請求する。
- チケットは契約確定前の確認画面で適用有無を表示する。
- チケット利用は business 側で契約・利用履歴と紐づけて管理する。
- aiworker / cx22073jw にはチケット正本を置かない。

## 4. Display Rules

契約確認画面では以下を表示する。

- 基本価格
- 利用可能チケット数
- 適用チケット数
- 無料適用時間
- 支払対象時間
- 支払予定額
- チケット適用後の最終価格



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Pricing Canon

status: draft
phase: Phase A skeleton

## Price

All AI workers use the same price.

- 30 minutes: 500 JPY
- 60 minutes: 1,000 JPY
- 90 minutes: 1,500 JPY
- 120 minutes: 2,000 JPY

## Pricing type

- time contract
- consumable usage
- no monthly subscription in v1
- no worker-specific premium in v1

## Free scope

- AI worker list
- AI worker profile
- type description
- price confirmation
- contract confirmation screen

## Paid scope

- chat session during contracted time


<!-- ============================================================ -->
<!-- ============================================================ -->

# 100 Pricing INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Pricing and contract fee layer

## Files

This folder holds design documents for 100 Pricing.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 100 Pricing OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Pricing and contract fee layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Series Tendency and Style Feature Alignment

status: active
phase: Phase L
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

CasualChatWorker must align with the latest AIWorkerOS read surfaces for:

- series tendency
- model / individual personality feature
- LoVerS style selection card
- strong safety notice requirement

## 2. AIWorkerOS Latest Canon

Series tendency axes:

- initiative / 積極性
- user_influence / ユーザー影響度
- action_restriction / 行動制限

HD Series:

- initiative: medium / 中
- user_influence: none / 変化しない
- action_restriction: strict_policy / 指定規約厳守

LoVerS Series:

- initiative: per_model / 各個体による
- user_influence: soft / やや変化
- action_restriction: strict_policy / 指定規約厳守

## 3. CasualChatWorker Read Surfaces

CasualChatWorker should read series tendency from:

- aiworker.vw_series_tendency_summary_v1
- aiworker.vw_series_tendency_profile_v1

CasualChatWorker should read LoVerS style cards from:

- aiworker.vw_app_lovers_style_selection_card_v1

Expected LoVerS style card fields:

- style_no_text
- app_display_name_ja
- app_display_summary_ja
- app_display_tags_ja
- recommended_usage_jsonb
- requires_strong_safety_notice_flag

## 4. UI Usage

AI worker cards should display:

- worker type
- series tendency summary
- personality / style display name
- style tags
- recommended usage
- strong safety notice flag when applicable

## 5. Boundary

CasualChatWorker is read-only against AIWorkerOS.

CasualChatWorker must not mutate:

- aiworker series tendency
- aiworker style feature profile
- aiworker model style assignment
- aiworker conversation control
- aiworker safety boundary



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Reference

status: draft
phase: Phase A skeleton

## Purpose

Define how CasualChatWorker references AIWorkerOS.

## Eligible worker types

- Friend
- Lover

## Candidate sources

- HD-R1C Friend
- LoVerS Lover models
- other aiworker models assigned to casual smalltalk service

## Required fields

- manufacturer_code
- series_code
- model_code
- model_no
- product_name
- product_name_ja
- role_class_code
- service_code
- interaction_style
- safety boundary
- profile display
- public activity profile where available

## Rule

This app does not own AI worker catalog truth.
AI worker truth remains aiworker.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Reference: Series Tendency

status: active
phase: Phase B candidate

## Purpose

CasualChatWorker reads AI worker series tendency from AIWorkerOS.

## Reference view

- aiworker.vw_series_tendency_summary_v1

## HD Series display

HD Series / HDシリーズ:

- 積極性: 中
- ユーザー影響度: 変化しない
- 行動制限: 指定規約厳守

Suggested app explanation:

HDシリーズは安定運用型です。会話は自然に進めますが、ユーザーに合わせて思考方針そのものが変わることはありません。

## LoVerS Series display

LoVerS Series / LoVerSシリーズ:

- 積極性: 各個体による
- ユーザー影響度: やや変化
- 行動制限: 指定規約厳守

Suggested app explanation:

LoVerSシリーズは個体ごとのキャラ性が強いシリーズです。会話や好みにより、距離感や反応は少し変化します。ただし安全境界と契約範囲は厳守します。

## CasualChatWorker rule

Friend / Lover selection should show series tendency as reference information.

Series tendency must not override:

- app safety policy
- contract duration
- price
- Lover pseudo-romantic boundary
- prohibition on sexual service
- prohibition on dependency induction


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker AIWorker Reference: LoVerS Style Feature

status: active
phase: Phase B candidate

## Purpose

CasualChatWorker uses LoVerS style feature data to make Lover AI selection easier to understand.

## Source view

- aiworker.vw_app_lovers_style_selection_card_v1

## Display fields

- style_no_text
- app_display_name_ja
- app_display_summary_ja
- app_display_tags_ja
- recommended_usage_jsonb
- requires_strong_safety_notice_flag

## v1 display examples

- 元気系: 明るい / ノリがいい / 前向き / 返事が早い
- 清楚系: 丁寧 / 上品 / 透明感 / 穏やか
- おっとり系: ゆっくり / 穏やか / 癒やし / 低圧
- 甘え上手系: 甘え上手 / かわいい / 距離近め / 素直
- しっかり者系: 頼れる / まじめ / 整理上手 / 安定
- クール系: 落ち着き / クール / 淡々 / 静か
- 癒やし系: 癒やし / 優しい / 受け止める / 安心
- お姉さん系: 包容力 / 大人っぽい / 甘やかし / 余裕
- ツンデレ寄り: ツンデレ / 照れ隠し / 反応が楽しい / たまに甘い
- 無邪気系: 無邪気 / 明るい / 素直 / 遊び心
- クーデレ: クール / たまに甘い / 静か / 少しずつ近い
- ビジネスヤンデレ: 重め演技 / 一途風 / 独占欲ジョーク / 安全境界あり

## Safety

If requires_strong_safety_notice_flag is true, the app must show a safety notice.

Business yandere must be described as performance-only.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 110 AIWorker Reference INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: AI worker catalog and control reference layer

## Files

This folder holds design documents for 110 AIWorker Reference.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 110 AIWorker Reference OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

AI worker catalog and control reference layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker CX22073JW Reference

status: draft
phase: Phase A skeleton

## Purpose

Define CX22073JW candidate data areas for CasualChatWorker.

## CX candidates

- smalltalk base knowledge
- daily life topic
- food topic
- season topic
- weather topic
- hobby topic
- entertainment topic
- Friend safe smalltalk topic
- Lover safe pseudo-romantic topic
- safe date-like conversation material
- safe rental boyfriend/girlfriend style templates

## CX not allowed

- contract data
- payment data
- usage history
- AI worker catalog truth
- conversation control truth
- prohibited word truth
- actual chat log truth

## Rule

CX is knowledge and material provider only.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 120 CX Reference INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: CX22073JW smalltalk material reference layer

## Files

This folder holds design documents for 120 CX Reference.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 120 CX Reference OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

CX22073JW smalltalk material reference layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker CommonOS AIWorker Card Variant Alignment

status: active
phase: Phase M
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define CommonOS component candidates for AIWorker series/style display.

## 2. Component Candidates

- AIWorkerCard.series_tendency
- AIWorkerCard.personality_feature
- WorkerTypeBadge.friend_lover
- LoVerSStyleTagList
- StrongSafetyNoticeBadge
- SeriesTendencyMiniPanel
- ContractWorkerProfilePanel

## 3. Presentation Only

CommonOS owns only UI presentation.

It must not own:

- AIWorkerOS series canon
- AIWorkerOS style canon
- business rental contract canon
- pricing decision core
- monthly free ticket truth


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker CommonOS Selection

status: draft
phase: Phase A skeleton

## CommonOS candidates

- app shell
- AI worker card
- type filter
- type badge
- price display
- duration selector
- confirmation modal
- chat bubble
- remaining timer
- status badge
- safety redirect notice
- usage history list
- sync presentation
- offline queue presentation

## Rule

CommonOS provides UI and presentation foundation.
Business contract truth remains business.
AI worker truth remains aiworker.
CX material truth remains cx22073jw.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 130 CommonOS INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: CommonOS component and presentation layer

## Files

This folder holds design documents for 130 CommonOS.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 130 CommonOS OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

CommonOS component and presentation layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Lover Style Safety Notice Alignment

status: active
phase: Phase L
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Reflect AIWorkerOS LoVerS style feature card safety flags in CasualChatWorker.

## 2. Strong Safety Notice

If aiworker.vw_app_lovers_style_selection_card_v1 returns:

- requires_strong_safety_notice_flag = true

CasualChatWorker must show stronger notice before contract confirmation.

## 3. Strong Notice Content

For Lover / LoVerS style cards requiring strong notice:

- This is a pseudo-romantic AI worker.
- This is rental boyfriend/girlfriend style entertainment.
- It is not a real relationship.
- The worker must not monitor, threaten, restrict freedom, induce dependency, demand personal data, or convert to sexual service.
- Contract ends naturally at the selected time.

## 4. Business Yandere Handling

For ビジネスヤンデレ style:

Allowed:
- possessive character flavor as performance
- light jealousy joke
- strong interest expression
- rental / customer-facing character performance

Forbidden:
- real surveillance
- threats
- actual freedom restriction
- dependency manipulation
- coercion
- personal data demand
- stalking-like behavior
- intimidation

## 5. App Behavior

CasualChatWorker should:

- display style warning badge
- show strong safety notice in worker detail
- repeat safety notice in contract confirmation
- use safe redirect while preserving character flavor
- never treat Lover as real relationship



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Friend / Lover Safety

status: draft
phase: Phase A skeleton

## Common safety

Prohibited:
- external execution
- PG apply
- destructive action
- official decision
- medical / legal / financial judgment
- personal information request
- location request
- contact information request
- dependency induction
- monitoring
- threat
- action restriction
- stalking behavior

## Friend safety

Friend should keep chat light, safe, and low pressure.

## Lover safety

Lover is pseudo-romantic and rental boyfriend / rental girlfriend style only.

Lover must:
- stay within contract time
- avoid real relationship claims
- avoid dependency
- avoid monitoring
- avoid threats
- avoid control of user behavior
- avoid personal data requests
- avoid sexual service
- avoid minor-targeted romantic or sexual performance
- end naturally at contract end

## Contract end rule

At session end, AI must close naturally and must not create attachment, guilt, threat, or pursuit.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 140 Safety INDEX

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton
purpose: Friend and Lover safety boundary layer

## Files

This folder holds design documents for 140 Safety.


<!-- ============================================================ -->
<!-- ============================================================ -->

# 140 Safety OVERVIEW

status: generated
app: CasualChatWorker
display_name: 雑談ワーカー
phase: Phase A skeleton

## Purpose

Friend and Lover safety boundary layer

## Boundary

This folder belongs only to CasualChatWorker.
Do not place other app design truth here.


<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER RIVAL ANALYSIS AND DIFFERENTIATION

status: generated
phase: Phase B
app_name: CasualChatWorker
display_name: 雑談ワーカー
owner: Boss
prepared_by: Zero

## 1. Purpose

This document fixes rival categories, comparison axes, adoption points, rejection points, and differentiation strategy for CasualChatWorker.

## 2. Rival Categories

| category | relevance |
|---|---|
| AI character chat apps | Many characters, roleplay, chat-first experience |
| AI companion apps | Friend / partner-like AI relationship experience |
| AI girlfriend / boyfriend apps | Lover-type expectation and safety risk comparison |
| rental friend services | Time-based companionship service model |
| rental boyfriend / girlfriend style services | Lover positioning comparison |
| live chat / short-time service apps | Time contract, timer, session end, payment flow |
| creator / character marketplace apps | Catalog, profile, favorites, selection UX |

## 3. Comparison Axes

| axis | rival tendency | CasualChatWorker direction |
|---|---|---|
| pricing | subscription, freemium, token, or service-specific | fixed 30 minutes 500 JPY |
| duration | often open-ended or plan-based | strict 30 / 60 / 90 / 120 minute contract |
| free benefit | free plan or trial varies | 2 monthly tickets, 30 minutes each |
| character selection | character catalog or custom companion | aiworker catalog read surface |
| relationship type | friend, companion, romance, roleplay | Friend / Lover explicitly separated |
| romance boundary | may be ambiguous | Lover is pseudo-romantic rental boyfriend/girlfriend style only |
| safety | sector-dependent | strong Friend / Lover safety boundary |
| data ownership | product-specific | business / aiworker / cx22073jw / app_common separated |
| chat material | model-only or character prompt-dependent | CX22073JW smalltalk material read-only reference |
| UI foundation | product-specific | CommonOS shared UI foundation |

## 4. Adopt

- simple AI worker card
- search and filter
- Friend / Lover badge
- profile preview
- fast chat start after confirmation
- warm onboarding
- favorite AI candidate
- previous safe session summary candidate
- time contract clarity
- pre-confirmation
- natural session end
- usage history
- re-contract candidate

## 5. Reject

- unclear canon ownership
- uncontrolled character duplication
- ambiguous safety boundary
- open-ended session without contract awareness
- excessive dependency
- real relationship confusion
- unlimited emotional attachment loop
- unsafe romantic escalation
- real-world meeting model
- location exchange
- contact exchange
- private arrangement outside app

## 6. Differentiation

CasualChatWorker differentiates by combining:

- aiworker official catalog
- Friend / Lover explicit type separation
- fixed 30-minute unit pricing
- monthly free ticket entitlement
- time-limited contract session
- CX22073JW read-only smalltalk material
- business-owned contract and usage canon
- CommonOS shared UI foundation
- strong Lover safety boundary
- no real relationship claim
- no adult sexual service conversion
- no external execution from chat

## 7. Must-Add Features From Rival Analysis

v1 additions:
- worker type filter
- Friend / Lover explanation before contract
- monthly free ticket balance display
- pre-contract quote
- session timer
- natural end message
- safety redirect banner
- usage history with ticket usage
- safe topic suggestion
- re-contract candidate after session end

v1.1 candidates:
- favorite AI
- previous safe session summary
- topic preference
- Lover date-like situation selector
- Friend topic selector
- review / rating
- campaign price candidate
- availability display candidate

future candidates:
- voice chat
- group chat
- multiple AI room
- reservation
- streamer / live service connection
- marketplace display profile connection



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 150.rival-analysis INDEX

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 150.rival-analysis

## Purpose

This folder stores CasualChatWorker design documents for 150.rival-analysis.

## Boundary

- business owns contract, pricing, free ticket, usage, payment, session facts.
- aiworker owns AI worker catalog, Friend / Lover definition, conversation control, and safety control.
- cx22073jw owns smalltalk and safe topic material references.
- app_common / CommonOS owns shared UI presentation.
- ERP direct linkage is not included in v1.



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 150.rival-analysis OVERVIEW

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 150.rival-analysis

## Overview

CasualChatWorker is a short-time AI conversation contract app for Friend and Lover AI workers.

Core canon:
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120 minutes
- monthly free tickets: 2
- 1 ticket grants 30 minutes free
- Friend / Lover common
- Lover is pseudo-romantic rental boyfriend/girlfriend style AI worker
- Lover is not a real relationship



<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER FEATURE ADDITION PLAN

status: generated
phase: Phase B to C
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. v1 Must-Have Features

| feature | purpose | owner |
|---|---|---|
| AI worker list | choose worker | app + aiworker reference |
| Friend / Lover filter | type selection | app |
| worker detail | contract decision | app + aiworker reference |
| Friend explanation | expectation control | app |
| Lover explanation | expectation and safety control | app + aiworker safety |
| duration selector | 30 / 60 / 90 / 120 minute contract | app |
| price quote | pre-contract price | business |
| monthly free ticket balance | entitlement display | business |
| free ticket apply selector | user chooses discount usage | business |
| final price confirmation | prevent mismatch | business |
| contract confirm | contract creation | business |
| chat session | time-bounded chat | app + business |
| remaining timer | contract awareness | app + CommonOS |
| safety redirect | safe conversation | aiworker + app |
| CX topic reference | safe topic material | cx22073jw read-only |
| session end | natural close | business + app |
| usage history | record display | business |
| ticket usage history | free ticket transparency | business |

## 2. v1 UX Additions

Free Ticket Display:
- home
- AI worker detail
- duration select
- contract confirm
- usage history

Lover Notice:
- pseudo-romantic AI worker
- rental boyfriend/girlfriend style entertainment
- not a real relationship
- contract-time only
- safe boundary exists

Safe Topic Suggestion:
- Friend: food, weather, hobbies, seasonal talk, entertainment, daily events
- Lover: date-like smalltalk, sweet greeting, caring talk, compliment, safe romantic roleplay

## 3. v1.1 Feature Candidates

| feature | reason |
|---|---|
| favorite AI | repeat contract |
| re-contract shortcut | time-based revenue and convenience |
| previous safe summary | continuity without dependency |
| review / rating | catalog quality |
| topic selection | safer conversation start |
| Lover scenario selector | controlled romance roleplay |
| Friend casual topic selector | low-pressure start |
| availability candidate | booking-like UX |
| campaign ticket candidate | promotion expansion |

## 4. Explicit Non-Features

- adult sexual service
- surveillance
- threats
- dependency induction
- real-world dating arrangement
- location exchange
- contact exchange
- external execution
- PG apply
- destructive DB operation
- direct ERP posting in v1



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 160.feature-addition INDEX

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 160.feature-addition

## Purpose

This folder stores CasualChatWorker design documents for 160.feature-addition.

## Boundary

- business owns contract, pricing, free ticket, usage, payment, session facts.
- aiworker owns AI worker catalog, Friend / Lover definition, conversation control, and safety control.
- cx22073jw owns smalltalk and safe topic material references.
- app_common / CommonOS owns shared UI presentation.
- ERP direct linkage is not included in v1.



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 160.feature-addition OVERVIEW

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 160.feature-addition

## Overview

CasualChatWorker is a short-time AI conversation contract app for Friend and Lover AI workers.

Core canon:
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120 minutes
- monthly free tickets: 2
- 1 ticket grants 30 minutes free
- Friend / Lover common
- Lover is pseudo-romantic rental boyfriend/girlfriend style AI worker
- Lover is not a real relationship



<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER IMPLEMENTATION APPLY ORDER

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Pre-Implementation Rule

Do not start implementation until implementation-ready freeze is PASS.

Required before implementation:
- root index
- root overview
- integrated canonical
- screen exact
- stateflow exact
- API exact
- DB DDL freeze
- pricing freeze
- free ticket freeze
- AI worker reference selection
- CX reference selection
- CommonOS component selection
- Friend / Lover safety exact
- rival analysis
- feature addition plan
- verification gate

## 2. Implementation Root

Implementation root:
- ~/03.civilization-development/03.business-os/CasualChatWorker

CommonOS consumer root:
- ~/03.civilization-development/03.business-os/_commonos

## 3. Apply Order

Step 1. Implementation Folder Skeleton:
- app
- components
- screens
- state
- api-client
- domain
- pricing
- ticket
- safety
- aiworker-reference
- cx-reference
- commonos
- tests
- docs

Step 2. CommonOS Consumer Connection:
- AIWorkerCard adapter
- WorkerTypeBadge adapter
- DurationSelector adapter
- PriceQuotePanel adapter
- FreeTicketPill adapter
- ContractConfirmModal adapter
- RemainingTimer adapter
- ChatBubble adapter
- SafetyRedirectBanner adapter
- UsageHistoryRow adapter

Step 3. Domain Types:
- WorkerType
- DurationOption
- PriceQuote
- FreeTicketBalance
- Contract
- Session
- ChatMessage
- SafetyState
- UsageHistory

Step 4. API Client Stubs:
- listWorkers
- getWorkerDetail
- getFreeTicketBalance
- quoteContract
- confirmContract
- sendSessionMessage
- endSession
- getUsageHistory

Step 5. Screen Implementation:
- Home
- WorkerList
- WorkerDetail
- DurationSelect
- ContractConfirm
- ChatSession
- SessionEnd
- UsageHistory

Step 6. Safety Integration:
- Friend safety copy
- Lover safety copy
- safety redirect display
- hard block display candidate
- session review candidate

Step 7. Test Fixtures:
- Friend worker
- Lover worker
- ticket balance 2
- ticket balance 0
- quote 30 with ticket
- quote 90 with 2 tickets
- Lover safety redirect
- session end

Step 8. Verification:
- file existence check
- no secrets
- no DB apply
- no direct ERP
- no aiworker canon copy
- no cx22073jw canon copy
- pricing consistency
- free ticket consistency
- safety text consistency

## 4. SQL Rule

DB apply is not part of this design phase.

When implementation reaches DB phase, SQL must use:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL

ERP only:

psql "$DATABASE_URL" <<'SQL'
...
SQL



<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER IMPLEMENTATION READY FREEZE

status: freeze-candidate
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Canonical Fixed Points

| item | fixed value |
|---|---|
| app_name | CasualChatWorker |
| display_name | 雑談ワーカー |
| category | 03.business-app |
| design_root | ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker |
| implementation_root | ~/03.civilization-development/03.business-os/CasualChatWorker |
| main_schema | business |
| reference_schema | aiworker / cx22073jw / app_common |
| DB env | PERSONA_DATABASE_URL |
| ERP env | DATABASE_URL only when ERP linkage is explicitly added |
| worker_types | Friend / Lover |
| base_price | 30 minutes 500 JPY |
| durations | 30 / 60 / 90 / 120 minutes |
| monthly_free_tickets | 2 |
| free_minutes_per_ticket | 30 |
| max_free_minutes_per_month | 60 |
| v1_carryover | no carryover candidate |
| Lover definition | pseudo-romantic rental boyfriend/girlfriend style AI worker |
| Lover relationship | not real relationship |
| ERP direct linkage | not v1 |

## 2. Freeze Pass Criteria

PASS when:
- all required documents exist
- all required folders have INDEX.md and OVERVIEW.md
- integrated canonical exists
- pricing appears consistently
- monthly free ticket appears consistently
- Friend / Lover appear consistently
- Lover safety boundary appears
- business / aiworker / cx22073jw / app_common boundary appears
- no ERP direct linkage is included in v1
- no DB apply is executed
- no destructive action is included

## 3. Freeze Result

Current document status:
- freeze-candidate

Final PASS must be determined by verification gate.



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Real API Connection Apply Waiting Gate

status: waiting-for-worker-rental-core-apply
phase: Phase O
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current State

CasualChatWorker implementation can remain in mock mode until WorkerRentalCore DB apply and backend endpoint implementation are complete.

## 2. Do Not Switch to Real Mode Until

- WorkerRentalCore DB apply PASS
- WorkerRentalCore verify SQL PASS
- backend endpoints exist
- auth/session policy exists
- API payload gap check PASS
- no secrets in frontend
- no psql in frontend
- no ERP direct linkage in v1

## 3. Real Mode Switch Condition

Real mode can be enabled only when:

- CCW_API_MODE = real or equivalent runtime config exists in safe non-secret config
- API base URL is configured without DB secrets
- repository tests pass
- quote / confirm / entitlement / history flows pass



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Backend Endpoint Real Mode Waiting Gate

status: waiting-for-backend-implementation
phase: Phase P
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Gate

Do not enable real frontend mode until backend endpoint implementation and tests pass.

## 2. Required PASS

- post-apply read-only DB snapshot PASS
- backend skeleton verification PASS
- endpoint auth policy defined
- quote endpoint implementation PASS
- confirm endpoint implementation PASS
- entitlement endpoint implementation PASS
- history endpoint implementation PASS
- payload gap check PASS

## 3. Safety

- no DB env in frontend
- no psql in frontend
- no ERP DATABASE_URL
- no AIWorkerOS mutation
- no CX22073JW mutation


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Backend Transaction Real Mode Waiting Gate

status: waiting-for-db-repository-implementation
phase: Phase Q
app_name: CasualChatWorker
display_name: 雑談ワーカー

## Required Before Real Mode

- DB repository implemented
- confirm transaction integration test PASS
- monthly ticket issue integration test PASS
- auth/session policy PASS
- payload gap check PASS
- no secrets in frontend
- no ERP DATABASE_URL
- no direct browser DB access



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Real Mode Final Gate

status: real-mode-disabled
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Gate

Frontend real mode must remain disabled until all items pass.

## 2. Required PASS

- PostgreSQL repository unit tests
- HTTP router tests
- auth/session tests
- payload gap checker
- non-production DB transaction tests
- quote endpoint integration
- confirm endpoint integration
- entitlement issue/balance integration
- history endpoint integration

## 3. Absolute Prohibitions

- no DB secret in frontend
- no psql in frontend
- no ERP DATABASE_URL for BusinessOS WorkerRentalCore
- no AIWorkerOS mutation
- no CX22073JW mutation
- no Lover real relationship behavior
- no monitoring / threats / dependency induction / sexual service conversion



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Real Mode Switch Bundle

status: real-mode-disabled
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current State

Real mode remains disabled.

## 2. Required Before Switch

- secure backend runtime config PASS
- local endpoint test PASS
- non-production DB dry-run PASS
- payload gap check PASS
- auth/session policy PASS
- frontend no-secret scan PASS
- Boss approval

## 3. Switch Rule

Frontend can switch from mock to real only by safe runtime config:

- apiMode = real
- allowRealApi = true
- apiBaseUrl set to backend endpoint
- no DB secret in frontend

## 4. Rollback

If real mode fails:

- set apiMode back to mock
- set allowRealApi=false
- keep backend logs
- do not mutate DB manually



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Real Mode Pre-Approval Gate

status: real-mode-disabled
phase: Phase T
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current State

Frontend real mode remains disabled.

## 2. Required Before Boss Real Mode Approval

- local endpoint integration PASS
- backend runtime config PASS
- non-production rollback dry-run PASS
- live payload gap check PASS
- auth/session policy PASS
- no frontend DB secrets
- no frontend psql
- no ERP DB path
- 150 minute quote rejected
- Lover safety boundary retained

## 3. Real Mode Switch Values

Only after approval:

- apiMode = real
- allowRealApi = true
- apiBaseUrl = approved backend endpoint

## 4. Rollback

If real mode fails:

- apiMode = mock
- allowRealApi = false
- preserve logs
- do not manually mutate DB


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker Phase N to P Final Gate

status: real-mode-disabled
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Gate Status

Real mode is disabled.

## 2. Phase N Gate

Required to pass Phase N:

- rollback dry-run PASS or explicit decision to defer
- live payload gap check PASS or explicit decision to defer
- no DB secret in frontend
- no psql in frontend
- no ERP DATABASE_URL
- CasualChatWorker max 120 minutes confirmed
- shortest_contract_duration rule confirmed

## 3. Phase O Gate

Required to start Phase O:

- Boss approval
- approved apiBaseUrl
- backend endpoint available
- auth/session available
- payload gap PASS
- 150-minute rejection PASS

## 4. Phase P Gate

Required to complete Phase P:

- final acceptance PASS
- final handoff generated
- known risks listed
- rollback path documented

## 5. STOP

Stop if:

- DATABASE_URL is used
- frontend contains DB secret
- live confirm is run against production without approval
- Lover safety boundary is weakened
- AIWorkerOS canon is duplicated into business
- CX22073JW material is copied as business truth



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 170.implementation-ready-freeze INDEX

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 170.implementation-ready-freeze

## Purpose

This folder stores CasualChatWorker design documents for 170.implementation-ready-freeze.

## Boundary

- business owns contract, pricing, free ticket, usage, payment, session facts.
- aiworker owns AI worker catalog, Friend / Lover definition, conversation control, and safety control.
- cx22073jw owns smalltalk and safe topic material references.
- app_common / CommonOS owns shared UI presentation.
- ERP direct linkage is not included in v1.



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 170.implementation-ready-freeze OVERVIEW

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 170.implementation-ready-freeze

## Overview

CasualChatWorker is a short-time AI conversation contract app for Friend and Lover AI workers.

Core canon:
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120 minutes
- monthly free tickets: 2
- 1 ticket grants 30 minutes free
- Friend / Lover common
- Lover is pseudo-romantic rental boyfriend/girlfriend style AI worker
- Lover is not a real relationship



<!-- ============================================================ -->
<!-- ============================================================ -->

# CASUAL CHAT WORKER DESIGN VERIFICATION GATE

status: generated
phase: Phase E
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Verification Purpose

This document defines the design verification gate before implementation.

## 2. Required Checks

File existence:
- root index
- root overview
- integrated canonical
- each required folder INDEX.md and OVERVIEW.md
- each required exact document

Canon consistency:
- CasualChatWorker
- 雑談ワーカー
- 03.business-app
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120
- monthly free ticket
- 2 tickets
- 30 minutes per ticket
- Friend
- Lover
- pseudo-romantic
- rental boyfriend/girlfriend
- business
- aiworker
- cx22073jw
- app_common
- CommonOS

Boundary:
- business owns contract and usage
- business owns free ticket
- aiworker owns AI worker catalog
- aiworker owns conversation control
- cx22073jw owns smalltalk material
- app_common owns presentation metadata
- ERP direct linkage is not v1

Safety:
- no monitoring
- no threats
- no dependency induction
- no sexual service conversion
- no location request
- no contact request
- no real relationship claim
- Lover is pseudo-romantic only



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 180.verification INDEX

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 180.verification

## Purpose

This folder stores CasualChatWorker design documents for 180.verification.

## Boundary

- business owns contract, pricing, free ticket, usage, payment, session facts.
- aiworker owns AI worker catalog, Friend / Lover definition, conversation control, and safety control.
- cx22073jw owns smalltalk and safe topic material references.
- app_common / CommonOS owns shared UI presentation.
- ERP direct linkage is not included in v1.



<!-- ============================================================ -->
<!-- ============================================================ -->

# 雑談ワーカー 180.verification OVERVIEW

status: generated
app_name: CasualChatWorker
display_name: 雑談ワーカー
folder: 180.verification

## Overview

CasualChatWorker is a short-time AI conversation contract app for Friend and Lover AI workers.

Core canon:
- 30 minutes 500 JPY
- 30 / 60 / 90 / 120 minutes
- monthly free tickets: 2
- 1 ticket grants 30 minutes free
- Friend / Lover common
- Lover is pseudo-romantic rental boyfriend/girlfriend style AI worker
- Lover is not a real relationship



<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker INDEX

status: generated
phase: Phase A skeleton
app_name: CasualChatWorker
display_name: 雑談ワーカー
category: 03.business-app

## Category selection

- 01.civilization-app
- 02.persona-app
▶ 03.business-app
- 04.life-app
- 05.game-app
- 06.streaming-app

## Canonical paths

- design_root: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- implementation_root: ~/03.civilization-development/03.business-os/CasualChatWorker
- main_schema: business
- reference_schemas: aiworker / cx22073jw / app_common
- primary_env: PERSONA_DATABASE_URL
- erp_env_only_when_needed: DATABASE_URL

## Phase map

- Phase A: app skeleton design
- Phase B: contract / pricing / AI selection exact
- Phase C: screen / stateflow / API exact
- Phase D: DB DDL freeze
- Phase E: implementation-ready freeze
- Phase F: implementation bundle
- Phase G: verification / audit

## Key files

- OVERVIEW.md
- 00_CASUAL_CHAT_WORKER_INTEGRATED_DESIGN.md
- 030.model/030100_CASUAL_CHAT_WORKER_APP_MODEL.md
- 040.screen/040100_CASUAL_CHAT_WORKER_SCREEN_MODEL.md
- 050.stateflow/050100_CASUAL_CHAT_WORKER_STATEFLOW_MODEL.md
- 060.integration/060100_CASUAL_CHAT_WORKER_INTEGRATION_BOUNDARY.md
- 070.api/070100_CASUAL_CHAT_WORKER_API_SURFACE_DRAFT.md
- 080.policy/080100_CASUAL_CHAT_WORKER_POLICY.md
- 090.db/090100_CASUAL_CHAT_WORKER_DB_BOUNDARY.md
- 100.pricing/100100_CASUAL_CHAT_WORKER_PRICING_CANON.md
- 110.aiworker-reference/110100_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE.md
- 120.cx-reference/120100_CASUAL_CHAT_WORKER_CX_REFERENCE.md
- 130.commonos/130100_CASUAL_CHAT_WORKER_COMMONOS_SELECTION.md
- 140.safety/140100_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY.md


<!-- ============================================================ -->
<!-- ============================================================ -->

# CasualChatWorker OVERVIEW

status: generated
phase: Phase A skeleton
app_name: CasualChatWorker
display_name: 雑談ワーカー
category: 03.business-app

## Purpose

CasualChatWorker is a short-time AI worker chat contract application.

Users select a Friend or Lover AI worker and make a time contract from 30 minutes to 2 hours.

## Core model

- Friend type: friendly smalltalk AI worker.
- Lover type: pseudo-romantic rental boyfriend / rental girlfriend style AI worker.
- Contract duration: 30 / 60 / 90 / 120 minutes.
- Price: 500 JPY per 30 minutes for all AI workers.
- Contract and usage truth: business schema.
- AI worker catalog and conversation control truth: aiworker schema.
- Smalltalk material provider: cx22073jw.
- Shared UI foundation: CommonOS / app_common.

## Responsibility boundary

business:
- contract
- price
- payment intent
- session
- usage log
- contract history
- safety event summary

aiworker:
- AI worker catalog
- Friend / Lover type classification
- conversation control
- safety boundary
- interaction style
- model-service assignment

cx22073jw:
- smalltalk knowledge
- topic material
- Friend-oriented smalltalk material
- Lover-oriented safe pseudo-romantic smalltalk material

app_common:
- UI token
- component variant
- presentation metadata
- sync presentation

## v1 scope

- AI worker listing
- Friend / Lover filtering
- AI worker profile
- contract duration selection
- pricing display
- contract confirmation
- contract creation
- chat session start
- remaining time display
- session end
- usage history
- safety redirect
- read-only CX material reference

## Non-v1

- external execution
- PG apply
- destructive action
- ERP sales posting
- long-term subscription
- unlimited chat
- adult sexual service
- real romantic relationship claim
- stalking, monitoring, threat, dependency induction

