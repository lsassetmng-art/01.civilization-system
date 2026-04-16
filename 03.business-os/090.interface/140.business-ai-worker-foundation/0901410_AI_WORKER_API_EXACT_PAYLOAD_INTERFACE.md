# ============================================================
# AI WORKER API EXACT PAYLOAD INTERFACE
# ============================================================

status: canonical
layer: interface
domain: business-ai-worker-foundation
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical exact request and response payloads
for Business AI Worker foundation-side APIs.

# ============================================================
# 1. COMMON RULES
# ============================================================

format:
- JSON

common_response_envelope:
- ok: boolean
- code: string
- message: string
- data: object|null

common_ids:
- company_id: string
- worker_id: string
- lending_id: string
- reservation_id: string
- advisory_session_id: string
- execution_task_id: string
- consent_id: string
- output_handoff_id: string

common_enum_values:

rank:
- Entry
- Standard
- High
- Extra

activity_mode:
- embedded_app_routine_work
- advisory_consultation
- execution_work

world_scope:
- civilization_internal
- real_world
- cross_world

knowledge_depth:
- basic
- practical
- advanced
- expert

lending_status:
- requested
- granted
- queued
- active
- released
- expired
- rejected

reservation_status:
- queued
- promotable
- granted
- cancelled
- expired
- rejected

execution_status:
- drafted
- assigned
- in_progress
- review_required
- awaiting_approval
- handoff_ready
- completed
- failed
- cancelled

# ============================================================
# 2. AVAILABILITY QUERY
# ============================================================

endpoint:
POST /business-ai-worker/availability/query

request:
{
  "company_id": "string",
  "requested_rank": "Entry|Standard|High|Extra",
  "requested_activity_mode": "embedded_app_routine_work|advisory_consultation|execution_work",
  "requested_world_scope": "civilization_internal|real_world|cross_world",
  "requested_specialty": "string",
  "requested_knowledge_depth_min": "basic|practical|advanced|expert",
  "requested_app_surface": "string"
}

response:
{
  "ok": true,
  "code": "availability_checked",
  "message": "Availability checked.",
  "data": {
    "available_now": true,
    "available_slots": 1,
    "estimated_available_at": null,
    "rank_availability": {
      "Entry": 2,
      "Standard": 1,
      "High": 0,
      "Extra": 0
    },
    "matched_worker_count": 3
  }
}

# ============================================================
# 3. LEND REQUEST
# ============================================================

endpoint:
POST /business-ai-worker/lending/request

request:
{
  "company_id": "string",
  "requested_rank": "Entry|Standard|High|Extra",
  "requested_activity_mode": "embedded_app_routine_work|advisory_consultation|execution_work",
  "requested_world_scope": "civilization_internal|real_world|cross_world",
  "requested_specialty": "string",
  "requested_knowledge_depth_min": "basic|practical|advanced|expert",
  "requested_app_surface": "string",
  "requested_task_summary": "string",
  "requested_duration_minutes": 30,
  "requested_priority": "normal",
  "actor_id": "string"
}

response_granted:
{
  "ok": true,
  "code": "granted",
  "message": "Worker granted.",
  "data": {
    "lending_id": "string",
    "worker_id": "string",
    "granted_rank": "Standard",
    "activity_mode": "advisory_consultation",
    "world_scope": "real_world",
    "specialty": "erp_consulting",
    "knowledge_depth": "advanced",
    "lending_status": "granted",
    "granted_at": "2026-04-11T12:00:00+09:00",
    "expires_at": "2026-04-11T12:30:00+09:00"
  }
}

response_queued:
{
  "ok": true,
  "code": "queued",
  "message": "No capacity available. Request queued.",
  "data": {
    "reservation_id": "string",
    "reservation_status": "queued",
    "queue_position": 3,
    "estimated_available_at": "2026-04-11T13:15:00+09:00"
  }
}

response_rejected:
{
  "ok": false,
  "code": "rank_not_available",
  "message": "Requested rank is not available.",
  "data": null
}

# ============================================================
# 4. RESERVATION REQUEST
# ============================================================

endpoint:
POST /business-ai-worker/reservation/request

request:
{
  "company_id": "string",
  "requested_rank": "Entry|Standard|High|Extra",
  "requested_activity_mode": "embedded_app_routine_work|advisory_consultation|execution_work",
  "requested_world_scope": "civilization_internal|real_world|cross_world",
  "requested_specialty": "string",
  "requested_knowledge_depth_min": "basic|practical|advanced|expert",
  "requested_app_surface": "string",
  "requested_task_summary": "string",
  "requested_duration_minutes": 60,
  "requested_priority": "normal",
  "actor_id": "string"
}

response:
{
  "ok": true,
  "code": "reservation_created",
  "message": "Reservation created.",
  "data": {
    "reservation_id": "string",
    "reservation_status": "queued",
    "queue_position": 2,
    "estimated_available_at": "2026-04-11T14:00:00+09:00",
    "requested_rank": "High"
  }
}

# ============================================================
# 5. RELEASE REQUEST
# ============================================================

endpoint:
POST /business-ai-worker/lending/release

