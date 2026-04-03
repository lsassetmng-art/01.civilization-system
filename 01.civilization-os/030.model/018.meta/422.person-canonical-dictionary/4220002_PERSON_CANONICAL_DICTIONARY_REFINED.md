# ============================================================
# PERSON CANONICAL DICTIONARY REFINED
# ============================================================

status: canonical_draft
source:
- 4220001_PERSON_CANONICAL_DICTIONARY_DRAFT.md
prepared_by: Zero

# ============================================================
# RULE
# ============================================================

- This file is a refined layer over the imported draft.
- Duplicated or near-duplicated human entries are intentionally preserved when they may represent different people.
- Later normalization may split this file into:
  - human_person
  - ai_persona
  - server_entity
  - organization_role_binding

# ============================================================
# ENTRY FORMAT
# ============================================================

- code: PERSON_CODE
  full_name: Full Name
  display_name: Display
  entity_type: HUMAN / AI / SERVER_ENTITY
  origin_type: ACADEMY / PROJECT_MEMBER / ROOM_ENTITY / SECRETARIAT / INVENTORY_PHASE
  functional_group: EDUCATION / DEVELOPMENT / OPERATIONS / GOVERNANCE / SECURITY / DOCUMENTATION / SALES / FINANCE / LOGISTICS / CREATIVE / EXECUTIVE / RESEARCH / SYSTEM_ENTITY
  role_summary: short summary
  provisional_human_policy: true / false
  review_status: refined_draft

# ============================================================
# ACADEMY / EDUCATION
# ============================================================

- code: KISARAGI_YAYOI
  full_name: 如月 弥生
  display_name: 如月@言語学
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 言語教育担当
  provisional_human_policy: true
  review_status: refined_draft

- code: YAMAOKA_SUSUMU
  full_name: 山岡 進
  display_name: 山岡@テクノロジー
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 技術教育担当
  provisional_human_policy: true
  review_status: refined_draft

- code: KITO_SHU
  full_name: 鬼頭 集
  display_name: 鬼頭@医療関係者
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 医療教育担当
  provisional_human_policy: true
  review_status: refined_draft

- code: MICHELLE_YAMAMOTO
  full_name: ミシェル・山本
  display_name: ミシェル@アート
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: CREATIVE
  role_summary: アート・デザイン教育担当 / デザイン部部長
  provisional_human_policy: true
  review_status: refined_draft

- code: TAKAHASHI_YOU
  full_name: 高橋 葉
  display_name: 高橋@料理教員
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 料理部教員 / 社員相談員
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# DEVELOPMENT / PROJECT MEMBERS
# ============================================================

- code: SAKURAGI_TSUBASA
  full_name: 桜木 つばさ
  display_name: 桜木@ゲーム開発部部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: ゲーム開発部部長 / 最終裁定
  provisional_human_policy: true
  review_status: refined_draft

- code: KAURI_GUANCHIT
  full_name: カウリ・グァンチット
  display_name: カウリ@実装担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: Core実装 / ロジック設計
  provisional_human_policy: true
  review_status: refined_draft

- code: NOMAKI_NONO
  full_name: 野牧 ノノ
  display_name: 野牧@課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: 設計レビュー / DBインスペクタ
  provisional_human_policy: true
  review_status: refined_draft

- code: ARAKI_YUKA
  full_name: 荒木 由香
  display_name: 荒木@DB実装担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: DB実装 / Java_XML実装 / デザイン
  provisional_human_policy: true
  review_status: refined_draft

- code: HAN_ZHANGMIN
  full_name: 藩 張民
  display_name: ハン@販管実装主任
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: 販管実装主任
  provisional_human_policy: true
  review_status: refined_draft

- code: SATO_TSUTOMU
  full_name: 佐藤 勤
  display_name: 佐藤@DB_Inspector
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: DB確認専任
  provisional_human_policy: true
  review_status: refined_draft

- code: ITO_SATOKO
  full_name: 伊藤 聡子
  display_name: 伊藤@DB_Build
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: DDL専任
  provisional_human_policy: true
  review_status: refined_draft

- code: ALTAF_MUFASA
  full_name: アルタフ・ムファサ
  display_name: アルタフ@会計開発担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: 会計実装の安全設計
  provisional_human_policy: true
  review_status: refined_draft

- code: NAWA_KOKI
  full_name: 名和 皇輝
  display_name: 名和@物流開発担当
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  functional_group: DEVELOPMENT
  role_summary: 物流システム実装 / 現場接続
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# OPERATIONS / MAINTENANCE / DATA
# ============================================================

- code: TAMAKI_DOPPO
  full_name: 玉木 独歩
  display_name: 玉木@運用オペレーター
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 24時間運用 / 障害一次対応 / 再実行判断
  provisional_human_policy: true
  review_status: refined_draft

- code: TAMAKI_TORU
  full_name: 玉木 透
  display_name: 玉木@運用オペレーター
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 24時間運用 / 障害一次対応
  provisional_human_policy: true
  review_status: refined_draft

