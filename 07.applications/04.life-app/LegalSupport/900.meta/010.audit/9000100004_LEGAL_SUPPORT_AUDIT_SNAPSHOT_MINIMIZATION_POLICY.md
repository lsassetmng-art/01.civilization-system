# ============================================================
# LEGAL SUPPORT AUDIT SNAPSHOT MINIMIZATION POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit
schema: life

purpose:
  - audit log の肥大化を防ぎつつ、必要な追跡可能性を確保する

snapshot_principles:
  - 全 field の完全複写を常に必須にしない
  - 高頻度更新 entity は summary snapshot を優先してよい
  - 法的結論に見える生成文は audit 正本にしない
  - export 実行は included_sections と target_scope を優先記録する

recommended_snapshot_mode:
  legal_case:
    mode: compact_before_after
    must_include:
      - title
      - category
      - status
      - priority
      - visibility_scope
      - family_share_enabled

  fact_timeline:
    mode: compact_after_only
    must_include:
      - event_date
      - event_type
      - verification_status
      - fact_text_digest

  stakeholder:
    mode: compact_after_only
    must_include:
      - stakeholder_type
      - display_name
      - share_visibility

  document_item:
    mode: compact_after_only
    must_include:
      - document_category
      - document_name
      - possession_status
      - submission_status
      - important_flag
      - shared_flag

  export_bundle:
    mode: export_specific
    must_include:
      - export_type
      - included_sections
      - target_scope

digest_rules:
  - 長文 text は全文ではなく digest または先頭要約でよい
  - private notes は audit にそのまま全文保存しない方針を取りうる
  - deleted child の before_snapshot は entity key fields 優先でよい
