# ============================================================
# PHASE 1 OFFICIAL ADOPTION MEMO
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - Life App 共通候補のうち、phase_1 最優先6件を正式採用候補として固定する
  - app固有責務と共通責務の境界を先に明文化する
  - 後続 app 設計で参照しやすい最小共通骨格を確定する

phase_1_official_adoption_targets:

  case_ledger_component:
    adoption_status: adopted_as_phase1_official_candidate
    name_ja: 案件 / ケース台帳共通
    why_adopt_now:
      - CareerLaunch の応募案件
      - LegalSupport の相談案件
      - InheritanceSupport の手続き案件
      - EndOfLifePlanner の準備案件
      に共通する最小ケース単位を作れる
    common_contract_focus:
      - case_id
      - title
      - status
      - next_action
      - priority
      - confidentiality_level
      - owner_scope
    keep_app_specific_outside:
      - 転職応募判定ロジック
      - 法律判断ロジック
      - 相続判断ロジック
      - 個別 app の専門導線

  stakeholder_registry_component:
    adoption_status: adopted_as_phase1_official_candidate
    name_ja: 関係者レジストリ共通
    why_adopt_now:
      - 人、組織、役割、関係性を app 横断で持てる
      - 案件 / 相談 / 手続き / 家族関係の整理基盤になる
    common_contract_focus:
      - stakeholder_id
      - stakeholder_type
      - person_or_org_name
      - relation_to_owner
      - role
      - contact_memo
      - important_flag
    keep_app_specific_outside:
      - app固有の人物評価
      - 法的地位判定
      - 転職向け採用評価

  fact_timeline_component:
    adoption_status: adopted_as_phase1_official_candidate
    name_ja: 事実タイムライン共通
    why_adopt_now:
      - 面接、相談、提出、連絡、出来事を時系列で扱う需要が共通
      - 後続の監査、レビュー、相談整理の基盤になる
    common_contract_focus:
      - timeline_event_id
      - occurred_on
      - title
      - detail
      - confidence_level
      - source_reference
      - related_case_id
    keep_app_specific_outside:
      - 事実の専門判断
      - 法的評価
      - 医学的評価
      - 採用可否評価

  document_intake_metadata_component:
    adoption_status: adopted_as_phase1_official_candidate
    name_ja: 書類 intake / metadata 共通
    why_adopt_now:
      - PDF、画像、貼り付け文、手入力の入口は複数 Life app で共通
      - 書類整理、検索、共有、凍結提出の前提になる
    common_contract_focus:
      - intake_id
      - intake_source
      - document_type
      - title
      - issuer
      - issued_on
      - confidentiality_level
      - reviewed_flag
      - related_case_id
    keep_app_specific_outside:
      - 書類の専門解釈
      - 書類ごとの個別必須判定
      - app固有の intake 補助文

  frozen_snapshot_component:
    adoption_status: adopted_as_phase1_official_candidate
    name_ja: 提出版固定 / Frozen Snapshot 共通
    why_adopt_now:
      - 提出時点、共有時点の内容固定は複数 app で重要
      - revision history や export 系基盤とも接続しやすい
    common_contract_focus:
      - snapshot_id
      - snapshot_type
      - frozen_at
      - source_record_id
      - revision_label
      - artifact_hash_or_version
      - shared_to_or_submitted_to
    keep_app_specific_outside:
      - 提出先ごとの業務意味
      - app固有の承認文脈
      - 専門家向け補助文

  review_resolution_component:
    adoption_status: adopted_as_phase1_official_candidate
    name_ja: コメント / レビュー解決管理共通
    why_adopt_now:
      - コメント、指摘、修正要求、解決状態は CareerLaunch / LegalSupport / InheritanceSupport で共通需要が高い
      - advisor review 系の下地になる
    common_contract_focus:
      - review_item_id
      - comment_body
      - status
      - resolved_at
      - rejected_reason
      - target_section
      - related_case_id
    keep_app_specific_outside:
      - app固有のレビュー基準
      - 専門判断ロジック
      - 個別修正提案ロジック

shared_boundary_rules:
  - 共通化するのは整理構造、状態管理、入出力、監査、共有前提の骨格
  - app固有の専門判断ロジックは共通化しない
  - app固有のスコアリングは共通化しない
  - app固有の質問誘導文は共通化しない
  - 主データの最終意味づけは各app責務を維持する

bridge_to_foundation_common:
  - frozen_snapshot_component -> Revision History Common / Export Common
  - review_resolution_component -> Advisor Share Common
  - document_intake_metadata_component -> Export Common / Search系共通
  - case_ledger_component -> Status Pipeline Common
  - fact_timeline_component -> Checklist Execution Common の時系列補助

phase_1_conclusion:
  - 最優先6件は Life App 共通骨格として正式採用候補にしてよい
  - 次段では boundary memo と app reference note を作る
