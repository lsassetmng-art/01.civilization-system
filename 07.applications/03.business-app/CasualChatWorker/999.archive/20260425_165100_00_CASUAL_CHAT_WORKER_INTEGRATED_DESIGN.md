# ============================================================
# CASUAL CHAT WORKER INTEGRATED DESIGN
# ============================================================

status: regenerated
system: CasualChatWorker
generated_at: 20260425_060051
source_root: /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker
source_file_count: 68

excluded:
- existing integrated design files
- 900.meta
- 920.meta
- 999.archive
- .git

---

# Source file index

-      1	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/000_APP_DESIGN_DEVELOPMENT_RULE_CASUAL_CHAT_WORKER.md
-      2	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/010.index/010010_CASUAL_CHAT_WORKER_FREE_TICKET_INDEX.md
-      3	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/010.index/INDEX.md
-      4	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/010.index/OVERVIEW.md
-      5	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/020.overview/020010_CASUAL_CHAT_WORKER_FREE_TICKET_OVERVIEW.md
-      6	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/020.overview/INDEX.md
-      7	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/020.overview/OVERVIEW.md
-      8	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/030100_CASUAL_CHAT_WORKER_APP_MODEL.md
-      9	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/INDEX.md
-     10	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/030.model/OVERVIEW.md
-     11	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040010_CASUAL_CHAT_WORKER_FREE_TICKET_SCREEN_EXACT.md
-     12	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/040100_CASUAL_CHAT_WORKER_SCREEN_MODEL.md
-     13	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/INDEX.md
-     14	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/040.screen/OVERVIEW.md
-     15	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/050010_CASUAL_CHAT_WORKER_FREE_TICKET_STATEFLOW_EXACT.md
-     16	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/050100_CASUAL_CHAT_WORKER_STATEFLOW_MODEL.md
-     17	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/INDEX.md
-     18	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/050.stateflow/OVERVIEW.md
-     19	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060000_CASUAL_CHAT_WORKER_INTEGRATED_CANONICAL.md
-     20	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060010_CASUAL_CHAT_WORKER_FREE_TICKET_INTEGRATED_CANONICAL.md
-     21	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/060100_CASUAL_CHAT_WORKER_INTEGRATION_BOUNDARY.md
-     22	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/INDEX.md
-     23	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/060.integration/OVERVIEW.md
-     24	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070010_CASUAL_CHAT_WORKER_FREE_TICKET_API_EXACT.md
-     25	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/070100_CASUAL_CHAT_WORKER_API_SURFACE_DRAFT.md
-     26	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/INDEX.md
-     27	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/070.api/OVERVIEW.md
-     28	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/080100_CASUAL_CHAT_WORKER_POLICY.md
-     29	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/INDEX.md
-     30	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/080.policy/OVERVIEW.md
-     31	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090010_CASUAL_CHAT_WORKER_FREE_TICKET_DDL_FREEZE.md
-     32	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/090100_CASUAL_CHAT_WORKER_DB_BOUNDARY.md
-     33	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/20260425_052921_CASUAL_CHAT_WORKER_WORKER_RENTAL_CORE_MAPPING.md
-     34	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/INDEX.md
-     35	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/090.db/OVERVIEW.md
-     36	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/100010_CASUAL_CHAT_WORKER_PRICING_AND_FREE_TICKET_CONTRACT.md
-     37	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/100100_CASUAL_CHAT_WORKER_PRICING_CANON.md
-     38	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/INDEX.md
-     39	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/100.pricing/OVERVIEW.md
-     40	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110100_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE.md
-     41	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110200_CASUAL_CHAT_WORKER_SERIES_TENDENCY_REFERENCE.md
-     42	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/110300_CASUAL_CHAT_WORKER_LOVERS_STYLE_FEATURE_REFERENCE.md
-     43	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/INDEX.md
-     44	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/110.aiworker-reference/OVERVIEW.md
-     45	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/120100_CASUAL_CHAT_WORKER_CX_REFERENCE.md
-     46	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/INDEX.md
-     47	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/120.cx-reference/OVERVIEW.md
-     48	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/130100_CASUAL_CHAT_WORKER_COMMONOS_SELECTION.md
-     49	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/INDEX.md
-     50	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/130.commonos/OVERVIEW.md
-     51	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/140100_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY.md
-     52	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/INDEX.md
-     53	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/140.safety/OVERVIEW.md
-     54	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/150.rival-analysis/150010_CASUAL_CHAT_WORKER_RIVAL_ANALYSIS_AND_DIFF.md
-     55	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/150.rival-analysis/INDEX.md
-     56	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/150.rival-analysis/OVERVIEW.md
-     57	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/160.feature-addition/160010_CASUAL_CHAT_WORKER_FEATURE_ADDITION_PLAN.md
-     58	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/160.feature-addition/INDEX.md
-     59	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/160.feature-addition/OVERVIEW.md
-     60	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170010_CASUAL_CHAT_WORKER_IMPLEMENTATION_APPLY_ORDER.md
-     61	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/170020_CASUAL_CHAT_WORKER_IMPLEMENTATION_READY_FREEZE.md
-     62	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/INDEX.md
-     63	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/170.implementation-ready-freeze/OVERVIEW.md
-     64	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/180.verification/180010_CASUAL_CHAT_WORKER_DESIGN_VERIFICATION_GATE.md
-     65	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/180.verification/INDEX.md
-     66	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/180.verification/OVERVIEW.md
-     67	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/INDEX.md
-     68	/data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/CasualChatWorker/OVERVIEW.md

