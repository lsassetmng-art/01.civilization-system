# ============================================================
# SHIFT MANAGER API REQUEST RESPONSE EXACT PAYLOAD SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: api-request-response-exact-payload-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact request/response payload shapes
for the major ShiftManager APIs.

It is intended to remove ambiguity before implementation.

# ============================================================
# 2. COMMON COMPONENT REFERENCE
# ============================================================

payloads in this document are aligned to these reusable common components:
- Submission Common
- ERP Publication Capability
- App-internal Sharing Common
- External Notification Delivery Common
- Channel Routing Common
- Draft / Work-in-progress Common
- Template / Generated Output Common
- Publication / Versioned Snapshot Common
- Visibility Scope Evaluation Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common
- Publish Target Confirmation Common

# ============================================================
# 3. GLOBAL RULES
# ============================================================

response_envelope:
{
  "ok": true,
  "data": {},
  "error": null,
  "meta": {
    "request_id": "req_xxx"
  }
}

error_envelope:
{
  "ok": false,
  "data": null,
  "error": {
    "code": "SHIFT_VALIDATION_ERROR",
    "message": "validation error",
    "details": {}
  },
  "meta": {
    "request_id": "req_xxx"
  }
}

global_rules:
- required fields must be present
- optional fields may be omitted
- nullable fields may be present as null
- arrays are always arrays, never object-or-array dual shape
- date = YYYY-MM-DD
- time = HH:MM:SS
- datetime = ISO-8601 with offset
- UUID fields are strings
- enum values are fixed lowercase strings unless otherwise stated
- booleans are only true/false
- list responses return items + page/page_size/total_count when pageable

# ============================================================
# 4. ENUM SETS
# ============================================================

default_home_type:
- admin_dashboard
- staff_today_shift

target_scope_type:
- team
- department
- office
- mixed

target_period_type:
- day
- week
- month

schedule_status:
- draft
- published
- superseded
- closed

generation_mode:
- manual
- auto_generated
- auto_generated_then_edited

assignment_source_type:
- manual
- auto_generated
- auto_adjusted

publication_status:
- active
- superseded
- cancelled

share_scope_type:
- person
- team
- department
- management_scope

visibility_level:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

share_target_type:
- person
- team
- department
- role

notification_type:
- publish
- republish
- same_day
- urgent_change

notification_delivery_status:
- queued
- sent
- failed
- read

validation_level:
- info
- warning
- high
- critical

export_mode:
- manual
- automatic

export_status:
- not_required
- pending
- exporting
- success
- failed

overwrite_policy:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

generation_warning_type:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

generation_warning_level:
- info
- warning
- high
- critical

pdf_export_type:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

pdf_layout_type:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

# ============================================================
# 5. BOOTSTRAP
# ============================================================

endpoint:
GET /api/shift-manager/v1/bootstrap

response:
{
  "ok": true,
  "data": {
    "app_access_allowed": true,
    "person_id": "uuid",
    "company_id": "uuid",
    "roles": [
      "shift_admin"
    ],
    "default_home_type": "admin_dashboard",
    "profile": {
      "display_name": "Boss",
      "department_id": "uuid",
      "team_id": "uuid",
      "office_id": "uuid"
    },
    "capabilities": {
      "can_create_shift": true,
      "can_publish_shift": true,
      "can_manage_share": true,
      "can_export_erp": true,
      "can_auto_generate": true,
      "can_export_pdf": true
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_bootstrap_001"
  }
}

# ============================================================
# 6. SCHEDULE CREATE / LIST / DETAIL
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules

request:
{
  "schedule_name": "2026-04 week2 sales",
  "target_scope_type": "department",
  "target_scope_id": "uuid",
  "target_period_type": "week",
  "period_start_date": "2026-04-06",
  "period_end_date": "2026-04-12",
  "note": "initial draft"
}

response:
{
  "ok": true,
  "data": {
    "schedule_id": "uuid",
    "status": "draft",
    "draft_version_no": 1,
    "generation_mode": "manual"
  },
  "error": null,
  "meta": {
    "request_id": "req_schedule_create_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "schedule_id": "uuid",
        "schedule_name": "2026-04 week2 sales",
        "status": "draft",
        "target_scope_type": "department",
        "target_scope_id": "uuid",
        "period_start_date": "2026-04-06",
        "period_end_date": "2026-04-12",
        "draft_version_no": 2,
        "current_publication_id": null,
        "generation_mode": "auto_generated_then_edited",
        "has_generation_warnings": true,
        "updated_at": "2026-04-10T12:00:00+09:00"
      }
    ],
    "page": 1,
    "page_size": 20,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_schedule_list_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}

