# ============================================================
# BUSINESS LEGAL SUPPORT READ AND LIST ENDPOINT CONTRACT
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

read_endpoints:

  list_legal_issues:
    method: GET
    path: /api/life/business-legal-support/v1/legal-issues
    query_params:
      - status
      - issue_type
      - priority
      - keyword
      - page
      - page_size
    request_source:
      - list_legal_issues_request
    response_source:
      - list_legal_issues_response

  get_legal_issue:
    method: GET
    path: /api/life/business-legal-support/v1/legal-issues/{issue_id}
    path_params:
      - issue_id
    response_source:
      - get_legal_issue_response

  list_deadline_records:
    method: GET
    path: /api/life/business-legal-support/v1/deadlines
    query_params:
      - issue_id
      - completed_flag
      - date_from
      - date_to
    request_source:
      - list_deadline_records_request
    response_source:
      - list_deadline_records_response

  list_contract_items:
    method: GET
    path: /api/life/business-legal-support/v1/contracts
    query_params:
      - issue_id
      - status
      - contract_type
      - keyword
    response_shape:
      json: |
        {
          "items": [
            {
              "contract_id": "c1111111-2222-3333-4444-555555555555",
              "issue_id": "11111111-2222-3333-4444-555555555555",
              "title": "株式会社A 業務委託契約",
              "contract_type": "service_agreement",
              "effective_to": "2027-03-31",
              "auto_renew_flag": true,
              "amount_value": "120000.00",
              "currency_code": "JPY",
              "status": "active"
            }
          ]
        }

  get_contract_item:
    method: GET
    path: /api/life/business-legal-support/v1/contracts/{contract_id}
    path_params:
      - contract_id
    response_source:
      - create_contract_item_response

  list_counterparties:
    method: GET
    path: /api/life/business-legal-support/v1/counterparties
    query_params:
      - keyword
      - counterparty_type
      - risk_level
    response_shape:
      json: |
        {
          "items": [
            {
              "counterparty_id": "99999999-8888-7777-6666-555555555555",
              "name": "株式会社A",
              "counterparty_type": "client_company",
              "country_code": "JP",
              "contact_person": "山田太郎",
              "risk_level": "medium"
            }
          ]
        }

read_rules:
  - GET never changes state
  - list response always returns items array
  - missing resource returns not_found error envelope
  - soft deleted resource is hidden from default read
