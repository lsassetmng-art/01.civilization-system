# ============================================================
# LIFE OS API EXACT PAYLOAD DESIGN
# ============================================================

status: canonical-draft
system: life-os
layer: 050.api
document_type: exact-payload-design
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the canonical API contracts for LifeOS before implementation.
- Define request / response exact payloads that map cleanly to the LifeOS core DB exact design.
- Provide a stable contract for mobile, web, and tablet clients before any backend implementation starts.

non_goals:
- No SQL execution.
- No controller implementation.
- No transport-library decision.
- No ERP-side payload contract in this document.

principles:
- Append-first writes.
- Current state is derived from canonical facts plus projection/read-models.
- All write APIs accept idempotency keys.
- Server timestamps are canonical.
- Client-sent derived fields are advisory only and not canonical.
- Error responses use a single shared envelope.
- Persona-side DB work later uses PERSONA_DATABASE_URL, but this document itself is design only.

# ============================================================
# 1. API SURFACE OVERVIEW
# ============================================================

api_groups:
- life-habits
- life-health-metrics
- life-goals
- life-events
- life-dashboard
- life-daily-checkin
- life-integrations
- life-sync-and-outbox
- life-admin-review

base_path:
- /api/life/v1

authentication_assumption:
- Authenticated end-user session for user APIs.
- Authenticated admin/reviewer session for admin review APIs.
- Identity resolution is handled outside this document.

common_headers:
- Authorization: bearer token
- Content-Type: application/json
- X-Request-Id: client or gateway supplied correlation id
- Idempotency-Key: required for POST write endpoints
- X-Client-Timezone: optional IANA timezone string
- X-Client-Platform: optional enum {ios,android,web,tablet,other}

# ============================================================
# 2. SHARED ENVELOPES
# ============================================================

success_envelope:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {}
}
```

error_envelope:
```json
{
  "ok": false,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "error": {
    "code": "LIFE_VALIDATION_ERROR",
    "message": "metric_type is invalid",
    "field_errors": [
      {
        "field": "metric_type",
        "code": "INVALID_ENUM",
        "message": "Allowed values are weight, sleep_hours, steps, blood_pressure_systolic, blood_pressure_diastolic, body_temperature, pulse."
      }
    ],
    "retryable": false
  }
}
```

pagination_envelope_fragment:
```json
{
  "page": {
    "next_cursor": "cur_01HX...",
    "has_more": true
  }
}
```

accepted_write_envelope:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "record_id": "hlg_01HXYZ...",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

common_error_codes:
- LIFE_VALIDATION_ERROR
- LIFE_UNAUTHORIZED
- LIFE_FORBIDDEN
- LIFE_NOT_FOUND
- LIFE_CONFLICT
- LIFE_IDEMPOTENCY_REPLAY
- LIFE_RATE_LIMITED
- LIFE_DEPENDENCY_UNAVAILABLE
- LIFE_INTERNAL_ERROR

# ============================================================
# 3. CANONICAL RESOURCE IDS
# ============================================================

id_prefixes:
- habit_log_id: hlg_
- health_metric_log_id: hml_
- goal_event_id: gev_
- life_event_id: lev_
- integration_ingest_id: iig_
- outbox_event_id: lox_
- daily_checkin_id: dci_
- review_case_id: lrc_

id_rules:
- String IDs only.
- Opaque to clients.
- Clients must not derive sequencing assumptions from IDs.

# ============================================================
# 4. HABIT APIs
# ============================================================

## 4.1 POST /api/life/v1/habits/logs

purpose:
- Append a habit execution fact.

request:
```json
{
  "habit_code": "wake_early",
  "performed_at": "2026-04-17T06:30:00+09:00",
  "status": "done",
  "quantity": 1,
  "unit": "count",
  "source": "manual",
  "note": "Up before alarm",
  "client_reference_id": "mobile-local-0001"
}
```

request_rules:
- habit_code: required, stable habit identifier
- performed_at: required ISO 8601 timestamp
- status: required enum {done, skipped, partial}
- quantity: optional numeric, default 1
- unit: optional string
- source: required enum {manual, integration, correction, import}
- note: optional max 1000 chars
- client_reference_id: optional idempotency helper

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "habit_log_id": "hlg_01HXYZ...",
    "habit_code": "wake_early",
    "performed_at": "2026-04-16T21:30:00Z",
    "status": "done",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

## 4.2 GET /api/life/v1/habits/logs

query_params:
- habit_code: optional
- date_from: optional YYYY-MM-DD
- date_to: optional YYYY-MM-DD
- cursor: optional
- limit: optional default 50 max 200

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "items": [
      {
        "habit_log_id": "hlg_01HXYZ...",
        "habit_code": "wake_early",
        "performed_at": "2026-04-16T21:30:00Z",
        "status": "done",
        "quantity": 1,
        "unit": "count",
        "source": "manual",
        "note": "Up before alarm"
      }
    ],
    "page": {
      "next_cursor": null,
      "has_more": false
    }
  }
}
```

