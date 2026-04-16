# ============================================================
# BUSINESS LEGAL SUPPORT ENDPOINT CATALOG
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

endpoint_catalog:

  legal_issue:
    - POST /api/life/business-legal-support/v1/legal-issues
    - GET /api/life/business-legal-support/v1/legal-issues
    - GET /api/life/business-legal-support/v1/legal-issues/{issue_id}
    - PATCH /api/life/business-legal-support/v1/legal-issues/{issue_id}
    - POST /api/life/business-legal-support/v1/legal-issues/{issue_id}/archive
    - POST /api/life/business-legal-support/v1/legal-issues/{issue_id}/soft-delete

  contract_item:
    - POST /api/life/business-legal-support/v1/contracts
    - GET /api/life/business-legal-support/v1/contracts
    - GET /api/life/business-legal-support/v1/contracts/{contract_id}
    - PATCH /api/life/business-legal-support/v1/contracts/{contract_id}

  deadline_record:
    - POST /api/life/business-legal-support/v1/deadlines
    - GET /api/life/business-legal-support/v1/deadlines
    - PATCH /api/life/business-legal-support/v1/deadlines/{deadline_id}

  counterparty:
    - POST /api/life/business-legal-support/v1/counterparties
    - GET /api/life/business-legal-support/v1/counterparties
    - GET /api/life/business-legal-support/v1/counterparties/{counterparty_id}
    - PATCH /api/life/business-legal-support/v1/counterparties/{counterparty_id}

  risk_note:
    - POST /api/life/business-legal-support/v1/risk-notes
    - GET /api/life/business-legal-support/v1/risk-notes
    - PATCH /api/life/business-legal-support/v1/risk-notes/{risk_note_id}

  consultation_record:
    - POST /api/life/business-legal-support/v1/consultations
    - GET /api/life/business-legal-support/v1/consultations
    - PATCH /api/life/business-legal-support/v1/consultations/{consultation_id}

  checklist_item:
    - POST /api/life/business-legal-support/v1/checklists
    - GET /api/life/business-legal-support/v1/checklists
    - PATCH /api/life/business-legal-support/v1/checklists/{checklist_id}

  trouble_timeline:
    - POST /api/life/business-legal-support/v1/timeline-events
    - GET /api/life/business-legal-support/v1/timeline-events
    - PATCH /api/life/business-legal-support/v1/timeline-events/{timeline_id}

  summary_share_handoff:
    - POST /api/life/business-legal-support/v1/summaries/generate
    - POST /api/life/business-legal-support/v1/shares
    - POST /api/life/business-legal-support/v1/handoffs/businessos-draft

not_defined:
  - ERP direct endpoints
  - enterprise approval endpoints
  - formal legal opinion endpoints
