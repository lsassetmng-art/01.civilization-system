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
