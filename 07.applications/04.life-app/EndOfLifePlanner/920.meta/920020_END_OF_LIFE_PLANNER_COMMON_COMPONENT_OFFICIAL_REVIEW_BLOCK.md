# ============================================================
# END OF LIFE PLANNER COMMON COMPONENT OFFICIAL REVIEW BLOCK
# ============================================================

status: canonical-draft
phase: L3-common-component-official-review
owner: Boss
prepared_by: Zero
source_app: EndOfLifePlanner
domain: 07.applications / 04.life-app

review_purpose:
  - EndOfLifePlanner 固有ではなく、他アプリでも再利用価値が高い部品候補を正式審査へ持ち込む
  - まだ正式採用ではなく、候補として切り出す
  - 採用時は application-common-components 側で責務と境界を再定義する

review_policy:
  - EndOfLifePlanner 固有文脈をそのまま共通化しない
  - 医療/法務など高文脈ロジックは共通部品へ混ぜすぎない
  - 権限・監査・共有など横断価値が高いものを優先する
  - additive only
  - 共通化後も owner 明示共有、masking、audit の安全条件を落とさない

candidate_summary:
  total_candidates: 7
  priority_order:
    - emergency_contact_common_component
    - family_sharing_permission_common_component
    - important_document_location_common_component
    - handoff_pack_output_common_component
    - audit_log_view_common_component
    - statement_template_common_component
    - sensitive_export_masking_common_component

candidates:

  - candidate_id: EOL-CC-001
    candidate_name: emergency_contact_common_component
    name_ja: 緊急連絡先共通部品
    category: profile_contact
    reuse_value:
      - LifeOS 横断
      - 一部 BusinessOS / PersonaOS でも転用余地あり
    used_in_endoflifeplanner:
      - 緊急連絡先登録
      - 医療意思での参照
      - 緊急時導線
    proposed_scope:
      - 連絡先基本項目
      - 優先順位
      - 関係ラベル
      - 共有可否
      - 緊急時表示順
    not_in_scope:
      - 終活固有の文脈説明
      - 医療判断ロジック
    reasons_to_adopt:
      - 他の健康・介護・家族支援系アプリでも横断利用しやすい
      - 入力項目と表示順の標準化価値が高い
    risks:
      - アプリごとに必要項目差分が出やすい
    recommendation: adopt_review_high

  - candidate_id: EOL-CC-002
    candidate_name: family_sharing_permission_common_component
    name_ja: 家族共有権限共通部品
    category: sharing_permission
    reuse_value:
      - LifeOS 横断で高い
    used_in_endoflifeplanner:
      - family_viewer / delegated_editor
      - visible_categories
      - editable_categories
      - export_allowed
      - attachment_view_allowed
    proposed_scope:
      - viewer/editor の二段階共有権限
      - カテゴリ単位可視範囲
      - 期限付き共有
      - revoke / expire
    not_in_scope:
      - アプリ固有カテゴリ定義
      - 相続/医療などの文脈判定
    reasons_to_adopt:
      - 家族共有を持つ LifeOS アプリ群に横展開しやすい
      - 権限境界の設計品質を上げやすい
    risks:
      - 柔軟すぎる設計にすると複雑化する
    recommendation: adopt_review_high

  - candidate_id: EOL-CC-003
    candidate_name: important_document_location_common_component
    name_ja: 重要書類所在管理共通部品
    category: registry_location
    reuse_value:
      - LifeOS 横断で高い
      - 一部 BusinessOS 文書所在管理にも転用余地あり
    used_in_endoflifeplanner:
      - 書類一覧
      - 重要情報の所在整理
      - 契約書所在メモ
    proposed_scope:
      - 書類名
      - 書類カテゴリ
      - 保管形式
      - 保管場所メモ
      - 関係者紐付け
      - 共有可否
    not_in_scope:
      - 終活固有カテゴリ説明
      - 法的有効性判定
    reasons_to_adopt:
      - 書類そのものではなく「所在整理」に特化すると再利用しやすい
    risks:
      - 原本/コピー/画像の境界を曖昧にすると事故要因になる
    recommendation: adopt_review_high

  - candidate_id: EOL-CC-004
    candidate_name: handoff_pack_output_common_component
    name_ja: 引継ぎパック出力共通部品
    category: export_pack
    reuse_value:
      - LifeOS 横断で中〜高
    used_in_endoflifeplanner:
      - family_summary
      - emergency_use
      - contract_index
      - message_pack
    proposed_scope:
      - 出力対象カテゴリ選択
      - masking_policy
      - preview
      - generated snapshot
      - download history
    not_in_scope:
      - EndOfLifePlanner 固有テンプレート本文
      - 相続特有の出力様式
    reasons_to_adopt:
      - 家族共有や引継ぎがある他アプリにも展開可能
    risks:
      - 汎用化しすぎると出力テンプレート設計が重くなる
    recommendation: adopt_review_mid_high

  - candidate_id: EOL-CC-005
    candidate_name: audit_log_view_common_component
    name_ja: 閲覧監査ログ共通部品
    category: governance_audit
    reuse_value:
      - LifeOS / BusinessOS 横断で高い
    used_in_endoflifeplanner:
      - view
      - export
      - permission_change
      - attachment_play
      - create/update/logical_delete
    proposed_scope:
      - 監査イベント標準項目
      - フィルタ
      - occurred_at 降順表示
      - append-only 前提
    not_in_scope:
      - 各アプリ固有 action の意味解釈
    reasons_to_adopt:
      - 高機微情報を扱うアプリ全般で横断利用しやすい
    risks:
      - action taxonomy を雑にすると統一失敗しやすい
    recommendation: adopt_review_high

  - candidate_id: EOL-CC-006
    candidate_name: statement_template_common_component
    name_ja: 意思表明テンプレート共通部品
    category: statement_template
    reuse_value:
      - LifeOS 横断で中
    used_in_endoflifeplanner:
      - 医療意思
      - 介護意思
      - 葬儀希望
      - 家族向けメッセージ
    proposed_scope:
      - テンプレート文面枠
      - summary_text
      - free_text_wish
      - language 切替
    not_in_scope:
      - 法的有効性保証
      - 医療判断断定
      - 終活固有の強い文脈ルール
    reasons_to_adopt:
      - 他の LifeOS アプリでも希望表明テンプレートとして流用可能
    risks:
      - 高文脈領域まで共通化すると危険
    recommendation: adopt_review_mid

  - candidate_id: EOL-CC-007
    candidate_name: sensitive_export_masking_common_component
    name_ja: 高機微出力マスキング共通部品
    category: security_masking
    reuse_value:
      - LifeOS / BusinessOS 横断で高い
    used_in_endoflifeplanner:
      - digital_asset_note masked_only
      - S3_high summary_only 推奨
      - handoff_document preview / generate
    proposed_scope:
      - field path 単位 masking
      - summary_only / partial_mask / hide
      - export前確認
      - warning response
    not_in_scope:
      - アプリ固有本文の自動再解釈
    reasons_to_adopt:
      - 高機微データを扱う複数アプリに横断適用しやすい
    risks:
      - field path 設計が未統一だと再利用しにくい
    recommendation: adopt_review_high

