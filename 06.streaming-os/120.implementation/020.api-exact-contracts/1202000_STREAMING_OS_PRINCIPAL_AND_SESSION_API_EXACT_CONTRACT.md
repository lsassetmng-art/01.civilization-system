# ============================================================
# STREAMING OS PRINCIPAL AND SESSION API EXACT CONTRACT
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the exact payload intent
for principal selection and session lifecycle APIs.

# ============================================================
# 2. PRINCIPAL LIST API
# ============================================================

endpoint_intent:
- list selectable streaming principals

request_payload:
- actor_civilization_id
- principal_type_filter
  optional:
  - individual
  - group
  - company
  - ai_human
- include_ineligible
  boolean
- affiliation_civilization_id
  optional

response_payload:
- principals:
  - stream_principal_civilization_id
  - stream_principal_type
  - stream_principal_display_name
  - stream_principal_status
  - affiliation_civilization_id
    nullable
  - company_official_stream_capable_flag
  - eligible_flag
  - ineligible_reason_codes
- generated_at

# ============================================================
# 3. SESSION CREATE API
# ============================================================

endpoint_intent:
- create a new streaming session

request_payload:
- actor_civilization_id
- stream_principal_civilization_id
- ownership_mode
  - corporate_official
  - individual_owned
  - group_owned
  - ai_human_owned
- channel_id
- program_id
  nullable
- session_title
- scheduled_start_at
  nullable
- affiliated_company_civilization_id
  nullable

response_payload:
- session_id
- session_state
- stream_principal_civilization_id
- ownership_mode
- scheduled_start_at
  nullable
- created_at

# ============================================================
# 4. PERFORMER ASSIGN API
# ============================================================

endpoint_intent:
- add or update performer participation

request_payload:
- actor_civilization_id
- session_id
- performer_subject_kind
  - individual
  - group
  - company_representative
  - ai_human
  - persona
  - ai_robot
- performer_civilization_id
  nullable
- performer_persona_id
  nullable
- performer_ai_robot_id
  nullable
- performer_role
  - host
  - co_host
  - guest
  - narrator
  - operator
  - singer
  - avatar_actor
  - support
- performer_affiliation_civilization_id
  nullable

response_payload:
- performer_participation_id
- session_id
- performer_participation_status
- updated_at

# ============================================================
# 5. SESSION COMMAND API
# ============================================================

endpoint_intent:
- execute lifecycle commands against a session

request_payload:
- actor_civilization_id
- session_id
- command
  - schedule_session
  - mark_ready
  - run_pre_live_check
  - start_live
  - pause_session
  - resume_session
  - end_session
  - cancel_session
  - lock_session
  - suspend_session
- command_note
  nullable

response_payload:
- session_id
- previous_state
- current_state
- transition_allowed_flag
- rejection_reason_codes
- updated_at

# ============================================================
# 6. SESSION DETAIL API
# ============================================================

endpoint_intent:
- read session detail for operations UI

request_payload:
- actor_civilization_id
- session_id

response_payload:
- session_id
- session_title
- session_state
- stream_principal_civilization_id
- stream_principal_type
- ownership_mode
- primary_rights_holder_civilization_id
- primary_revenue_beneficiary_civilization_id
- scheduled_start_at
  nullable
- actual_start_at
  nullable
- actual_end_at
  nullable
- archive_generation_status
- rights_review_status
- external_publish_status
- monetization_open_flag
- settlement_status
- suspension_flag
- lock_flag
- performers:
  - performer_participation_id
  - performer_subject_kind
  - performer_civilization_id
    nullable
  - performer_persona_id
    nullable
  - performer_ai_robot_id
    nullable
  - performer_role
  - performer_participation_status
- latest_governance_event_id
  nullable