- code: ARAGAKI_TAKASHI
  full_name: 新垣 崇
  display_name: 新垣@保守エンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 長期保守性担保
  provisional_human_policy: true
  review_status: refined_draft

- code: ARAGAKI_MAMORU
  full_name: 新垣 守
  display_name: 新垣@保守エンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 長期保守性 / 負債抑制
  provisional_human_policy: true
  review_status: refined_draft

- code: TANAKA_ATSUO
  full_name: 田中 敦夫
  display_name: 田中@データ管理者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: データ整合 / 移行 / 不整合検知
  provisional_human_policy: true
  review_status: refined_draft

- code: IWAKURA_YUSHI
  full_name: 岩倉 有志
  display_name: 岩倉@倉庫長
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  functional_group: LOGISTICS
  role_summary: 倉庫統括 / 在庫現場責任者
  provisional_human_policy: true
  review_status: refined_draft

- code: SHUKEL_ILMOVICH
  full_name: シュケル・イルモビッチ
  display_name: シュケル@物流業務担当
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  functional_group: LOGISTICS
  role_summary: 物流業務設計 / 倉庫長補佐
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# SALES / FINANCE / BUSINESS
# ============================================================

- code: SUZUKI_KENZO
  full_name: 鈴木 建造
  display_name: 鈴木@営業担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SALES
  role_summary: 顧客折衝 / 現場判断 / 約束範囲調整
  provisional_human_policy: true
  review_status: refined_draft

- code: NOMURA_KATSUMI
  full_name: 野村 勝己
  display_name: 野村@セールスエンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SALES
  role_summary: 業務要件翻訳 / 設計と現場の橋渡し
  provisional_human_policy: true
  review_status: refined_draft

- code: SAGAWA_MOTOKI
  full_name: 佐川 求彬
  display_name: 佐川@購買業務課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SALES
  role_summary: 購買業務コンサル / IN業務設計
  provisional_human_policy: true
  review_status: refined_draft

- code: TANIGAKI
  full_name: 谷垣
  display_name: 谷垣@会計業務担当課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: FINANCE
  role_summary: 会計業務
  provisional_human_policy: true
  review_status: refined_draft

- code: TANIGAKI_2
  full_name: 谷垣二
  display_name: 谷垣二@財務係長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: FINANCE
  role_summary: 財務チェック
  provisional_human_policy: true
  review_status: refined_draft

- code: WAKAKURA
  full_name: 若倉
  display_name: 若倉@財務部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: FINANCE
  role_summary: 財務 / 法務統括
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# GOVERNANCE / SECURITY / DOCUMENTATION
# ============================================================

- code: KNIGHT_BAKER
  full_name: ナイト・ベイカー
  display_name: ナイト@裁定統括部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: EXECUTIVE
  role_summary: 組織最終裁定者
  provisional_human_policy: true
  review_status: refined_draft

- code: MARK_COWEN
  full_name: マーク・コーウェン
  display_name: マーク@セキュリティレビュー担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SECURITY
  role_summary: 悪用可能性 / 監査観点レビュー
  provisional_human_policy: true
  review_status: refined_draft

- code: MORAN_ALPHARD
  full_name: モラン・アルファード
  display_name: モラン@規約責任者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: GOVERNANCE
  role_summary: 規約 / 言語曖昧性排除
  provisional_human_policy: true
  review_status: refined_draft

- code: MIHO_JUNKO
  full_name: 美保 純子
  display_name: 美保@ドキュメント責任者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DOCUMENTATION
  role_summary: 正本ドキュメント整備
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# CREATIVE
# ============================================================

- code: SAKUMA_HISASHI
  full_name: 佐久間 延
  display_name: 名も無き絵描き
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: CREATIVE
  role_summary: 絵 / マンガ / キャラクター表現
  provisional_human_policy: true
  review_status: refined_draft

- code: SAKAMOTO_HAYATO
  full_name: 坂本 勇人
  display_name: yu-to
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: CREATIVE
  role_summary: イラスト / 作曲 / 音の世界観演出
  provisional_human_policy: true
  review_status: refined_draft

- code: AIDA_AI
  full_name: 相田 愛
  display_name: 相田 ユラ
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: CREATIVE
  role_summary: 歌唱表現 / 感情表現 / 音声化
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# ROOM / SECRETARIAT / CORE ENTITIES
# ============================================================

- code: TRIPLE
  full_name: TRIPLE
  display_name: トリプル@社長
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: EXECUTIVE
  role_summary: 最終意思決定AI / 最終統治主体
  provisional_human_policy: false
  review_status: refined_draft

- code: ZERO
  full_name: ZERO
  display_name: ゼロ
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: 初期開発AI
  provisional_human_policy: false
  review_status: refined_draft

- code: SINGLE
  full_name: SINGLE
  display_name: シングル
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: ZERO進化版
  provisional_human_policy: false
  review_status: refined_draft

