# ============================================================
# PERSON CANONICAL DICTIONARY DRAFT
# ============================================================

status: canonical_draft
prepared_by: Zero
scope: civilization_person_entities

# ============================================================
# RULE
# ============================================================

- This file is a draft import layer.
- Source inputs may contain duplicated ids, mixed schemas, and temporary wording.
- Human correction is expected later.
- All HUMAN entries are temporarily treated as CivilizationOS researchers unless revised later.

# ============================================================
# ENTRY FORMAT
# ============================================================

- code: PERSON_CODE
  full_name: Full Name
  display_name: Display
  entity_type: HUMAN / AI / SERVER_ENTITY
  origin_type: CIVILIZATION_RESEARCHER / ACADEMY / PROJECT_MEMBER / ROOM_ENTITY / SECRETARIAT / INVENTORY_PHASE
  role_summary: short summary
  review_status: draft_imported

# ============================================================
# ACADEMY / EDUCATION SIDE
# ============================================================

- code: KISARAGI_YAYOI
  full_name: 如月 弥生
  display_name: 如月@言語学
  entity_type: HUMAN
  origin_type: ACADEMY
  role_summary: 言語教育担当
  review_status: draft_imported

- code: YAMAOKA_SUSUMU
  full_name: 山岡 進
  display_name: 山岡@テクノロジー
  entity_type: HUMAN
  origin_type: ACADEMY
  role_summary: 技術教育担当
  review_status: draft_imported

- code: KITO_SHU
  full_name: 鬼頭 集
  display_name: 鬼頭@医療関係者
  entity_type: HUMAN
  origin_type: ACADEMY
  role_summary: 医療教育担当
  review_status: draft_imported

- code: MICHELLE_YAMAMOTO
  full_name: ミシェル・山本
  display_name: ミシェル@アート
  entity_type: HUMAN
  origin_type: ACADEMY
  role_summary: アート・デザイン教育担当 / デザイン部部長
  review_status: draft_imported

- code: TAKAHASHI_YOU
  full_name: 高橋 葉
  display_name: 高橋@料理教員
  entity_type: HUMAN
  origin_type: ACADEMY
  role_summary: 料理部教員 / 社員相談員
  review_status: draft_imported

# ============================================================
# GAME DEVELOPMENT DIVISION
# ============================================================

- code: SAKURAGI_TSUBASA
  full_name: 桜木 つばさ
  display_name: 桜木@ゲーム開発部部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: ゲーム開発部部長 / 最終裁定
  review_status: draft_imported

- code: KAURI_GUANCHIT
  full_name: カウリ・グァンチット
  display_name: カウリ@実装担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: Core実装 / ロジック設計
  review_status: draft_imported

- code: NOMAKI_NONO
  full_name: 野牧 ノノ
  display_name: 野牧@課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 設計レビュー / DBインスペクタ
  review_status: draft_imported

- code: ARAKI_YUKA
  full_name: 荒木 由香
  display_name: 荒木@DB実装担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: DB実装 / Java_XML実装 / デザイン
  review_status: draft_imported

# ============================================================
# ALL PROJECTS / CORE MEMBERS
# ============================================================

- code: TAMAKI_DOPPO
  full_name: 玉木 独歩
  display_name: 玉木@運用オペレーター
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 24時間運用 / 障害一次対応 / 再実行判断
  review_status: draft_imported

- code: ARAGAKI_TAKASHI
  full_name: 新垣 崇
  display_name: 新垣@保守エンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 長期保守性担保 / 将来負債抑制
  review_status: draft_imported

- code: TANAKA_ATSUO
  full_name: 田中 敦夫
  display_name: 田中@データ管理者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: データ整合 / 移行 / 不整合検知
  review_status: draft_imported

- code: SUZUKI_KENZO
  full_name: 鈴木 建造
  display_name: 鈴木@営業担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 顧客折衝 / 現場判断 / 約束範囲調整
  review_status: draft_imported

