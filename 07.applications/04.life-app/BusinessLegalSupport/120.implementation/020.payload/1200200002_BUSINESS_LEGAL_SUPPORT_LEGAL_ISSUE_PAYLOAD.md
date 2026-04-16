# ============================================================
# BUSINESS LEGAL SUPPORT LEGAL ISSUE PAYLOAD
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

create_legal_issue_request:
  json: |
    {
      "title": "業務委託契約の更新確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "high",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "更新条項を確認する"
    }

create_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "title": "業務委託契約の更新確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "high",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "更新条項を確認する",
      "archived_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:30:00+09:00",
      "updated_at": "2026-04-14T10:30:00+09:00"
    }

update_legal_issue_request:
  json: |
    {
      "title": "業務委託契約の更新と費用条件確認",
      "priority": "critical",
      "next_action": "相手方へ更新条件の確認メールを送る"
    }

update_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "title": "業務委託契約の更新と費用条件確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "critical",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "相手方へ更新条件の確認メールを送る",
      "archived_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:30:00+09:00",
      "updated_at": "2026-04-14T11:10:00+09:00"
    }

get_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "owner_user_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "title": "業務委託契約の更新と費用条件確認",
      "issue_type": "contract",
      "status": "active",
      "priority": "critical",
      "summary": "取引先との業務委託契約が来月末で満了予定。",
      "started_on": "2026-04-14",
      "next_action": "相手方へ更新条件の確認メールを送る",
      "archived_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T10:30:00+09:00",
      "updated_at": "2026-04-14T11:10:00+09:00",
      "child_counts": {
        "contracts": 1,
        "deadlines": 2,
        "risk_notes": 1,
        "consultations": 0,
        "attachments": 3,
        "checklists": 4,
        "timeline_events": 2
      }
    }

list_legal_issues_request:
  json: |
    {
      "status": "active",
      "issue_type": null,
      "priority": null,
      "keyword": "更新",
      "page": 1,
      "page_size": 20
    }

list_legal_issues_response:
  json: |
    {
      "items": [
        {
          "issue_id": "11111111-2222-3333-4444-555555555555",
          "title": "業務委託契約の更新と費用条件確認",
          "issue_type": "contract",
          "status": "active",
          "priority": "critical",
          "started_on": "2026-04-14",
          "next_action": "相手方へ更新条件の確認メールを送る",
          "updated_at": "2026-04-14T11:10:00+09:00"
        }
      ],
      "page": 1,
      "page_size": 20,
      "has_next_page": false
    }

soft_delete_legal_issue_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555"
    }

soft_delete_legal_issue_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "deleted_at": "2026-04-14T12:00:00+09:00"
    }
