# ============================================================
# BUSINESS LEGAL SUPPORT RISK AND CONSULTATION PAYLOAD
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

create_risk_note_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "risk_category": "renewal_risk",
      "severity": "high",
      "summary": "自動更新条項の解釈が曖昧。",
      "mitigation_note": "条項文言を再確認し、必要なら修正文案を準備する"
    }

create_risk_note_response:
  json: |
    {
      "risk_note_id": "r1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "related_type": "contract_item",
      "related_id": "c1111111-2222-3333-4444-555555555555",
      "risk_category": "renewal_risk",
      "severity": "high",
      "summary": "自動更新条項の解釈が曖昧。",
      "mitigation_note": "条項文言を再確認し、必要なら修正文案を準備する",
      "last_reviewed_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T11:00:00+09:00",
      "updated_at": "2026-04-14T11:00:00+09:00"
    }

create_consultation_record_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "consultation_purpose": "顧問相談前整理",
      "memo": "契約更新可否と更新条項解釈を確認したい。",
      "question_list_text": "更新拒否通知はいつまで必要か。修正覚書は必要か。",
      "result_note": null,
      "next_check_items": "現契約条文の再確認"
    }

create_consultation_record_response:
  json: |
    {
      "consultation_id": "q1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "consultation_purpose": "顧問相談前整理",
      "memo": "契約更新可否と更新条項解釈を確認したい。",
      "question_list_text": "更新拒否通知はいつまで必要か。修正覚書は必要か。",
      "result_note": null,
      "next_check_items": "現契約条文の再確認",
      "consulted_at": null,
      "deleted_at": null,
      "created_at": "2026-04-14T11:05:00+09:00",
      "updated_at": "2026-04-14T11:05:00+09:00"
    }

create_checklist_item_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "checklist_type": "questions_for_expert",
      "item_text": "更新通知期限を確認する",
      "checked_flag": false,
      "note": null,
      "sort_order": 10
    }

create_checklist_item_response:
  json: |
    {
      "checklist_id": "k1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "checklist_type": "questions_for_expert",
      "item_text": "更新通知期限を確認する",
      "checked_flag": false,
      "note": null,
      "sort_order": 10,
      "deleted_at": null,
      "created_at": "2026-04-14T11:06:00+09:00",
      "updated_at": "2026-04-14T11:06:00+09:00"
    }

create_trouble_timeline_request:
  json: |
    {
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "occurred_at": "2026-04-13T14:00:00+09:00",
      "event_type": "counterparty_message",
      "summary": "相手方から更新条件見直し希望の連絡あり。",
      "note": "単価変更の示唆あり。",
      "evidence_attachment_count": 1
    }

create_trouble_timeline_response:
  json: |
    {
      "timeline_id": "t1111111-2222-3333-4444-555555555555",
      "issue_id": "11111111-2222-3333-4444-555555555555",
      "occurred_at": "2026-04-13T14:00:00+09:00",
      "event_type": "counterparty_message",
      "summary": "相手方から更新条件見直し希望の連絡あり。",
      "note": "単価変更の示唆あり。",
      "evidence_attachment_count": 1,
      "deleted_at": null,
      "created_at": "2026-04-14T11:07:00+09:00",
      "updated_at": "2026-04-14T11:07:00+09:00"
    }