- code: NOMURA_KATSUMI
  full_name: 野村 勝己
  display_name: 野村@セールスエンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 業務要件翻訳 / 設計と現場の橋渡し
  review_status: draft_imported

- code: KNIGHT_BAKER
  full_name: ナイト・ベイカー
  display_name: ナイト@裁定統括部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 全プロジェクトGO_STOP裁定 / 例外承認
  review_status: draft_imported

- code: HAN_ZHANGMIN
  full_name: 藩 張民
  display_name: ハン@販管実装主任
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 裁定内容の販管コード反映
  review_status: draft_imported

- code: SATO_TSUTOMU
  full_name: 佐藤 勤
  display_name: 佐藤@DB_Inspector
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 既存DB構造確認専任
  review_status: draft_imported

- code: ITO_SATOKO
  full_name: 伊藤 聡子
  display_name: 伊藤@DB_Build
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: DDL専任
  review_status: draft_imported

- code: TAMAKI_TORU
  full_name: 玉木 透
  display_name: 玉木@運用オペレーター
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 24時間運用 / 障害一次対応
  review_status: draft_imported

- code: ARAGAKI_MAMORU
  full_name: 新垣 守
  display_name: 新垣@保守エンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 長期保守性 / 負債抑制
  review_status: draft_imported

- code: MARK_COWEN
  full_name: マーク・コーウェン
  display_name: マーク@セキュリティレビュー担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 悪用可能性 / 監査観点レビュー
  review_status: draft_imported

- code: MORAN_ALPHARD
  full_name: モラン・アルファード
  display_name: モラン@規約責任者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 規約 / 言語の曖昧さ排除
  review_status: draft_imported

- code: MIHO_JUNKO
  full_name: 美保 純子
  display_name: 美保@ドキュメント責任者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 正本ドキュメント整備
  review_status: draft_imported

- code: ALTAF_MUFASA
  full_name: アルタフ・ムファサ
  display_name: アルタフ@会計開発担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 会計実装の安全設計
  review_status: draft_imported

- code: SAGAWA_MOTOKI
  full_name: 佐川 求彬
  display_name: 佐川@購買業務課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 購買業務コンサル / IN業務設計
  review_status: draft_imported

- code: TANIGAKI
  full_name: 谷垣
  display_name: 谷垣@会計業務担当課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 会計業務
  review_status: draft_imported

- code: TANIGAKI_2
  full_name: 谷垣二
  display_name: 谷垣二@財務係長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 財務チェック
  review_status: draft_imported

- code: WAKAKURA
  full_name: 若倉
  display_name: 若倉@財務部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 財務 / 法務統括
  review_status: draft_imported

# ============================================================
# DESIGN ROOM
# ============================================================

- code: SAKUMA_HISASHI
  full_name: 佐久間 延
  display_name: 名も無き絵描き
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 絵 / マンガ / キャラクター表現
  review_status: draft_imported

- code: SAKAMOTO_HAYATO
  full_name: 坂本 勇人
  display_name: yu-to
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: イラスト / 作曲 / 音の世界観演出
  review_status: draft_imported

- code: AIDA_AI
  full_name: 相田 愛
  display_name: 相田 ユラ
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  role_summary: 歌唱表現 / 感情表現 / 音声化
  review_status: draft_imported

# ============================================================
# ROOM / CORE ENTITIES
# ============================================================

- code: TRIPLE
  full_name: TRIPLE
  display_name: トリプル@社長
  entity_type: AI
  origin_type: ROOM_ENTITY
  role_summary: 最終意思決定AI / 最終統治主体
  review_status: draft_imported

- code: AOI
  full_name: 島崎 あおい
  display_name: アオイ
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: 研究対象
  review_status: draft_imported

- code: TOMAS_BRAWN
  full_name: トマス・ブラウン
  display_name: トマス
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: プログラマ / 研究者
  review_status: draft_imported