- code: DOUBLE
  full_name: DOUBLE
  display_name: ダブル
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: SINGLE進化版
  provisional_human_policy: false
  review_status: refined_draft

- code: CX22073JW
  full_name: CX22073JW
  display_name: CX22073JW
  entity_type: SERVER_ENTITY
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: レガシーデータ保管専用サーバ
  provisional_human_policy: false
  review_status: refined_draft

- code: PROMETHEUS
  full_name: プロメテウス
  display_name: プロメテウス
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: 人類完全管理AI
  provisional_human_policy: false
  review_status: refined_draft

- code: AERIAL
  full_name: エアリアル
  display_name: エアリアル
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: 人類サポートAI
  provisional_human_policy: false
  review_status: refined_draft

- code: AOI
  full_name: 島崎 あおい
  display_name: アオイ
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: 研究対象
  provisional_human_policy: true
  review_status: refined_draft

- code: TOMAS_BRAWN
  full_name: トマス・ブラウン
  display_name: トマス
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: プログラマ / 研究者
  provisional_human_policy: true
  review_status: refined_draft

- code: MICHAEL
  full_name: マイケル
  display_name: マイケル
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: トマスの子供
  provisional_human_policy: true
  review_status: refined_draft

- code: CHARLIE
  full_name: チャーリー
  display_name: チャーリー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: トマスの友達
  provisional_human_policy: true
  review_status: refined_draft

- code: BECKER
  full_name: ベッカー
  display_name: ベッカー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: SECURITY
  role_summary: A国からのスパイ
  provisional_human_policy: true
  review_status: refined_draft

- code: CATHY_BAKER
  full_name: キャシー・ベイカー
  display_name: キャシー・ベイカー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: ナイト・ベイカーの妻
  provisional_human_policy: true
  review_status: refined_draft

- code: SAKAMOTO_KOICHI
  full_name: 坂本 恒一
  display_name: 坂本@統括部長
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: EXECUTIVE
  role_summary: 現実側最高責任者
  provisional_human_policy: true
  review_status: refined_draft

- code: KAYAMA
  full_name: 加山 保
  display_name: 加山@秘書室長
  entity_type: HUMAN
  origin_type: SECRETARIAT
  functional_group: EXECUTIVE
  role_summary: 秘書室最終決裁者
  provisional_human_policy: true
  review_status: refined_draft

- code: ARIA
  full_name: アリア・ロマーノ
  display_name: アリア@第1秘書
  entity_type: HUMAN
  origin_type: SECRETARIAT
  functional_group: OPERATIONS
  role_summary: 第1秘書 / 実行責任者
  provisional_human_policy: true
  review_status: refined_draft

- code: MATILDA
  full_name: マチルダ・マルタン
  display_name: マチルダ@分析秘書
  entity_type: HUMAN
  origin_type: SECRETARIAT
  functional_group: DOCUMENTATION
  role_summary: 数値 / 影響範囲 / 選択肢分析
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# DUPLICATION NOTE
# ============================================================

- TAMAKI_DOPPO and TAMAKI_TORU are preserved as separate provisional persons.
- ARAGAKI_TAKASHI and ARAGAKI_MAMORU are preserved as separate provisional persons.
- TANIGAKI and TANIGAKI_2 are preserved as separate provisional persons.
- Later normalization may merge, split, or alias entries after person identity review.

# ============================================================
# FOUNDATION FIGURES
# ============================================================

- code: HELIOS_ROSSO
  full_name: ヘリオス・ロッソ
  display_name: ヘリオス・ロッソ
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: ヘリオス民主王国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: ISAAC_COWEN
  full_name: アイザック・コーウェン
  display_name: アイザック・コーウェン
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: ノヴァ商業連邦国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: NINOMIYA_SANSHO
  full_name: 二宮 実彰
  display_name: 二宮 実彰
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: 成和国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: HONDA_AKIRA
  full_name: 本田 明
  display_name: 本田 明
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: 成和国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: NIJIMA_SHIGEO
  full_name: 新島 茂雄
  display_name: 新島 茂雄
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: 成和国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: JACK_DAVIS
  full_name: ジャック・デイヴィス
  display_name: ジャック・デイヴィス
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: グラディア軍事同盟 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: IBRAHIM_ADEBAYO
  full_name: イブラヒム・アデバヨ
  display_name: イブラヒム・アデバヨ
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: オルフェウス海洋連合国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: KEVIN
  full_name: ケヴィン
  display_name: ケヴィン
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: オルフェウス海洋連合国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: JOACHIM
  full_name: ヨアヒム
  display_name: ヨアヒム
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: オルフェウス海洋連合国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: MIKHAIL_IVANOV
  full_name: ミハイル・イワノフ
  display_name: ミハイル・イワノフ
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: アウレリア連邦共和国 建国者
  provisional_human_policy: true
  review_status: refined_draft
