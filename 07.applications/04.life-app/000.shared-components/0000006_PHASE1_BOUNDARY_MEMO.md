# ============================================================
# PHASE 1 BOUNDARY MEMO
# Life App Common
# ============================================================

status: canonical
phase: design-only

purpose:
  - phase_1 最優先6件の共通責務境界を固定する
  - app固有責務を誤って共通部品へ混入させない
  - 後続 app 設計での責務ぶれを防ぐ

phase_1_target_components:
  - case_ledger_component
  - stakeholder_registry_component
  - fact_timeline_component
  - document_intake_metadata_component
  - frozen_snapshot_component
  - review_resolution_component

boundary_rules_common:
  - 共通化対象は整理構造、状態管理、監査、共有前提、入出力の骨格に寄せる
  - app固有の専門判断ロジックは共通化しない
  - app固有のスコアリングは共通化しない
  - app固有の質問誘導文は共通化しない
  - 最終的な主データの意味づけは各app責務を維持する

component_boundaries:

  case_ledger_component:
    common_inside:
      - case_id
      - title
      - status
      - next_action
      - priority
      - confidentiality_level
      - owner_scope
    keep_outside:
      - CareerLaunch の応募判定意味
      - LegalSupport の法的相談判断
      - InheritanceSupport の相続判断
      - EndOfLifePlanner の個別準備判断

  stakeholder_registry_component:
    common_inside:
      - stakeholder_type
      - person_or_org_name
      - relation_to_owner
      - role
      - contact_memo
      - important_flag
    keep_outside:
      - app固有の人物評価
      - 法的地位認定
      - 採用評価
      - 個別 app の役割意味拡張

  fact_timeline_component:
    common_inside:
      - occurred_on
      - title
      - detail
      - confidence_level
      - source_reference
      - related_case_id
    keep_outside:
      - 事実の専門解釈
      - 法的評価
      - 医学的評価
      - 採用可否評価

  document_intake_metadata_component:
    common_inside:
      - intake_source
      - document_type
      - title
      - issuer
      - issued_on
      - confidentiality_level
      - reviewed_flag
      - related_case_id
    keep_outside:
      - 書類内容の専門判断
      - app固有の必須書類判定
      - app固有の intake 補助文
      - OCR後の意味解釈本体

  frozen_snapshot_component:
    common_inside:
      - snapshot_type
      - frozen_at
      - source_record_id
      - revision_label
      - artifact_hash_or_version
      - shared_to_or_submitted_to
    keep_outside:
      - 提出先ごとの業務意味
      - app固有の承認前後意味
      - 専門家向け説明文
      - app固有の提出評価

  review_resolution_component:
    common_inside:
      - comment_body
      - status
      - resolved_at
      - rejected_reason
      - target_section
      - related_case_id
    keep_outside:
      - app固有のレビュー基準
      - 専門判断ロジック
      - 個別修正提案ロジック
      - app固有の承認ルール

cross_component_boundary_note:
  - case_ledger_component は案件の箱を共通化するだけで、案件の意味までは共通化しない
  - stakeholder_registry_component は関係者の整理を共通化するだけで、資格や法的位置づけまでは共通化しない
  - fact_timeline_component は時系列整理を共通化するだけで、事実認定までは共通化しない
  - document_intake_metadata_component は入口と metadata を共通化するだけで、内容解釈までは共通化しない
  - frozen_snapshot_component は固定保存を共通化するだけで、提出判断までは共通化しない
  - review_resolution_component は指摘解決管理を共通化するだけで、判断基準までは共通化しない

final_boundary_judgment:
  - phase_1 最優先6件は共通化可能
  - ただし共通化するのは意味判断ではなく、整理骨格と監査可能構造である
