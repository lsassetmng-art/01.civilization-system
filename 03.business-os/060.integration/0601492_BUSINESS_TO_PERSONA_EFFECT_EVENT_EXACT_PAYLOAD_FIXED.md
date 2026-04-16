# ============================================================
# BUSINESS TO PERSONA EFFECT EVENT EXACT PAYLOAD FIXED
# ============================================================

status: canonical
layer: integration
domain: business-persona-connection
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed exact payload
for BusinessOS -> PersonaOS business-origin effect events.

# ============================================================
# 1. COMMON RULE
# ============================================================

format:
- JSON

integration_direction:
- BusinessOS -> PersonaOS

primary_persona_sink:
- personaos.growth_events
- personaos.growth_core_state

# ============================================================
# 2. EVENT REQUEST ENDPOINT
# ============================================================

endpoint:
POST /persona/growth-effects/apply-request

# ============================================================
# 3. REQUEST PAYLOAD
# ============================================================

request:
{
  "event_id": "string",
  "user_id": "string",
  "persona_id": "string",
  "company_id": "string",
  "app_namespace": "BusinessOS",
  "event_type": "business_reliable_support",
  "magnitude": 3,
  "context": {
    "source_system": "business-os",
    "source_domain": "business-ai-worker",
    "worker_id": "string",
    "lending_id": "string",
    "activity_mode": "advisory_consultation",
    "world_scope": "real_world",
    "specialty": "erp_consulting",
    "business_action_type": "advisory_completion",
    "result_class": "helpful_success",
    "review_status": "accepted",
    "approval_status": "not_required",
    "target_app_surface": "erp-consulting-app",
    "output_handoff_id": null,
    "occurred_at": "2026-04-11T12:03:00+09:00"
  },
  "occurred_at": "2026-04-11T12:03:00+09:00"
}

# ============================================================
# 4. FIXED REQUEST FIELD RULES
# ============================================================

required_top_level_fields:
- event_id
- user_id
- persona_id
- company_id
- app_namespace
- event_type
- magnitude
- context
- occurred_at

required_context_fields:
- source_system
- source_domain
- worker_id
- activity_mode
- business_action_type
- result_class
- occurred_at

optional_context_fields:
- lending_id
- world_scope
- specialty
- review_status
- approval_status
- target_app_surface
- output_handoff_id

fixed_value_rule:
app_namespace must be exactly:
- BusinessOS

# ============================================================
# 5. FIXED EVENT TYPE SET
# ============================================================

event_type_fixed_values:
- business_reliable_support
- business_continuous_support
- business_positive_outcome
- business_safe_completion
- business_helpful_advisory
- business_trust_decrease
- business_failed_commitment
- business_interaction_gap

# ============================================================
# 6. FIXED MAGNITUDE RULE
# ============================================================

magnitude_rule:
- integer only
- minimum = -5
- maximum = 5

recommended_initial_values:
- -3
- -1
- 1
- 3

# ============================================================
# 7. CONTEXT ENUMS
# ============================================================

activity_mode_fixed_values:
- embedded_app_routine_work
- advisory_consultation
- execution_work

world_scope_fixed_values:
- civilization_internal
- real_world
- cross_world

review_status_fixed_values:
- not_required
- required
- in_review
- accepted
- rejected

approval_status_fixed_values:
- not_required
- required
- awaiting_approval
- approved
- denied

result_class_fixed_values:
- safe_success
- helpful_success
- neutral_completion
- blocked_by_review
- blocked_by_approval
- failed
- policy_violation_prevented

business_action_type_fixed_examples:
- advisory_completion
- execution_completion
- embedded_app_assistance
- marketplace_listing_preparation
- night_operation_completion
- bugfix_support_result
- testing_support_result

# ============================================================
# 8. PERSONA RESPONSE ENDPOINT
# ============================================================

endpoint_response:
POST /persona/growth-effects/apply-response

# ============================================================
# 9. RESPONSE PAYLOAD
# ============================================================

response_accepted:
{
  "ok": true,
  "code": "accepted_for_processing",
  "message": "Effect event accepted.",
  "data": {
    "event_id": "string",
    "persona_id": "string",
    "stored_in_growth_events": true,
    "is_processed": false,
    "received_at": "2026-04-11T12:03:02+09:00"
  }
}

response_applied:
{
  "ok": true,
  "code": "applied",
  "message": "Effect applied to growth state.",
  "data": {
    "event_id": "string",
    "persona_id": "string",
    "is_processed": true,
    "processed_at": "2026-04-11T12:03:05+09:00",
    "updated_fields": [
      "trust",
      "familiarity",
      "relationship_score",
      "last_interaction_at"
    ]
  }
}

response_rejected:
{
  "ok": false,
  "code": "invalid_effect_source",
  "message": "Effect request rejected.",
  "data": {
    "event_id": "string",
    "persona_id": "string",
    "rejection_reason": "invalid_effect_source"
  }
}

# ============================================================
# 10. RESPONSE CODES
# ============================================================

response_code_fixed_values:
- accepted_for_processing
- applied
- duplicate_ignored
- invalid_effect_source
- invalid_event_type
- invalid_magnitude
- invalid_persona_id
- invalid_user_scope
- invalid_payload
- unauthorized_caller
- processing_failed

# ============================================================
# 11. PERSONA DB FIXED MAPPING
# ============================================================

request_to_growth_events_mapping:
- event_id -> growth_events.event_id
- user_id -> growth_events.user_id
- persona_id -> growth_events.persona_id
- app_namespace -> growth_events.app_namespace
- event_type -> growth_events.event_type
- magnitude -> growth_events.magnitude
- context -> growth_events.context
- occurred_at -> growth_events.occurred_at
- received_at -> growth_events.received_at
- is_processed -> growth_events.is_processed
- processed_at -> growth_events.processed_at

apply_to_growth_core_state_targets:
- trust
- familiarity
- relationship_score
- last_interaction_at

# ============================================================
# 12. IDEMPOTENCY RULE
# ============================================================

idempotency_key:
- event_id

rule:
If the same event_id is received again,
PersonaOS must not apply the same effect twice.

duplicate_response:
{
  "ok": true,
  "code": "duplicate_ignored",
  "message": "Duplicate event ignored.",
  "data": {
    "event_id": "string"
  }
}

# ============================================================
# 13. AUTHORIZATION RULE
# ============================================================

authorization_rule:
Only official BusinessOS-origin callers
may submit business-origin effect events.

required_identity:
- trusted BusinessOS integration caller

rejection_if_not_trusted:
- unauthorized_caller

# ============================================================
# 14. OFFICIAL SUMMARY
# ============================================================

This file fixes the exact payload
for BusinessOS -> PersonaOS effect event integration.

It is the canonical bridge between:
- BusinessOS business-origin outcomes
- PersonaOS growth_events intake
- PersonaOS growth_core_state reflection
