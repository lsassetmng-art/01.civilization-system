# ============================================================
# LEGAL SUPPORT SCHEMA BINDING POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities

schema_binding:
  primary_schema: life

binding_policy:
  - LegalSupport の正本データ配置先は life スキーマとする
  - LegalSupport は LifeOS 系アプリであり、ユーザー個人生活データ領域を扱う
  - 事業案件へ振り分ける場合でも、LegalSupport 自体の一次保持先は life とする
  - BusinessLegalSupport 連携時は連携データを渡すが、LegalSupport の主スキーマは business へ移さない
  - Persona 系データは persona スキーマ正本と分離する

entity_schema_mapping:
  legal_case: life
  fact_timeline: life
  stakeholder: life
  document_item: life
  question_list: life
  consultation_note: life
  action_item: life
  deadline_item: life
  expense_record: life
  export_bundle: life

notes:
  - life スキーマはユーザー自身の生活・個人管理データ領域として扱う
  - LegalSupport は個人法務整理アプリであるため、主データは life に置く
