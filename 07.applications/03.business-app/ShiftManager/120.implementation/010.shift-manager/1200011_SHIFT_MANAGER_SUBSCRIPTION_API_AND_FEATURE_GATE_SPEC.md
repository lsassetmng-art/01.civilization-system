# ============================================================
# SHIFT MANAGER SUBSCRIPTION API AND FEATURE GATE SPEC
# ============================================================

status: implementation-facing-fixed-candidate
type: subscription-api-and-feature-gate-spec
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the API-facing subscription and feature-gate behavior
for site-based licensing.

# ============================================================
# 2. BOOTSTRAP ADDITION
# ============================================================

bootstrap_response_addition:
{
  "subscription": {
    "site_license_id": "uuid",
    "site_id": "uuid",
    "subscription_status": "trial",
    "trial_ends_at": "2026-04-13T10:00:00+09:00",
    "grace_ends_at": null,
    "read_only_mode": false
  },
  "feature_gate": {
    "view_self_shift": true,
    "view_visible_publication": true,
    "create_schedule": true,
    "edit_schedule": true,
    "run_auto_generation": true,
    "publish_schedule": true,
    "republish_schedule": true,
    "manage_share_rule": true,
    "export_pdf": true,
    "export_erp": true,
    "manage_generation_rule": true
  }
}

# ============================================================
# 3. RECOMMENDED SUBSCRIPTION ENDPOINTS
# ============================================================

endpoints:
- GET /api/shift-manager/v1/subscription/status
- GET /api/shift-manager/v1/subscription/feature-gate
- GET /api/shift-manager/v1/subscription/trial-summary

# ============================================================
# 4. SUBSCRIPTION STATUS RESPONSE
# ============================================================

endpoint:
GET /api/shift-manager/v1/subscription/status

response:
{
  "ok": true,
  "data": {
    "site_license_id": "uuid",
    "site_id": "uuid",
    "subscription_status": "inactive",
    "trial_started_at": "2026-04-10T10:00:00+09:00",
    "trial_ends_at": "2026-04-13T10:00:00+09:00",
    "active_started_at": null,
    "grace_started_at": null,
    "grace_ends_at": null,
    "inactive_started_at": "2026-04-13T10:00:01+09:00",
    "read_only_mode": true
  },
  "error": null,
  "meta": {
    "request_id": "req_subscription_status_001"
  }
}

# ============================================================
# 5. FEATURE GATE RESPONSE
# ============================================================

endpoint:
GET /api/shift-manager/v1/subscription/feature-gate

response:
{
  "ok": true,
  "data": {
    "subscription_status": "inactive",
    "feature_gate": {
      "view_self_shift": true,
      "view_visible_publication": true,
      "create_schedule": false,
      "edit_schedule": false,
      "run_auto_generation": false,
      "publish_schedule": false,
      "republish_schedule": false,
      "manage_share_rule": false,
      "export_pdf": false,
      "export_erp": false,
      "manage_generation_rule": false
    }
  },
  "error": null,
  "meta": {
    "request_id": "req_feature_gate_001"
  }
}

# ============================================================
# 6. TRIAL SUMMARY RESPONSE
# ============================================================

endpoint:
GET /api/shift-manager/v1/subscription/trial-summary

response:
{
  "ok": true,
  "data": {
    "subscription_status": "trial",
    "trial_started_at": "2026-04-10T10:00:00+09:00",
    "trial_ends_at": "2026-04-13T10:00:00+09:00",
    "remaining_seconds": 86400,
    "recommended_action": "start_paid_subscription"
  },
  "error": null,
  "meta": {
    "request_id": "req_trial_summary_001"
  }
}

# ============================================================
# 7. FEATURE GATE ENFORCEMENT RULE
# ============================================================

feature_gate_enforcement_rule:
Every write/management endpoint should evaluate:
1. site subscription state
2. feature code gate
3. normal role/visibility authorization

read_only_rule:
Inactive state should block management/write endpoints
before deeper business execution.

# ============================================================
# 8. ENDPOINT MAPPING
# ============================================================

endpoint_to_feature_code_mapping:
- POST /schedules -> create_schedule
- PATCH /assignments/{assignment_id} -> edit_schedule
- POST /schedules/auto-generate -> run_auto_generation
- POST /schedules/{schedule_id}/publish -> publish_schedule
- POST /schedules/{schedule_id}/republish -> republish_schedule
- POST /share-rules -> manage_share_rule
- POST /publications/{publication_id}/export-erp -> export_erp
- POST /schedules/{schedule_id}/export-pdf -> export_pdf
- POST /publications/{publication_id}/export-pdf -> export_pdf
- POST /generation-rules -> manage_generation_rule

# ============================================================
# 9. ERROR DIRECTION
# ============================================================

recommended_error_codes:
- SUBSCRIPTION_INACTIVE_READ_ONLY
- SUBSCRIPTION_TRIAL_EXPIRED
- FEATURE_GATE_BLOCKED
- SITE_LICENSE_NOT_FOUND
- SITE_SUBSCRIPTION_STATE_NOT_RESOLVED

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should expose subscription state clearly to the client,
and should enforce feature gates consistently
before business mutation endpoints execute.

