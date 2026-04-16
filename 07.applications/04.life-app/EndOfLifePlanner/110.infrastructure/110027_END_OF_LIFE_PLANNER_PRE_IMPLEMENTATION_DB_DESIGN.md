phase: L5-pre-implementation-db-design

# ============================================================
# EndOfLifePlanner 実装前DB設計書
# SQLなし / 論理設計固定版
# ============================================================

design_status:
  status: pre-implementation-db-design
  phase: design-only
  app: EndOfLifePlanner
  domain: LifeOS / 07.applications / 04.life-app
  owner: Boss
  prepared_by: Zero

document_purpose:
  - 実装前に DB の責務と境界を固定する
  - SQL を書く前に、保持対象・主キー・参照関係・制約方針を明確化する
  - 画面仕様、権限仕様、payload仕様と整合した論理DB設計にする
  - まだ実装しない

non_scope:
  - executable SQL
  - migration script
  - RLS実装
  - trigger実装
  - index作成文
  - 実データ投入

database_placement_policy:
  schema: life
  schema_reason:
    - EndOfLifePlanner は LifeOS 領域である
    - app専用独立schemaは作らず、life schema 配下で管理する
  table_prefix_policy:
    - EndOfLifePlanner 専用テーブルは eol_ 接頭辞で識別する
  scope_key:
    - life_person_id を owner 本人スコープの基準キーとする

storage_principles:
  - user-scoped を基本とする
  - 高機微情報は sensitivity_class で分類する
  - 終活固有文脈はテーブル責務で分離する
  - 共有権限はデータ本体と分離して保持する
  - 出力物は元データと別に snapshot として保持する
  - 監査ログは業務データと分離する

logical_table_catalog:

  eol_owner_profile:
    responsibility:
      - owner 本人の基礎プロフィール保持
    role_in_system:
      - 全終活データの人物基準
      - ホーム表示や出力時の基礎情報源
    main_screen:
      - eol_owner_profile

  eol_emergency_contact:
    responsibility:
      - 緊急連絡先保持
    role_in_system:
      - 緊急時優先連絡順の基礎
      - 医療意思画面から参照される
    main_screen:
      - eol_emergency_contacts

  eol_family_profile:
    responsibility:
      - 家族・支援者・関係者の基礎情報保持
    role_in_system:
      - 共有先候補
      - 契約/書類の関係者紐付け先
    main_screen:
      - eol_family_registry

  eol_medical_preference:
    responsibility:
      - 医療意思の履歴保持
    role_in_system:
      - 現行意思と過去版を管理
      - 家族共有/緊急共有対象の高機微情報
    main_screen:
      - eol_medical_preferences

  eol_care_preference:
    responsibility:
      - 介護意思の履歴保持
    role_in_system:
      - 現行意思と過去版を管理
    main_screen:
      - eol_care_preferences

  eol_funeral_preference:
    responsibility:
      - 葬儀・墓・供養希望の履歴保持
    role_in_system:
      - 家族引継ぎ時の参照元
    main_screen:
      - eol_funeral_preferences

  eol_contract_registry:
    responsibility:
      - 契約・継続契約・サブスクの棚卸し
    role_in_system:
      - 契約整理
      - 解約要否管理
      - 支払概要整理
    main_screen:
      - eol_contract_registry
      - eol_subscription_registry

  eol_digital_asset_note:
    responsibility:
      - デジタル資産/アカウント所在情報の整理
    role_in_system:
      - デジタル遺品の所在整理
      - 高機微領域のため masking 前提
    main_screen:
      - eol_digital_assets

  eol_document_registry:
    responsibility:
      - 重要書類の所在整理
    role_in_system:
      - 家族向け確認資料
      - 契約/相続準備の所在確認
    main_screen:
      - eol_document_registry
      - eol_important_locations

  eol_family_message:
    responsibility:
      - 家族向け文章メッセージ保持
    role_in_system:
      - 条件付き公開される引継ぎメッセージ
    main_screen:
      - eol_family_messages
      - eol_photo_audio_messages

  eol_handoff_document:
    responsibility:
      - 共有パック出力結果の snapshot 保持
    role_in_system:
      - 出力履歴
      - マスキング方針付き出力記録
    main_screen:
      - eol_handoff_pack

  eol_sharing_permission:
    responsibility:
      - family_viewer / delegated_editor の共有権限定義
    role_in_system:
      - 可視範囲、編集範囲、出力許可の正本
    main_screen:
      - eol_sharing_settings

  eol_checklist_item:
    responsibility:
      - 終活進捗管理
    role_in_system:
      - ダッシュボード進捗率
      - 未完了項目抽出
    main_screen:
      - eol_checklist
      - eol_home_dashboard

  eol_access_audit_log:
    responsibility:
      - 閲覧、出力、権限変更、更新操作の監査
    role_in_system:
      - owner 向け監査証跡
    main_screen:
      - eol_access_audit

