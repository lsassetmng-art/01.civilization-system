# ============================================================
# LEGAL SUPPORT RELATION MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

root_entity:
  - legal_case

one_to_many_relations:
  - legal_case -> fact_timeline
  - legal_case -> stakeholder
  - legal_case -> document_item
  - legal_case -> question_list
  - legal_case -> consultation_note
  - legal_case -> action_item
  - legal_case -> deadline_item
  - legal_case -> expense_record
  - legal_case -> export_bundle

relation_rules:
  - legal_case が親で、他 entity は子として従属する
  - 子 entity 単独では存在しない
  - export_bundle は出力履歴であり、案件共有状態の正本ではない
  - stakeholder / document_item は共有制御対象になりうる
