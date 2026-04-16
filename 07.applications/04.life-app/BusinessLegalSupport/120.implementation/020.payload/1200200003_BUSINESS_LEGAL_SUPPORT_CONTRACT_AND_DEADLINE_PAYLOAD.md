# ============================================================
# BUSINESS LEGAL SUPPORT CONTRACT AND DEADLINE PAYLOAD
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 120.implementation
subfolder: 020.payload
owner: Boss
prepared_by: Zero

create_contract_item_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "title": "株式会社A 業務委託契約",
      "contract_type": "service_agreement",
      "counterparty_id": "99999999-8888-7777-6666-555555555555",
      "signed_on": "2026-03-01",
      "effective_from": "2026-04-01",
      "effective_to": "2027-03-31",
      "renewal_rule": "満了30日前までに異議なき場合自動更新",
      "auto_renew_flag": true,
      "amount_value": "120000.00",
      "currency_code": "JPY",
      "status": "active"
    }

create_contract_item_response:
  json: |
    {
      "contract_id": "c1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "title": "株式会社A 業務委託契約",
      "contract_type": "service_agreement",
      "counterparty_id": "99999999-8888-7777-6666-555555555555",
      "signed_on": "2026-03-01",
      "effective_from": "2026-04-01",
      "effective_to": "2027-03-31",
      "renewal_rule": "満了30日前までに異議なき場合自動更新",
      "auto_renew_flag": true,
      "amount_value": "120000.00",
      "currency_code": "JPY",
      "status": "active",
      "deleted_at": null,
      "created_at": "2026-04-14T10:45:00+09:00",
      "updated_at": "2026-04-14T10:45:00+09:00"
    }

create_deadline_record_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "deadline_type": "renewal_notice",
      "due_at": "2027-03-01T00:00:00+09:00",
      "alert_policy_code": "default_30_7_3_0"
    }

create_deadline_record_response:
  json: |
    {
      "deadline_id": "d1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "deadline_type": "renewal_notice",
      "due_at": "2027-03-01T00:00:00+09:00",
      "alert_policy_code": "default_30_7_3_0",
      "completed_flag": false,
      "completed_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:50:00+09:00",
      "updated_at": "2026-04-14T10:50:00+09:00"
    }

list_deadline_records_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "completed_flag": false,
      "date_from": "2026-04-01T00:00:00+09:00",
      "date_to": "2027-03-31T23:59:59+09:00"
    }

list_deadline_records_response:
  json: |
    {
      "items": [
        {
          "deadline_id": "d1111111-2222-3333-4444-555555555555",
          "issue_id": "11111111-2222-3333-4444-555555555555",
          "related_type": "contract_item",
          "related_id": "c1111111-2222-3333-4444-555555555555",
          "deadline_type": "renewal_notice",
          "due_at": "2027-03-01T00:00:00+09:00",
          "completed_flag": false
        }
      ]
    }

create_counterparty_request:
  json: |
    {
      "name": "株式会社A",
      "counterparty_type": "client_company",
      "country_code": "JP",
      "contact_person": "山田太郎",
      "contact_note": "法務窓口あり",
      "relationship_note": "継続取引先",
      "risk_level": "medium"
    }

create_counterparty_response:
  json: |
    {
      "counterparty_id": "99999999-8888-7777-6666-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "name": "株式会社A",
      "counterparty_type": "client_company",
      "country_code": "JP",
      "contact_person": "山田太郎",
      "contact_note": "法務窓口あり",
      "relationship_note": "継続取引先",
      "risk_level": "medium",
      "deleted_at": null,
      "created_at": "2026-04-14T10:40:00+09:00",
      "updated_at": "2026-04-14T10:40:00+09:00"
    }