key_design_policy:
  primary_key:
    rule:
      - 全テーブルで単独 id を持つ
      - id は論理的に不変
    naming:
      - <table_role>_id

  scope_key:
    rule:
      - 全 owner 配下データは life_person_id を持つ
      - owner 本人のデータ境界は life_person_id で固定する

  foreign_key_policy:
    explicit_reference_allowed:
      - eol_medical_preference.emergency_contact_reference_id -> eol_emergency_contact
      - eol_contract_registry.responsible_family_profile_id -> eol_family_profile
      - eol_document_registry.related_family_profile_id -> eol_family_profile
      - eol_sharing_permission.grantee_family_profile_id -> eol_family_profile
      - eol_access_audit_log.actor_family_profile_id -> eol_family_profile
    polymorphic_reference_policy:
      - checklist_item.linked_entity は logical reference 扱い
      - access_audit_log.target_entity も logical reference を許容する

table_column_responsibility:

  eol_owner_profile:
    must_hold:
      - 表示名
      - 任意の補足プロフィール
      - 表示言語
      - 状態
    should_not_hold:
      - 高度な医療/法務文脈
      - 共有権限情報

  eol_emergency_contact:
    must_hold:
      - 氏名
      - 関係
      - 連絡先
      - 優先順
      - 共有可否
    should_not_hold:
      - 医療判断内容
      - 法的役割判定

  eol_family_profile:
    must_hold:
      - 家族/関係者情報
      - 支援者識別
      - 共有先候補情報
    should_not_hold:
      - 共有可視範囲の正本
      - 監査履歴

  eol_medical_preference:
    must_hold:
      - 医療意思本文
      - 共有範囲
      - 現行/履歴識別
      - 発効日
    should_not_hold:
      - 医療機関の診断結果
      - 医師判断の確定値

  eol_care_preference:
    must_hold:
      - 介護希望
      - 優先事項
      - 共有範囲
      - 現行/履歴識別
    should_not_hold:
      - 介護制度判定結果
      - 専門家判断の確定値

  eol_funeral_preference:
    must_hold:
      - 葬儀規模や供養希望
      - 金額目安
      - 共有範囲
      - 現行/履歴識別
    should_not_hold:
      - 契約確定情報
      - 宗教的有効性判断

  eol_contract_registry:
    must_hold:
      - 契約名
      - 提供者
      - 契約カテゴリ
      - 金額/通貨
      - 解約要否
      - 書類所在メモ
    should_not_hold:
      - 契約本文原本
      - 解約実行結果

  eol_digital_asset_note:
    must_hold:
      - サービス名
      - 資産種別
      - 所在ヒント
      - 手続きメモ
      - masking前提情報
    should_not_hold:
      - パスワード平文
      - 秘密鍵平文
      - 完全認証情報

  eol_document_registry:
    must_hold:
      - 書類名
      - 書類種別
      - 保管形式
      - 保管場所メモ
      - 関係者紐付け
    should_not_hold:
      - 原本全文
      - 法的効力判定

  eol_family_message:
    must_hold:
      - メッセージ本文
      - 公開条件
      - 対象範囲
      - 添付数
    should_not_hold:
      - 共有権限定義の正本

  eol_handoff_document:
    must_hold:
      - 出力種別
      - 出力時対象範囲
      - masking方針
      - 出力日時
      - 生成者区分
    should_not_hold:
      - 元データの編集可能正本

  eol_sharing_permission:
    must_hold:
      - 共有相手
      - role
      - visible categories
      - editable categories
      - export許可
      - attachment閲覧許可
      - 状態
    should_not_hold:
      - 共有対象の実データ本体

  eol_checklist_item:
    must_hold:
      - 項目コード
      - 表示名
      - 完了状態
      - 優先度
      - 任意リンク先
    should_not_hold:
      - 実データ本文

  eol_access_audit_log:
    must_hold:
      - actor
      - action
      - target
      - 結果
      - 発生日時
    should_not_hold:
      - 編集用業務データ
      - 可変な二次集計値