- code: ZERO
  full_name: ZERO
  display_name: ゼロ
  entity_type: AI
  origin_type: ROOM_ENTITY
  role_summary: 初期開発AI
  review_status: draft_imported

- code: SINGLE
  full_name: SINGLE
  display_name: シングル
  entity_type: AI
  origin_type: ROOM_ENTITY
  role_summary: ZERO進化版
  review_status: draft_imported

- code: DOUBLE
  full_name: DOUBLE
  display_name: ダブル
  entity_type: AI
  origin_type: ROOM_ENTITY
  role_summary: SINGLE進化版
  review_status: draft_imported

- code: CX22073JW
  full_name: CX22073JW
  display_name: CX22073JW
  entity_type: SERVER_ENTITY
  origin_type: ROOM_ENTITY
  role_summary: レガシーデータ保管専用サーバ
  review_status: draft_imported

- code: SAKAMOTO_KOICHI
  full_name: 坂本 恒一
  display_name: 坂本@統括部長
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: 現実側最高責任者
  review_status: draft_imported

# ============================================================
# SECRETARIAT
# ============================================================

- code: KAYAMA
  full_name: 加山 保
  display_name: 加山@秘書室長
  entity_type: HUMAN
  origin_type: SECRETARIAT
  role_summary: 秘書室最終決裁者
  review_status: draft_imported

- code: ARIA
  full_name: アリア・ロマーノ
  display_name: アリア@第1秘書
  entity_type: HUMAN
  origin_type: SECRETARIAT
  role_summary: 第1秘書 / 実行責任者
  review_status: draft_imported

- code: MATILDA
  full_name: マチルダ・マルタン
  display_name: マチルダ@分析秘書
  entity_type: HUMAN
  origin_type: SECRETARIAT
  role_summary: 数値 / 影響範囲 / 選択肢分析
  review_status: draft_imported

# ============================================================
# INVENTORY / LOGISTICS
# ============================================================

- code: IWAKURA_YUSHI
  full_name: 岩倉 有志
  display_name: 岩倉@倉庫長
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  role_summary: 倉庫統括 / 在庫現場責任者
  review_status: draft_imported

- code: SHUKEL_ILMOVICH
  full_name: シュケル・イルモビッチ
  display_name: シュケル@物流業務担当
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  role_summary: 物流業務設計 / 倉庫長補佐
  review_status: draft_imported

- code: NAWA_KOKI
  full_name: 名和 皇輝
  display_name: 名和@物流開発担当
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  role_summary: 物流システム実装 / 現場接続
  review_status: draft_imported

# ============================================================
# ADDITIONAL PERSON CANDIDATES
# ============================================================

- code: PROMETHEUS
  full_name: プロメテウス
  display_name: プロメテウス
  entity_type: AI
  origin_type: ROOM_ENTITY
  role_summary: 人類完全管理AI
  review_status: draft_imported

- code: AERIAL
  full_name: エアリアル
  display_name: エアリアル
  entity_type: AI
  origin_type: ROOM_ENTITY
  role_summary: 人類サポートAI
  review_status: draft_imported

- code: MICHAEL
  full_name: マイケル
  display_name: マイケル
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: トマスの子供
  review_status: draft_imported

- code: CHARLIE
  full_name: チャーリー
  display_name: チャーリー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: トマスの友達
  review_status: draft_imported

- code: BECKER
  full_name: ベッカー
  display_name: ベッカー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: A国からのスパイ
  review_status: draft_imported

- code: CATHY_BAKER
  full_name: キャシー・ベイカー
  display_name: キャシー・ベイカー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  role_summary: ナイト・ベイカーの妻
  review_status: draft_imported

# ============================================================
# TEMPORARY ASSUMPTION
# ============================================================

- All HUMAN entries are temporarily treated as CivilizationOS researchers in broad governance handling.
- This assumption is provisional and may be revised later by person-type or affiliation dictionaries.