# ============================================================
# 5. HEALTH METRIC APIs
# ============================================================

## 5.1 POST /api/life/v1/health-metrics/logs

request:
```json
{
  "metric_type": "weight",
  "measured_at": "2026-04-17T07:10:00+09:00",
  "value_number": 64.2,
  "value_text": null,
  "unit": "kg",
  "source": "manual",
  "device_name": "Body Scale A",
  "note": "Morning measurement"
}
```

metric_type_enum:
- weight
- sleep_hours
- steps
- blood_pressure_systolic
- blood_pressure_diastolic
- body_temperature
- pulse
- custom

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "health_metric_log_id": "hml_01HXYZ...",
    "metric_type": "weight",
    "measured_at": "2026-04-16T22:10:00Z",
    "canonical_unit": "kg",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

## 5.2 GET /api/life/v1/health-metrics/logs

query_params:
- metric_type: optional
- date_from: optional
- date_to: optional
- limit: optional
- cursor: optional

response_shape:
- Same envelope pattern as habit list, with items keyed by health_metric_log_id.

# ============================================================
# 6. GOAL EVENT APIs
# ============================================================

## 6.1 POST /api/life/v1/goals/events

purpose:
- Append a goal lifecycle event, not overwrite the goal row.

request:
```json
{
  "goal_code": "lose_3kg",
  "event_type": "goal_created",
  "event_at": "2026-04-17T09:00:00+09:00",
  "target_value_number": 3,
  "target_unit": "kg",
  "target_date": "2026-07-31",
  "note": "Summer health target"
}
```

event_type_enum:
- goal_created
- goal_updated
- goal_progress_logged
- goal_paused
- goal_resumed
- goal_completed
- goal_abandoned

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "goal_event_id": "gev_01HXYZ...",
    "goal_code": "lose_3kg",
    "event_type": "goal_created",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

## 6.2 GET /api/life/v1/goals/current

purpose:
- Return current goal state projection.

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "items": [
      {
        "goal_code": "lose_3kg",
        "current_status": "active",
        "target_value_number": 3,
        "target_unit": "kg",
        "target_date": "2026-07-31",
        "last_event_at": "2026-04-17T00:00:00Z"
      }
    ]
  }
}
```

# ============================================================
# 7. LIFE EVENT / TIMELINE APIs
# ============================================================

## 7.1 POST /api/life/v1/events

purpose:
- Append a generic life event usable by dashboard, review, and integrations.

request:
```json
{
  "event_type": "daily_checkin_completed",
  "event_at": "2026-04-17T21:00:00+09:00",
  "event_source": "manual",
  "event_payload": {
    "mood_score": 4,
    "energy_score": 3,
    "sleep_satisfaction": 4
  },
  "note": "Stable day"
}
```

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "life_event_id": "lev_01HXYZ...",
    "event_type": "daily_checkin_completed",
    "event_at": "2026-04-17T12:00:00Z",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

## 7.2 GET /api/life/v1/events/timeline

query_params:
- event_type: optional
- date_from: optional
- date_to: optional
- cursor: optional
- limit: optional

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "items": [
      {
        "life_event_id": "lev_01HXYZ...",
        "event_type": "daily_checkin_completed",
        "event_at": "2026-04-17T12:00:00Z",
        "event_source": "manual",
        "event_payload": {
          "mood_score": 4,
          "energy_score": 3,
          "sleep_satisfaction": 4
        },
        "note": "Stable day"
      }
    ],
    "page": {
      "next_cursor": null,
      "has_more": false
    }
  }
}
```