official_review_matrix:
  adopt_review_high:
    - EOL-CC-001
    - EOL-CC-002
    - EOL-CC-003
    - EOL-CC-005
    - EOL-CC-007
  adopt_review_mid_high:
    - EOL-CC-004
  adopt_review_mid:
    - EOL-CC-006

not_recommended_for_commonization_now:
  - medical_preference entire module
  - care_preference entire module
  - funeral_preference entire module
  - inheritance_gateway entire module
  - end_of_life_pricing_plan_logic
reasons:
  - 文脈依存が強い
  - 専門領域依存が強い
  - 終活アプリ固有責務が大きい

adoption_conditions:
  - application-common-components 側で責務を narrower に再定義すること
  - policy / security 境界を落とさないこと
  - 共通部品名にアプリ固有語を残しすぎないこと
  - index / overview を必ず作ること
  - 固有カテゴリは component config 側へ逃がすこと

recommended_review_order:
  - EOL-CC-002 family_sharing_permission_common_component
  - EOL-CC-007 sensitive_export_masking_common_component
  - EOL-CC-005 audit_log_view_common_component
  - EOL-CC-001 emergency_contact_common_component
  - EOL-CC-003 important_document_location_common_component
  - EOL-CC-004 handoff_pack_output_common_component
  - EOL-CC-006 statement_template_common_component

next_connection:
  - application-common-components 正式審査へ持ち込む
  - 採否結果を official ledger に反映する
  - 採用候補は EndOfLifePlanner 依存記述を削いで component draft に変換する