uniqueness_policy:
  strict_uniqueness:
    - eol_sharing_permission の active 共有は、同一 owner / 同一相手 / 同一role で重複させない
    - owner_profile の current active は owner ごとに1つを基本とする
    - 医療意思 current active は owner ごとに1つを基本とする
    - 介護意思 current active は owner ごとに1つを基本とする
    - 葬儀意思 current active は owner ごとに1つを基本とする
  soft_uniqueness:
    - checklist item は seed項目について item_code 重複を避ける
    - emergency_contact は同一人物の完全重複登録を警告対象とする
    - contract_registry は同名契約でも provider が異なれば許容する
  duplicate_tolerance:
    - family_profile は同名でも関係者が別なら許容
    - document_registry は原本/コピー違いを許容
    - family_message は版違い/対象違いを許容

versioning_policy:
  versioned_tables:
    - eol_medical_preference
    - eol_care_preference
    - eol_funeral_preference
  version_rule:
    - 明示更新時は上書きではなく新しい版として保持する
    - 業務上の現行版は current active で識別する
    - 過去版は監査・確認のため残す
  non_versioned_but_history_sensitive:
    - eol_handoff_document
    - eol_sharing_permission
    - eol_access_audit_log
  snapshot_policy:
    eol_handoff_document:
      - 出力時点の snapshot を保持する
      - 元データ更新後も過去出力物の意味は維持する

lifecycle_policy:
  record_status:
    - active
    - archived
    - deleted_logical
  deletion_baseline:
    - 高機微データは物理削除ではなく論理削除優先
    - 監査ログは通常削除しない
    - 共有権限は削除より revoke/expired を優先する
  archive_target_examples:
    - 過去の共有権限
    - 不要になった書類所在
    - 旧版出力物
  physical_delete_policy:
    - 実装前設計段階では原則想定しない
    - 実装時に特別な保守運用としてのみ検討する

sensitivity_policy:
  S1_low:
    examples:
      - checklist_item
  S2_medium:
    examples:
      - emergency_contact
      - family_profile
      - contract_registry
      - document_registry
      - sharing_permission
      - handoff_document metadata
  S3_high:
    examples:
      - medical_preference
      - care_preference
      - funeral_preference
      - digital_asset_note
      - family_message
  handling_rules:
    S1_low:
      - 通常表示可
    S2_medium:
      - 共有範囲制御を要する
    S3_high:
      - owner明示共有前提
      - export時 masking前提
      - 再認証推奨
      - 監査強化対象

structured_vs_flexible_policy:
  fixed_columns_preferred:
    - 一覧検索に使う値
    - 画面フィルタに使う値
    - 権限判定に使う値
    - 集計対象に使う値
  flexible_payload_allowed:
    - 出力時 snapshot 範囲
    - masking policy
    - 可視カテゴリ定義
    - 編集カテゴリ定義
  reason:
    - 業務上よく使う属性は列化しないと検索・整合性が弱くなる
    - 一方で出力設定やカテゴリ可視設定は柔軟性が必要

