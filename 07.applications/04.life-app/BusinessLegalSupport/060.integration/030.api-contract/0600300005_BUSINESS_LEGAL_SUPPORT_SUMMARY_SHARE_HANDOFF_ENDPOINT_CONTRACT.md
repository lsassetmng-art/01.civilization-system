# ============================================================
# BUSINESS LEGAL SUPPORT SUMMARY SHARE HANDOFF ENDPOINT CONTRACT
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

special_endpoints:

  generate_issue_summary:
    method: POST
    path: /api/life/business-legal-support/v1/summaries/generate
    request_source:
      - generate_issue_summary_request
    response_source:
      - generate_issue_summary_response

  create_advisor_share_record:
    method: POST
    path: /api/life/business-legal-support/v1/shares
    request_source:
      - create_advisor_share_record_request
    response_source:
      - create_advisor_share_record_response

  revoke_advisor_share_record:
    method: POST
    path: /api/life/business-legal-support/v1/shares/{share_id}/revoke
    path_params:
      - share_id
    request_shape:
      json: |
        {
          "share_id": "s1111111-2222-3333-4444-555555555555"
        }
    response_shape:
      json: |
        {
          "share_id": "s1111111-2222-3333-4444-555555555555",
          "revoked_at": "2026-04-14T12:20:00+09:00"
        }

  create_businessos_handoff_draft:
    method: POST
    path: /api/life/business-legal-support/v1/handoffs/businessos-draft
    request_source:
      - create_businessos_handoff_draft_request
    response_source:
      - create_businessos_handoff_draft_response

special_rules:
  - summary generation is explicit only
  - share creation is explicit only
  - share revoke removes future visibility
  - BusinessOS handoff draft does not write to ERP
  - handoff draft is not final transfer execution