---



<!-- ============================================================ -->
<!-- ============================================================ -->

# SOURCE: 000_APP_DESIGN_DEVELOPMENT_RULE_CASUAL_CHAT_WORKER.md

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

# SOURCE: 010.index/010010_CASUAL_CHAT_WORKER_FREE_TICKET_INDEX.md

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

# SOURCE: 010.index/INDEX.md

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

# SOURCE: 010.index/OVERVIEW.md

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

# SOURCE: 020.overview/020010_CASUAL_CHAT_WORKER_FREE_TICKET_OVERVIEW.md

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

# SOURCE: 020.overview/INDEX.md

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

# SOURCE: 020.overview/OVERVIEW.md

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

# SOURCE: 030.model/030100_CASUAL_CHAT_WORKER_APP_MODEL.md

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

# SOURCE: 030.model/INDEX.md

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

# SOURCE: 030.model/OVERVIEW.md

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

# SOURCE: 040.screen/040010_CASUAL_CHAT_WORKER_FREE_TICKET_SCREEN_EXACT.md

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

# SOURCE: 040.screen/040100_CASUAL_CHAT_WORKER_SCREEN_MODEL.md

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

# SOURCE: 040.screen/INDEX.md

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

# SOURCE: 040.screen/OVERVIEW.md

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

# SOURCE: 050.stateflow/050010_CASUAL_CHAT_WORKER_FREE_TICKET_STATEFLOW_EXACT.md

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

# SOURCE: 050.stateflow/050100_CASUAL_CHAT_WORKER_STATEFLOW_MODEL.md

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

# SOURCE: 050.stateflow/INDEX.md

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

# SOURCE: 050.stateflow/OVERVIEW.md

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

# SOURCE: 060.integration/060000_CASUAL_CHAT_WORKER_INTEGRATED_CANONICAL.md

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

# SOURCE: 060.integration/060010_CASUAL_CHAT_WORKER_FREE_TICKET_INTEGRATED_CANONICAL.md

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

# SOURCE: 060.integration/060100_CASUAL_CHAT_WORKER_INTEGRATION_BOUNDARY.md

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

# SOURCE: 060.integration/INDEX.md

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

# SOURCE: 060.integration/OVERVIEW.md

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

# SOURCE: 070.api/070010_CASUAL_CHAT_WORKER_FREE_TICKET_API_EXACT.md

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

# SOURCE: 070.api/070100_CASUAL_CHAT_WORKER_API_SURFACE_DRAFT.md

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

