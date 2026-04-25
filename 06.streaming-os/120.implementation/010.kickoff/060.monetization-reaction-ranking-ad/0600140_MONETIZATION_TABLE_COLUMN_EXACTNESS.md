# ============================================================
# K6 MONETIZATION TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: monetization
prepared_by: Zero
owner: Boss

tables:
- tip_events
- tip_beneficiary_resolutions
- tip_currency_conversions
- auto_tip_emotional_contexts
- ai_auto_tipping_profiles
- ai_auto_tipping_emotion_states
- ai_auto_tipping_limit_states
- ai_auto_tipping_restriction_states
- ai_auto_tipping_stop_states

tip_events_required_columns:
- tip_event_id
- target_type
- target_id
- tip_amount
- tip_currency_code
- tip_mode
- processing_state
- created_at
- updated_at

tip_events_optional_columns:
- payer_principal_id
- beneficiary_principal_id
- emotional_context_code
- note

tip_beneficiary_resolutions_required_columns:
- tip_beneficiary_resolution_id
- tip_event_id
- resolution_state
- updated_at

tip_currency_conversions_required_columns:
- tip_currency_conversion_id
- tip_event_id
- conversion_state
- updated_at

auto_tip_emotional_contexts_required_columns:
- auto_tip_emotional_context_id
- principal_id
- emotional_context_code
- updated_at

ai_auto_tipping_profiles_required_columns:
- ai_auto_tipping_profile_id
- principal_id
- profile_state
- updated_at

ai_auto_tipping_emotion_states_required_columns:
- ai_auto_tipping_emotion_state_id
- principal_id
- emotion_state
- updated_at

ai_auto_tipping_limit_states_required_columns:
- ai_auto_tipping_limit_state_id
- principal_id
- limit_state
- updated_at

ai_auto_tipping_restriction_states_required_columns:
- ai_auto_tipping_restriction_state_id
- principal_id
- restriction_state
- updated_at

ai_auto_tipping_stop_states_required_columns:
- ai_auto_tipping_stop_state_id
- principal_id
- stop_state
- updated_at

recommended_constraints:
- fk(tip_event_id) across monetization supplementary tables
- check(tip_mode in allowed set)
- check(processing_state in allowed set)
- check(resolution_state in allowed set)
- check(conversion_state in allowed set)
- check(profile_state in allowed set)
- check(emotion_state in allowed set)
- check(limit_state in allowed set)
- check(restriction_state in allowed set)
- check(stop_state in allowed set)

recommended_indexes:
- idx_tip_events_target
- idx_tip_events_beneficiary_principal_id
- idx_tip_events_processing_state
- idx_tip_events_created_at
- idx_tip_beneficiary_resolutions_tip_event_id
- idx_tip_currency_conversions_tip_event_id
- principal_id indexes across auto-tip profile/state tables

semantic_notes:
- tip event remains canonical monetary action object
- beneficiary resolution remains derivative/support object
- currency conversion remains derivative/support object
- auto-tip state families remain principal-scoped control-plane objects, not public event objects

open_for_sql_precision_only:
- exact SQL type names
- exact money/decimal type choice
- exact fk actions
- exact default clauses
- exact split between note/text/json
