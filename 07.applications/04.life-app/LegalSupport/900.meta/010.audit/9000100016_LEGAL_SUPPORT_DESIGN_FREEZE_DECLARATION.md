# ============================================================
# LEGAL SUPPORT DESIGN FREEZE DECLARATION
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

freeze_purpose:
  - 設計の主要決定事項を凍結し、無秩序な変更を防ぐ
  - 実装開始前の参照基準を安定させる

freeze_scope:
  hard_frozen:
    - schema = life
    - pricing = Free / PlusFamily(500円)
    - role boundary
    - action names
    - response envelope
    - masking baseline
    - confidentiality baseline
    - dashboard split
    - summary / export / handoff profile baseline
    - app-wide enum registry
    - controlled vocabulary baseline

  soft_frozen:
    - document_subcategory registry
    - checklist detailed wording
    - UI label wording
    - audit digest formatting detail

change_rule_after_freeze:
  - hard_frozen 領域の変更は canonical impact review 前提
  - soft_frozen 領域の微修正は可能だが、正本差し替え前提
  - 実装都合での名称変更は原則禁止