response:
{
  "ok": true,
  "data": {
    "schedule": {
      "schedule_id": "uuid",
      "schedule_code": "SCH-202604-001",
      "schedule_name": "2026-04 week2 sales",
      "status": "draft",
      "target_scope_type": "department",
      "target_scope_id": "uuid",
      "target_period_type": "week",
      "period_start_date": "2026-04-06",
      "period_end_date": "2026-04-12",
      "draft_version_no": 2,
      "current_publication_id": null,
      "generation_mode": "auto_generated_then_edited",
      "auto_generated_flag": true,
      "has_generation_warnings": true
    },
    "summary": {
      "assignment_count": 24,
      "member_count": 8
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_schedule_detail_001"
  }
}

# ============================================================
# 7. ASSIGNMENT CREATE / UPDATE / LIST
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/assignments

request:
{
  "person_id": "uuid",
  "shift_date": "2026-04-06",
  "start_time": "09:00:00",
  "end_time": "18:00:00",
  "role_code": "cashier",
  "office_id": "uuid",
  "department_id": "uuid",
  "team_id": "uuid",
  "memo": "front desk"
}

response:
{
  "ok": true,
  "data": {
    "assignment_id": "uuid",
    "source_type": "manual"
  },
  "error": null,
  "meta": {
    "request_id": "req_assignment_create_001"
  }
}

endpoint:
PATCH /api/shift-manager/v1/assignments/{assignment_id}

request:
{
  "start_time": "10:00:00",
  "end_time": "18:00:00",
  "role_code": "cashier",
  "office_id": "uuid",
  "department_id": "uuid",
  "team_id": "uuid",
  "memo": "updated memo"
}

response:
{
  "ok": true,
  "data": {
    "assignment_id": "uuid",
    "source_type": "auto_adjusted",
    "updated_at": "2026-04-10T12:05:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_assignment_update_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}/assignments

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "assignment_id": "uuid",
        "schedule_id": "uuid",
        "person_id": "uuid",
        "shift_date": "2026-04-06",
        "start_time": "09:00:00",
        "end_time": "18:00:00",
        "role_code": "cashier",
        "office_id": "uuid",
        "department_id": "uuid",
        "team_id": "uuid",
        "memo": "front desk",
        "row_status": "active",
        "source_type": "auto_generated"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_assignment_list_001"
  }
}

# ============================================================
# 8. VALIDATE / PUBLISH / REPUBLISH
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/validate-for-publication

response:
{
  "ok": true,
  "data": {
    "ready": false,
    "warnings": [
      {
        "code": "SHIFT_ASSIGNMENT_GAP",
        "message": "1 unassigned slot exists",
        "level": "warning"
      },
      {
        "code": "SHIFT_GENERATION_WARNING_EXISTS",
        "message": "auto-generation warnings remain",
        "level": "warning"
      }
    ],
    "summary": {
      "assignment_count": 24,
      "visible_member_count_estimate": 8,
      "unassigned_count": 1,
      "generation_warning_count": 2
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_validate_001"
  }
}

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/publish

request:
{
  "publication_note": "initial publish",
  "notification_requested": true,
  "erp_export_required": true
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "publication_version_no": 1,
    "publication_status": "active",
    "published_at": "2026-04-10T12:30:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_publish_001"
  }
}

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/republish

request:
{
  "publication_note": "time change applied",
  "notification_requested": true,
  "erp_export_required": true
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "publication_version_no": 2,
    "publication_status": "active",
    "superseded_publication_id": "uuid"
  },
  "error": null,
  "meta": {
    "request_id": "req_republish_001"
  }
}

# ============================================================
# 9. SHARE RULE / SHARE PREVIEW
# ============================================================

endpoint:
POST /api/shift-manager/v1/share-rules

request:
{
  "rule_name": "sales dept visible",
  "scope_type": "department",
  "visibility_level": "department_visible",
  "applies_to_schedule_id": "uuid",
  "targets": [
    {
      "target_type": "department",
      "target_id": "uuid"
    }
  ]
}

response:
{
  "ok": true,
  "data": {
    "share_rule_id": "uuid",
    "active_flag": true
  },
  "error": null,
  "meta": {
    "request_id": "req_share_create_001"
  }
}

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/share-preview