# ============================================================
# 8. DAILY CHECKIN APIs
# ============================================================

## 8.1 POST /api/life/v1/daily-checkins

purpose:
- Submit the daily check-in as a canonical event plus structured input payload.

request:
```json
{
  "checkin_date": "2026-04-17",
  "timezone": "Asia/Tokyo",
  "mood_score": 4,
  "energy_score": 3,
  "stress_score": 2,
  "sleep_satisfaction_score": 4,
  "free_note": "Work was manageable",
  "tags": ["calm", "productive"]
}
```

request_rules:
- Scores: integer 1..5
- tags: optional array max 20
- free_note: optional max 2000 chars
- One accepted check-in per user per date unless correction path is used

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "daily_checkin_id": "dci_01HXYZ...",
    "checkin_date": "2026-04-17",
    "derived_life_event_id": "lev_01HXYZ...",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

## 8.2 GET /api/life/v1/daily-checkins/latest

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "daily_checkin_id": "dci_01HXYZ...",
    "checkin_date": "2026-04-17",
    "mood_score": 4,
    "energy_score": 3,
    "stress_score": 2,
    "sleep_satisfaction_score": 4,
    "free_note": "Work was manageable",
    "tags": ["calm", "productive"]
  }
}
```

# ============================================================
# 9. DASHBOARD APIs
# ============================================================

## 9.1 GET /api/life/v1/dashboard

purpose:
- Return a read-optimized aggregated dashboard payload.

query_params:
- date: optional YYYY-MM-DD
- timezone: optional IANA timezone

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "date": "2026-04-17",
    "summary": {
      "habit_completion_rate": 0.75,
      "latest_weight": {
        "value_number": 64.2,
        "unit": "kg",
        "measured_at": "2026-04-16T22:10:00Z"
      },
      "active_goal_count": 2,
      "latest_checkin": {
        "mood_score": 4,
        "energy_score": 3
      }
    },
    "widgets": [
      {
        "widget_code": "habit_today",
        "status": "ok"
      },
      {
        "widget_code": "health_metrics",
        "status": "ok"
      }
    ]
  }
}
```

# ============================================================
# 10. INTEGRATION INGEST APIs
# ============================================================

## 10.1 POST /api/life/v1/integrations/ingest

purpose:
- Canonical integration intake endpoint with idempotent replay protection.

request:
```json
{
  "integration_source": "wearable_device",
  "source_event_id": "wearable-evt-000123",
  "occurred_at": "2026-04-17T07:00:00+09:00",
  "payload_type": "health_metric_batch",
  "payload": {
    "items": [
      {
        "metric_type": "steps",
        "value_number": 8241,
        "unit": "count"
      }
    ]
  }
}
```

request_rules:
- integration_source: required stable source code
- source_event_id: required for idempotency
- payload_type: required
- payload: required object

response_202:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "integration_ingest_id": "iig_01HXYZ...",
    "ingest_status": "queued",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

response_200_idempotent_replay:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "replayed",
    "integration_ingest_id": "iig_01HXYZ...",
    "ingest_status": "already_processed",
    "idempotency_key": "idem_01HXYZ..."
  }
}
```

# ============================================================
# 11. OUTBOX / SYNC APIs
# ============================================================

## 11.1 GET /api/life/v1/sync/outbox-status

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "pending_count": 4,
    "oldest_pending_at": "2026-04-17T11:00:00Z",
    "last_emitted_at": "2026-04-17T12:30:00Z"
  }
}
```

## 11.2 POST /api/life/v1/sync/replay-request

