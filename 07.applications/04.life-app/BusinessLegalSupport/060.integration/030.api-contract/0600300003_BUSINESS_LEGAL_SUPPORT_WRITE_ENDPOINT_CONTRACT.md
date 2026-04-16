# ============================================================
# BUSINESS LEGAL SUPPORT WRITE ENDPOINT CONTRACT
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

write_endpoints:

  create_legal_issue:
    method: POST
    path: /api/life/business-legal-support/v1/legal-issues
    request_source:
      - create_legal_issue_request
    response_source:
      - create_legal_issue_response

  update_legal_issue:
    method: PATCH
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}
    path_params:
      - issue_id
    request_source:
      - update_legal_issue_request
    response_source:
      - update_legal_issue_response

  archive_legal_issue:
    method: POST
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}/archive
    path_params:
      - issue_id
    request_shape:
      json: |
        {
          "issue_id": "11111111-2222-3333-4444-555555555555"
        }
    response_shape:
      json: |
        {
          "issue_id": "11111111-2222-3333-4444-555555555555",
          "archived_at": "2026-04-14T12:10:00+09:00"
        }

  soft_delete_legal_issue:
    method: POST
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}/soft-delete
    path_params:
      - issue_id
    request_source:
      - soft_delete_legal_issue_request
    response_source:
      - soft_delete_legal_issue_response

  create_contract_item:
    method: POST
    path: /api/life/business-legal-support/v1/contracts
    request_source:
      - create_contract_item_request
    response_source:
      - create_contract_item_response

  create_deadline_record:
    method: POST
    path: /api/life/business-legal-support/v1/deadlines
    request_source:
      - create_deadline_record_request
    response_source:
      - create_deadline_record_response

  create_counterparty:
    method: POST
    path: /api/life/business-legal-support/v1/counterparties
    request_source:
      - create_counterparty_request
    response_source:
      - create_counterparty_response

  create_risk_note:
    method: POST
    path: /api/life/business-legal-support/v1/risk-notes
    request_source:
      - create_risk_note_request
    response_source:
      - create_risk_note_response

  create_consultation_record:
    method: POST
    path: /api/life/business-legal-support/v1/consultations
    request_source:
      - create_consultation_record_request
    response_source:
      - create_consultation_record_response

  create_checklist_item:
    method: POST
    path: /api/life/business-legal-support/v1/checklists
    request_source:
      - create_checklist_item_request
    response_source:
      - create_checklist_item_response

  create_timeline_event:
    method: POST
    path: /api/life/business-legal-support/v1/timeline-events
    request_source:
      - create_trouble_timeline_request
    response_source:
      - create_trouble_timeline_response

write_rules:
  - POST creates new resource
  - PATCH updates partial fields only
  - PATCH request omits untouched fields
  - path id and body id must not conflict
  - owner must own parent issue for child creation