response:
{
  "ok": true,
  "data": {
    "viewer_count": 15,
    "scope_breakdown": [
      {
        "scope_type": "department",
        "count": 12
      },
      {
        "scope_type": "management_scope",
        "count": 3
      }
    ],
    "sample_viewers": [
      {
        "person_id": "uuid",
        "display_name": "Boss"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_share_preview_001"
  }
}

# ============================================================
# 10. VIEWING
# ============================================================

endpoint:
GET /api/shift-manager/v1/me/shifts/today

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "publication_id": "uuid",
        "publication_assignment_id": "uuid",
        "shift_date": "2026-04-10",
        "start_time": "09:00:00",
        "end_time": "18:00:00",
        "office_name": "Tokyo Office",
        "department_name": "Sales",
        "role_code": "cashier",
        "memo": "front desk"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_my_today_001"
  }
}

endpoint:
GET /api/shift-manager/v1/me/shifts/week

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "publication_id": "uuid",
        "publication_assignment_id": "uuid",
        "shift_date": "2026-04-10",
        "start_time": "09:00:00",
        "end_time": "18:00:00",
        "office_name": "Tokyo Office",
        "department_name": "Sales",
        "role_code": "cashier",
        "memo": "front desk"
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_my_week_001"
  }
}

endpoint:
GET /api/shift-manager/v1/publication-assignments/{publication_assignment_id}

response:
{
  "ok": true,
  "data": {
    "publication_assignment_id": "uuid",
    "publication_id": "uuid",
    "visible_person_id": "uuid",
    "visible_person_display_name": "Boss",
    "shift_date": "2026-04-10",
    "start_time": "09:00:00",
    "end_time": "18:00:00",
    "office_name": "Tokyo Office",
    "department_name": "Sales",
    "team_name": "Retail Team A",
    "role_code": "cashier",
    "memo": "front desk",
    "publication_version_no": 2,
    "updated_summary": "republished with time adjustment"
  },
  "error": null,
  "meta": {
    "request_id": "req_shift_detail_001"
  }
}

# ============================================================
# 11. NOTIFICATIONS
# ============================================================

endpoint:
GET /api/shift-manager/v1/me/notifications

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "notification_id": "uuid",
        "notification_type": "publish",
        "title": "シフトが公開されました",
        "body": "2026-04-13週のシフトが公開されました。内容を確認してください。",
        "delivery_status": "sent",
        "urgent_flag": false,
        "related_shift_date": "2026-04-13",
        "deep_link_path": "/me/shifts/week?week_start_date=2026-04-13",
        "queued_at": "2026-04-10T12:31:00+09:00",
        "delivered_at": "2026-04-10T12:31:03+09:00",
        "read_at": null
      }
    ],
    "page": 1,
    "page_size": 20,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_notification_list_001"
  }
}

endpoint:
POST /api/shift-manager/v1/me/notifications/{notification_id}/read

response:
{
  "ok": true,
  "data": {
    "notification_id": "uuid",
    "read_at": "2026-04-10T12:40:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_notification_read_001"
  }
}

# ============================================================
# 12. ERP EXPORT
# ============================================================

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/export-erp

request:
{
  "export_mode": "manual"
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "export_status": "pending"
  },
  "error": null,
  "meta": {
    "request_id": "req_export_erp_001"
  }
}

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/erp-linkage

response:
{
  "ok": true,
  "data": {
    "linkage_id": "uuid",
    "publication_id": "uuid",
    "schedule_id": "uuid",
    "export_status": "failed",
    "export_mode": "manual",
    "export_requested_by": "uuid",
    "export_requested_at": "2026-04-10T12:33:00+09:00",
    "exported_at": null,
    "retry_count": 1,
    "external_reference_id": null,
    "last_error_code": "SHIFT_ERP_MASTER_MISMATCH",
    "last_error_message": "department_id not found",
    "updated_at": "2026-04-10T12:34:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_erp_linkage_detail_001"
  }
}

# ============================================================
# 13. GENERATION RULE / AUTO GENERATE / RESULT / WARNINGS
# ============================================================

endpoint:
POST /api/shift-manager/v1/generation-rules

