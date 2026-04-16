# ============================================================
# LEGAL SUPPORT SCHEMA AUDIT NOTE
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit

schema_audit:
  primary_schema: life

confirmed_points:
  - LegalSupport は LifeOS 系個人法務整理アプリである
  - 主データ保存先は life とする
  - 事業案件へ振り分けても LegalSupport 正本の一次保持先は life とする
  - persona スキーマや business スキーマへ正本を移さない
  - ERP 直保存は前提にしない

affected_entities:
  - legal_case
  - fact_timeline
  - stakeholder
  - document_item
  - question_list
  - consultation_note
  - action_item
  - deadline_item
  - expense_record
  - export_bundle
