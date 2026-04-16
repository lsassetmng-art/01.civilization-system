# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE API EXACT PAYLOAD SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-api-exact-payload-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact request/response payload shapes
for the additional competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

endpoint:
POST /api/shift-manager/v1/requested-day-off

request:
{
  "requested_date": "2026-05-12",
  "request_note": "family event"
}

response:
{
  "ok": true,
  "data": {
    "requested_day_off_id": "uuid",
    "person_id": "uuid",
    "requested_date": "2026-05-12",
    "requested_status": "submitted",
    "request_note": "family event",
    "requested_at": "2026-04-11T10:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_requested_day_off_submit_001"
  }
}

endpoint:
PATCH /api/shift-manager/v1/requested-day-off/{requested_day_off_id}

request:
{
  "requested_status": "approved",
  "review_note": "approved"
}

response:
{
  "ok": true,
  "data": {
    "requested_day_off_id": "uuid",
    "requested_status": "approved",
    "reviewed_by_person_id": "uuid",
    "reviewed_at": "2026-04-11T10:30:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_requested_day_off_review_001"
  }
}

# ============================================================
# 3. SCHEDULED AUTO GENERATION
# ============================================================

endpoint:
POST /api/shift-manager/v1/auto-generation-schedules

request:
{
  "rule_name": "monthly store-a auto draft",
  "target_scope_type": "site",
  "target_scope_id": "uuid",
  "generation_rule_id": "uuid",
  "schedule_type": "monthly_fixed_day",
  "execution_timezone": "Asia/Tokyo",
  "monthly_day": 25,
  "monthly_use_last_day": false,
  "execution_time": "10:00:00",
  "target_period_mode": "next_month",
  "active_flag": true
}

response:
{
  "ok": true,
  "data": {
    "auto_generation_schedule_id": "uuid",
    "rule_name": "monthly store-a auto draft",
    "schedule_type": "monthly_fixed_day",
    "execution_timezone": "Asia/Tokyo",
    "monthly_day": 25,
    "monthly_use_last_day": false,
    "execution_time": "10:00:00",
    "target_period_mode": "next_month",
    "active_flag": true
  },
  "error": null,
  "meta": {
    "request_id": "req_auto_generation_schedule_create_001"
  }
}

endpoint:
POST /api/shift-manager/v1/auto-generation-schedules/{auto_generation_schedule_id}/run-now

request:
{
  "overwrite_policy": "create_new_schedule"
}

response:
{
  "ok": true,
  "data": {
    "auto_generation_execution_id": "uuid",
    "execution_status": "success",
    "generated_schedule_id": "uuid",
    "generation_result_id": "uuid",
    "warning_count": 2,
    "unassigned_count": 1,
    "executed_at": "2026-04-11T11:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_auto_generation_run_now_001"
  }
}

# ============================================================
# 4. PUBLICATION DIFFERENCE / CHANGE CONFIRMATION
# ============================================================

endpoint:
GET /api/shift-manager/v1/publications/{publication_id}/differences

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "publication_difference_id": "uuid",
        "difference_type": "time_changed",
        "affected_person_id": "uuid",
        "difference_summary": "09:00-13:00 -> 10:00-14:00",
        "before_value_json": {},
        "after_value_json": {}
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_publication_differences_001"
  }
}

endpoint:
POST /api/shift-manager/v1/publications/{publication_id}/confirm-change

request:
{
  "publication_difference_ids": ["uuid", "uuid"],
  "confirmation_status": "confirmed"
}

response:
{
  "ok": true,
  "data": {
    "publication_id": "uuid",
    "confirmation_status": "confirmed",
    "confirmed_count": 2,
    "confirmed_at": "2026-04-11T11:10:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_change_confirmation_001"
  }
}

# ============================================================
# 5. HEADQUARTERS DASHBOARD / ANALYTICS
# ============================================================

endpoint:
GET /api/shift-manager/v1/headquarters/site-dashboard

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "site_id": "uuid",
        "site_name": "Store A",
        "subscription_status": "active",
        "unpublished_count": 1,
        "shortage_count": 3,
        "warning_count": 5,
        "unconfirmed_change_count": 2,
        "erp_failed_count": 0
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_headquarters_dashboard_001"
  }
}

endpoint:
GET /api/shift-manager/v1/headquarters/site-analytics

response:
{
  "ok": true,
  "data": {
    "items": [
      {
        "site_id": "uuid",
        "site_name": "Store A",
        "period_start_date": "2026-04-01",
        "period_end_date": "2026-04-30",
        "same_day_change_count": 4,
        "pdf_export_count": 12,
        "erp_failure_count": 0,
        "requested_day_off_pending_count": 3,
        "change_confirmation_pending_count": 2
      }
    ],
    "page": 1,
    "page_size": 50,
    "total_count": 1
  },
  "error": null,
  "meta": {
    "request_id": "req_headquarters_analytics_001"
  }
}

