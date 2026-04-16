# ============================================================
# LEGAL SUPPORT DOCUMENT STATUS MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

entity:
  life.document_item

status_fields:
  possession_status:
    allowed:
      - have
      - need_to_get
      - unavailable
  submission_status:
    allowed:
      - not_required
      - pending
      - submitted

combined_interpretation:
  ready:
    examples:
      - possession_status=have and submission_status=submitted
      - possession_status=have and submission_status=not_required

  unresolved:
    examples:
      - possession_status=need_to_get
      - submission_status=pending

  blocked:
    examples:
      - possession_status=unavailable and submission_status=pending

ui_grouping_rules:
  - unresolved_documents widget は need_to_get と pending を優先表示する
  - important_flag=true は一覧で上位表示候補とする
  - shared_flag=false は export 対象外候補とする