# SOURCE: 070.api/INDEX.md

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

# SOURCE: 070.api/OVERVIEW.md

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

# SOURCE: 080.policy/080100_CASUAL_CHAT_WORKER_POLICY.md

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

# SOURCE: 080.policy/INDEX.md

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

# SOURCE: 080.policy/OVERVIEW.md

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

# SOURCE: 090.db/090010_CASUAL_CHAT_WORKER_FREE_TICKET_DDL_FREEZE.md

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

# SOURCE: 090.db/090100_CASUAL_CHAT_WORKER_DB_BOUNDARY.md

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

# SOURCE: 090.db/20260425_052921_CASUAL_CHAT_WORKER_WORKER_RENTAL_CORE_MAPPING.md

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

# SOURCE: 090.db/INDEX.md

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

# SOURCE: 090.db/OVERVIEW.md

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

# SOURCE: 100.pricing/100010_CASUAL_CHAT_WORKER_PRICING_AND_FREE_TICKET_CONTRACT.md

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

# SOURCE: 100.pricing/100100_CASUAL_CHAT_WORKER_PRICING_CANON.md

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

# SOURCE: 100.pricing/INDEX.md

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

# SOURCE: 100.pricing/OVERVIEW.md

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

# SOURCE: 110.aiworker-reference/110100_CASUAL_CHAT_WORKER_AIWORKER_REFERENCE.md

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

# SOURCE: 110.aiworker-reference/110200_CASUAL_CHAT_WORKER_SERIES_TENDENCY_REFERENCE.md

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

# SOURCE: 110.aiworker-reference/110300_CASUAL_CHAT_WORKER_LOVERS_STYLE_FEATURE_REFERENCE.md

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

# SOURCE: 110.aiworker-reference/INDEX.md

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

# SOURCE: 110.aiworker-reference/OVERVIEW.md

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

# SOURCE: 120.cx-reference/120100_CASUAL_CHAT_WORKER_CX_REFERENCE.md

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

# SOURCE: 120.cx-reference/INDEX.md

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

# SOURCE: 120.cx-reference/OVERVIEW.md

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

# SOURCE: 130.commonos/130100_CASUAL_CHAT_WORKER_COMMONOS_SELECTION.md

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

# SOURCE: 130.commonos/INDEX.md

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

# SOURCE: 130.commonos/OVERVIEW.md

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

# SOURCE: 140.safety/140100_CASUAL_CHAT_WORKER_FRIEND_LOVER_SAFETY.md

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

# SOURCE: 140.safety/INDEX.md

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

# SOURCE: 140.safety/OVERVIEW.md

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

# SOURCE: 150.rival-analysis/150010_CASUAL_CHAT_WORKER_RIVAL_ANALYSIS_AND_DIFF.md

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

# SOURCE: 150.rival-analysis/INDEX.md

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

# SOURCE: 150.rival-analysis/OVERVIEW.md

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

# SOURCE: 160.feature-addition/160010_CASUAL_CHAT_WORKER_FEATURE_ADDITION_PLAN.md

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

# SOURCE: 160.feature-addition/INDEX.md

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

# SOURCE: 160.feature-addition/OVERVIEW.md

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

# SOURCE: 170.implementation-ready-freeze/170010_CASUAL_CHAT_WORKER_IMPLEMENTATION_APPLY_ORDER.md

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

# SOURCE: 170.implementation-ready-freeze/170020_CASUAL_CHAT_WORKER_IMPLEMENTATION_READY_FREEZE.md

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

# SOURCE: 170.implementation-ready-freeze/INDEX.md

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

# SOURCE: 170.implementation-ready-freeze/OVERVIEW.md

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

# SOURCE: 180.verification/180010_CASUAL_CHAT_WORKER_DESIGN_VERIFICATION_GATE.md

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

# SOURCE: 180.verification/INDEX.md

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

# SOURCE: 180.verification/OVERVIEW.md

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

# SOURCE: INDEX.md

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

# SOURCE: OVERVIEW.md

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