purpose:
- Request operational replay. This does not directly perform replay in the request thread.

request:
```json
{
  "replay_scope": "life_event_outbox",
  "date_from": "2026-04-15",
  "date_to": "2026-04-17",
  "reason": "projection gap suspected"
}
```

response_202:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "replay_request_status": "queued"
  }
}
```

# ============================================================
# 12. CORRECTION / REVIEW APIs
# ============================================================

## 12.1 POST /api/life/v1/review/corrections

purpose:
- Submit a correction request instead of mutating canonical facts in place.

request:
```json
{
  "target_record_type": "health_metric_log",
  "target_record_id": "hml_01HXYZ...",
  "correction_reason_code": "wrong_value",
  "proposed_change": {
    "value_number": 63.8,
    "unit": "kg"
  },
  "note": "The previous input used clothing-on value."
}
```

response_202:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "write_status": "accepted",
    "review_case_id": "lrc_01HXYZ...",
    "review_status": "queued"
  }
}
```

## 12.2 GET /api/life/v1/review/cases/{review_case_id}

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "review_case_id": "lrc_01HXYZ...",
    "target_record_type": "health_metric_log",
    "target_record_id": "hml_01HXYZ...",
    "review_status": "queued",
    "decision": null,
    "created_at": "2026-04-17T12:35:00Z"
  }
}
```

# ============================================================
# 13. ADMIN / REVIEWER APIs
# ============================================================

## 13.1 POST /api/life/v1/admin/review/cases/{review_case_id}/decision

request:
```json
{
  "decision": "approved",
  "decision_note": "Correction is reasonable and consistent."
}
```

decision_enum:
- approved
- rejected
- needs_more_info

response_200:
```json
{
  "ok": true,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "data": {
    "review_case_id": "lrc_01HXYZ...",
    "review_status": "resolved",
    "decision": "approved"
  }
}
```

# ============================================================
# 14. VALIDATION RULES
# ============================================================

validation_rules:
- Reject unknown enum values.
- Reject timestamps older than allowed replay horizon only when endpoint policy requires it.
- Reject impossible combinations such as value_number and value_text both null when the metric requires one.
- Reject duplicate accepted daily check-in for the same date unless correction/review path is used.
- Accept idempotent retry with same Idempotency-Key and same canonical payload.
- Reject same Idempotency-Key with different payload hash as conflict.

idempotency_conflict_error_example:
```json
{
  "ok": false,
  "request_id": "req_01HXYZ...",
  "server_time": "2026-04-17T12:34:56Z",
  "error": {
    "code": "LIFE_CONFLICT",
    "message": "Idempotency key was already used with a different payload.",
    "field_errors": [],
    "retryable": false
  }
}
```

# ============================================================
# 15. API TO DB MAPPING SUMMARY
# ============================================================

mapping_summary:
- POST /habits/logs -> life.habit_log
- POST /health-metrics/logs -> life.health_metric_log
- POST /goals/events -> life.goal_event
- POST /events -> life.life_event_outbox and/or canonical life event table depending on write pipeline design
- POST /daily-checkins -> canonical check-in record plus derived goal/life event append
- POST /integrations/ingest -> integration_ingest_registry + idempotency table + downstream append
- POST /review/corrections -> life_record_revision_log / review case tables
- GET /dashboard -> projection/read-model only
- GET /goals/current -> current-state projection only
- GET /events/timeline -> canonical event timeline read-model

note:
- Exact physical projection table names may be finalized in the projection design layer, but write-path canonical ownership must not change.

# ============================================================
# 16. ACCEPTANCE GATE
# ============================================================

acceptance_gate:
- Every write endpoint has request/response examples.
- Every write endpoint has explicit idempotency policy.
- Every read endpoint avoids pretending projections are canonical facts.
- Correction flow is append/review based, not in-place mutation based.
- API payloads are stable enough to start controller/service/repository exact design later.
- No SQL or implementation is executed by this document.

final_status_interpretation:
- Implementation-ready for API contract review.
- Not implementation.
