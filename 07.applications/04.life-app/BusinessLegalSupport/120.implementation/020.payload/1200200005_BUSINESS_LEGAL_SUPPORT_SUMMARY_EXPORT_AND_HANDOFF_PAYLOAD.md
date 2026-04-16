# ============================================================
# BUSINESS LEGAL SUPPORT SUMMARY EXPORT AND HANDOFF PAYLOAD
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

generate_issue_summary_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "include_contracts": true,
      "include_deadlines": true,
      "include_risk_notes": true,
      "include_consultation_records": true,
      "include_timeline": true,
      "include_attachments": false
    }

generate_issue_summary_response:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "summary_bundle": {
        "issue_summary": "業務委託契約の更新と費用条件確認",
        "facts": [
          "契約満了予定日は 2027-03-31",
          "自動更新条項あり",
          "相手方から条件見直し希望あり"
        ],
        "deadlines": [
          {
            "deadline_type": "renewal_notice",
            "due_at": "2027-03-01T00:00:00+09:00"
          }
        ],
        "risks": [
          {
            "risk_category": "renewal_risk",
            "severity": "high",
            "summary": "自動更新条項の解釈が曖昧。"
          }
        ],
        "questions_for_expert": [
          "更新拒否通知はいつまで必要か。",
          "修正覚書は必要か。"
        ],
        "next_actions": [
          "現契約条文の再確認",
          "相手方へ更新条件確認メール送付"
        ]
      },
      "generated_at": "2026-04-14T11:30:00+09:00"
    }

create_advisor_share_record_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "share_scope": "summary_only",
      "shared_to_label": "顧問弁護士向け準備資料",
      "note": "正式意見ではなく相談前整理のみ共有"
    }

create_advisor_share_record_response:
  json: |
    {
      "share_id": "s1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "share_scope": "summary_only",
      "shared_to_label": "顧問弁護士向け準備資料",
      "shared_at": "2026-04-14T11:35:00+09:00",
      "revoked_at": null,
      "note": "正式意見ではなく相談前整理のみ共有",
      "deleted_at": null
    }

create_businessos_handoff_draft_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "handoff_scope": "issue_and_contracts",
      "destination": "BusinessOS",
      "reason": "正式社内レビューが必要になったため"
    }

create_businessos_handoff_draft_response:
  json: |
    {
      "source_issue_id": "11111111-2222-3333-4444-555555555555",
      "destination": "BusinessOS",
      "handoff_scope": "issue_and_contracts",
      "reason": "正式社内レビューが必要になったため",
      "status": "draft_ready",
      "generated_at": "2026-04-14T11:40:00+09:00"
    }

not_defined_here:
  - ERP direct handoff payload
  - enterprise approval payload
  - legal conclusion output payload