request:
{
  "rule_name": "sales weekly default",
  "target_scope_type": "department",
  "target_scope_id": "uuid",
  "period_type": "week",
  "priority_policy": "balanced_assignment",
  "condition_json": {
    "business_days": ["mon", "tue", "wed", "thu", "fri", "sat"],
    "slot_requirements": [
      {
        "slot_code": "morning",
        "start_time": "09:00:00",
        "end_time": "13:00:00",
        "required_headcount": 2,
        "required_roles": [
          {
            "role_code": "cashier",
            "count": 1
          }
        ]
      }
    ],
    "person_constraints": [
      {
        "person_id": "uuid",
        "available_weekdays": ["mon", "tue", "wed"],
        "available_time_ranges": [
          {
            "start_time": "09:00:00",
            "end_time": "18:00:00"
          }
        ],
        "requested_days_off": ["2026-04-08"],
        "blocked_dates": [],
        "max_daily_hours": 8,
        "max_weekly_assignments": 4,
        "max_consecutive_days": 3
      }
    ],
    "priority_policy": {
      "balanced_assignment": true,
      "prefer_same_role_continuity": true,
      "prefer_veteran": false,
      "prefer_low_cost": false
    },
    "hard_rules": {
      "must_respect_requested_days_off": true,
      "must_respect_max_daily_hours": true,
      "must_respect_max_consecutive_days": true
    },
    "soft_rules": {
      "prefer_balanced_distribution": true,
      "allow_priority_fallback": true,
      "warn_on_skill_shortage": true
    }
  }
}

response:
{
  "ok": true,
  "data": {
    "generation_rule_id": "uuid",
    "active_flag": true
  },
  "error": null,
  "meta": {
    "request_id": "req_generation_rule_create_001"
  }
}

endpoint:
POST /api/shift-manager/v1/schedules/auto-generate

request:
{
  "schedule_name": "2026-04 week2 sales auto",
  "target_scope_type": "department",
  "target_scope_id": "uuid",
  "target_period_type": "week",
  "period_start_date": "2026-04-06",
  "period_end_date": "2026-04-12",
  "generation_rule_id": "uuid",
  "overwrite_policy": "create_new_schedule"
}

response:
{
  "ok": true,
  "data": {
    "schedule_id": "uuid",
    "generation_result_id": "uuid",
    "generation_mode": "auto_generated",
    "generated_assignment_count": 20,
    "unassigned_count": 2,
    "warning_count": 3
  },
  "error": null,
  "meta": {
    "request_id": "req_auto_generate_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result

response:
{
  "ok": true,
  "data": {
    "generation_result_id": "uuid",
    "schedule_id": "uuid",
    "generation_rule_id": "uuid",
    "generated_at": "2026-04-10T13:00:00+09:00",
    "generated_assignment_count": 20,
    "unassigned_count": 2,
    "warning_count": 3,
    "result_summary": {
      "filled_slots": 20,
      "unfilled_slots": 2,
      "fallback_assignments": 1
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_generation_result_001"
  }
}

endpoint:
GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "generation_warning_id": "uuid",
        "warning_type": "unassigned_slot",
        "warning_level": "high",
        "target_date": "2026-04-08",
        "target_slot": "morning",
        "related_person_id": null,
        "message": "required slot could not be fully assigned",
        "details": {
          "required_headcount": 2,
          "assigned_headcount": 1
        }
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_generation_warning_list_001"
  }
}

# ============================================================
# 14. PDF EXPORT
# ============================================================

endpoint:
POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf

request:
{
  "export_type": "draft_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "export_type": "draft_pdf",
    "file_name": "shift_draft_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_draft_2026-04-week2.pdf",
    "page_count": 2,
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_draft_001"
  }
}

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/export-pdf

request:
{
  "export_type": "publication_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "export_type": "publication_pdf",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_pub_001"
  }
}

endpoint:
GET /api/shift-manager/v1/pdf-exports/{pdf_export_id}

response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "schedule_id": "uuid",
    "publication_id": "uuid",
    "export_type": "publication_pdf",
    "layout_type": "weekly_a4",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "exported_by_person_id": "uuid",
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_detail_001"
  }
}

# ============================================================
# 15. FIXED PAYLOAD RULE SUMMARY
# ============================================================

fixed_rules:
- no mixed snake_case and camelCase
- use snake_case everywhere
- all enums fixed to strings listed above
- list endpoints use stable item shapes
- publication APIs return publication_version_no
- generation APIs return generation_result_id where applicable
- PDF export APIs return storage metadata, not raw binary in JSON
- formal printable distribution should use publication_pdf

# ============================================================
# 16. CONCLUSION
# ============================================================

This document fixes the exact payload foundation
for the main ShiftManager API set,
including:
- draft
- publication
- share
- viewing
- notification
- ERP
- generation
- PDF export

