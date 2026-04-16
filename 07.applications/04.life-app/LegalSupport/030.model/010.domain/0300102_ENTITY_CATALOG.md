# ============================================================
# ENTITY CATALOG
# ============================================================

status: canonical-draft
entities:
  legal_case:
    fields:
      - case_id
      - title
      - category
      - summary
      - status
      - importance_level
      - next_action_summary
  stakeholder:
    fields:
      - stakeholder_id
      - name
      - stakeholder_type
      - relation_to_owner
  fact_timeline_event:
    fields:
      - timeline_event_id
      - event_date
      - title
      - detail
      - fact_confidence
  legal_document:
    fields:
      - legal_document_id
      - document_category
      - title
      - issuer
      - issued_on