request:
{
  "company_id": "string",
  "lending_id": "string",
  "release_reason": "normal_completion",
  "actor_id": "string"
}

response:
{
  "ok": true,
  "code": "released",
  "message": "Worker released.",
  "data": {
    "lending_id": "string",
    "released_at": "2026-04-11T12:35:00+09:00",
    "next_reservation_promoted": true,
    "promoted_reservation_id": "string"
  }
}

# ============================================================
# 6. DISCLAIMER FETCH
# ============================================================

endpoint:
POST /business-ai-worker/disclaimer/fetch

request:
{
  "company_id": "string",
  "consultation_type": "medical",
  "requested_specialty": "medical_consultation_support",
  "actor_id": "string"
}

response:
{
  "ok": true,
  "code": "disclaimer_required",
  "message": "Disclaimer must be accepted.",
  "data": {
    "disclaimer_required": true,
    "disclaimer_version": "v1",
    "disclaimer_text": "string",
    "consent_required": true
  }
}

# ============================================================
# 7. CONSENT SUBMIT
# ============================================================

endpoint:
POST /business-ai-worker/consent/submit

request:
{
  "company_id": "string",
  "consultation_type": "medical",
  "disclaimer_version": "v1",
  "actor_id": "string",
  "accepted": true
}

response:
{
  "ok": true,
  "code": "consent_recorded",
  "message": "Consent recorded.",
  "data": {
    "consent_id": "string",
    "consented_at": "2026-04-11T12:02:00+09:00",
    "expires_at": null
  }
}

# ============================================================
# 8. ADVISORY SESSION START
# ============================================================

endpoint:
POST /business-ai-worker/advisory/start

request:
{
  "company_id": "string",
  "lending_id": "string",
  "consultation_type": "erp_consulting",
  "requested_specialty": "erp_consulting",
  "conversation_session_id": "string",
  "disclaimer_version": null,
  "consent_id": null,
  "actor_id": "string",
  "initial_message": "string"
}

response:
{
  "ok": true,
  "code": "advisory_started",
  "message": "Advisory session started.",
  "data": {
    "advisory_session_id": "string",
    "lending_status": "active",
    "session_status": "active",
    "worker_id": "string",
    "started_at": "2026-04-11T12:03:00+09:00"
  }
}

# ============================================================
# 9. EXECUTION WORK START
# ============================================================

endpoint:
POST /business-ai-worker/execution/start

request:
{
  "company_id": "string",
  "lending_id": "string",
  "task_type": "marketplace_listing",
  "requested_specialty": "marketplace_listing",
  "work_order_id": "string",
  "requested_output": "string",
  "platform_target": "mercari",
  "review_required": true,
  "approval_required": true,
  "actor_id": "string"
}

response:
{
  "ok": true,
  "code": "execution_started",
  "message": "Execution task started.",
  "data": {
    "execution_task_id": "string",
    "execution_status": "assigned",
    "worker_id": "string",
    "started_at": "2026-04-11T12:05:00+09:00"
  }
}

# ============================================================
# 10. STATUS QUERY
# ============================================================

endpoint:
POST /business-ai-worker/status/query

request:
{
  "company_id": "string",
  "lending_id": "string",
  "reservation_id": null,
  "advisory_session_id": null,
  "execution_task_id": null,
  "actor_id": "string"
}

response:
{
  "ok": true,
  "code": "status_found",
  "message": "Status found.",
  "data": {
    "lending_status": "active",
    "reservation_status": null,
    "execution_status": null,
    "advisory_session_status": "active",
    "review_required": false,
    "approval_required": false,
    "output_handoff_status": null
  }
}

# ============================================================
# 11. OUTPUT HANDOFF
# ============================================================

endpoint:
POST /business-ai-worker/output/handoff

request:
{
  "company_id": "string",
  "execution_task_id": "string",
  "output_type": "listing_description",
  "output_title": "string",
  "output_body": "string",
  "target_app_surface": "marketplace-work-app",
  "review_required": true,
  "approval_required": true,
  "actor_id": "string"
}

response:
{
  "ok": true,
  "code": "handoff_ready",
  "message": "Output is ready for handoff.",
  "data": {
    "output_handoff_id": "string",
    "handoff_status": "handoff_ready",
    "review_required": true,
    "approval_required": true,
    "created_at": "2026-04-11T12:20:00+09:00"
  }
}

# ============================================================
# 12. ERROR CODES
# ============================================================

error_codes:
- granted
- queued
- reservation_created
- released
- availability_checked
- advisory_started
- execution_started
- status_found
- handoff_ready
- consent_recorded
- disclaimer_required
- no_capacity
- rank_not_available
- subscription_limit_reached
- invalid_assignment_scope
- unauthorized_app_surface
- queue_full
- worker_unavailable
- company_not_subscribed
- policy_rejected
- consent_missing
- specialty_mismatch
- world_scope_mismatch
- approval_denied

# ============================================================
# 13. OFFICIAL SUMMARY
# ============================================================

The first exact payload set to fix is:
- availability
- lending
- reservation
- release
- disclaimer
- consent
- advisory start
- execution start
- status query
- output handoff

This is the BusinessOS foundation-side canonical API surface.