audit_policy:
  audit_target_actions:
    - view
    - export
    - permission_change
    - attachment_play
    - create
    - update
    - logical_delete
  actor_types:
    - owner
    - family_viewer
    - delegated_editor
    - system
  audit_invariants:
    - 監査ログは append-only とする
    - 過去ログは業務データ更新の影響を受けない
    - 誰が何を見たか、何を出力したかを追跡可能にする
  non_goal:
    - ログから業務データを再構築すること
    - 監査ログを編集可能にすること

permission_reflection_policy:
  source_of_truth:
    - 共有権限の正本は eol_sharing_permission
  viewer_rule:
    - family_viewer は visible_categories で許可されたものだけ見える
  editor_rule:
    - delegated_editor は editable_categories で許可されたものだけ更新できる
  export_rule:
    - export_allowed が false の場合は viewer/export を禁止する
    - 高機微カテゴリは export_allowed=true でも masking policy を要する
  attachment_rule:
    - attachment_view_allowed が false の場合、family_message 添付の参照不可

screen_db_mapping:
  eol_home_dashboard:
    reads:
      - eol_checklist_item
      - eol_sharing_permission
      - recent updates from main tables
  eol_owner_profile:
    reads_writes:
      - eol_owner_profile
  eol_emergency_contacts:
    reads_writes:
      - eol_emergency_contact
  eol_family_registry:
    reads_writes:
      - eol_family_profile
  eol_medical_preferences:
    reads_writes:
      - eol_medical_preference
    reads_optional:
      - eol_emergency_contact
  eol_care_preferences:
    reads_writes:
      - eol_care_preference
  eol_funeral_preferences:
    reads_writes:
      - eol_funeral_preference
  eol_contract_registry:
    reads_writes:
      - eol_contract_registry
      - eol_family_profile optional
  eol_subscription_registry:
    reads:
      - eol_contract_registry filtered as subscription
  eol_digital_assets:
    reads_writes:
      - eol_digital_asset_note
  eol_document_registry:
    reads_writes:
      - eol_document_registry
      - eol_family_profile optional
  eol_important_locations:
    reads:
      - eol_document_registry
      - eol_contract_registry
      - eol_digital_asset_note
  eol_family_messages:
    reads_writes:
      - eol_family_message
  eol_handoff_pack:
    reads:
      - main source tables by category
    writes:
      - eol_handoff_document
  eol_checklist:
    reads_writes:
      - eol_checklist_item
  eol_sharing_settings:
    reads_writes:
      - eol_sharing_permission
      - eol_family_profile
  eol_access_audit:
    reads:
      - eol_access_audit_log

db_open_points:
  - owner_profile を完全独立テーブルにするか、既存 life person 基礎情報参照中心にするか
  - 添付ファイルメタを family_message から分離するか
  - checklist_item を seed master + user state の2層に分けるか
  - handoff_document の本体保持を別ストレージ参照にするか
  - shared categories を JSON で持つか、行分解するか
  - current active 判定列を明示列で持つか、状態と最新版規則で表現するか

db_readiness_check:
  fixed:
    - テーブル責務
    - 主キー方針
    - 参照方針
    - 機微度方針
    - 履歴方針
    - 監査方針
    - 共有権限正本
  not_yet_fixed:
    - 物理テーブル定義
    - 型の最終確定
    - 制約の最終表現
    - index の最終選定
    - migration順序
  readiness_level:
    - SQL草案作成の前段階としては十分
    - まだ実装着手はしない

recommended_next_step:
  - 実装準備完了判定書
  - 画面別正式仕様書
  - API設計書の正式化
  - 共通部品審査持ち込み文書の整理
