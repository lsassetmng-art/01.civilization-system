# ============================================================
# BUSINESS PERSONA EFFECT VALIDATION MATRIX FIXED
# ============================================================

status: canonical
layer: integration
domain: business-persona-connection
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed validation matrix
for BusinessOS -> PersonaOS effect event integration.

# ============================================================
# 1. COMMON DECISIONS
# ============================================================

possible_decisions:
- accept_for_processing
- apply
- reject
- ignore_duplicate
- fail_processing

meaning:
accept_for_processing:
PersonaOS accepted the event into growth_events
but has not yet completed state reflection.

apply:
PersonaOS completed growth_core_state reflection.

reject:
The event is invalid, unauthorized, or not acceptable.

ignore_duplicate:
The event_id already exists and must not be applied twice.

fail_processing:
The event was accepted into growth_events
but PersonaOS processing failed before final apply.

# ============================================================
# 2. BUSINESSOS SEND-SIDE VALIDATION
# ============================================================

send_side_validation:

- condition: event_id missing
  decision: reject
  code: invalid_payload

- condition: user_id missing
  decision: reject
  code: invalid_payload

- condition: persona_id missing
  decision: reject
  code: invalid_payload

- condition: company_id missing
  decision: reject
  code: invalid_payload

- condition: app_namespace != BusinessOS
  decision: reject
  code: invalid_payload

- condition: event_type not in fixed event_type set
  decision: reject
  code: invalid_event_type

- condition: magnitude is not integer
  decision: reject
  code: invalid_magnitude

- condition: magnitude < -5 or magnitude > 5
  decision: reject
  code: invalid_magnitude

- condition: context missing
  decision: reject
  code: invalid_payload

- condition: required context key missing
  decision: reject
  code: invalid_payload

- condition: payload valid
  decision: accept_for_processing
  code: accepted_for_processing

# ============================================================
# 3. PERSONAOS RECEIVE-SIDE VALIDATION
# ============================================================

receive_side_validation:

- condition: caller not trusted BusinessOS integration caller
  decision: reject
  code: unauthorized_caller

- condition: persona_id invalid or not found
  decision: reject
  code: invalid_persona_id

- condition: user scope invalid for persona relation
  decision: reject
  code: invalid_user_scope

- condition: event_type invalid
  decision: reject
  code: invalid_event_type

- condition: payload malformed
  decision: reject
  code: invalid_payload

- condition: all receive-side checks valid
  decision: accept_for_processing
  code: accepted_for_processing

# ============================================================
# 4. DUPLICATE VALIDATION
# ============================================================

duplicate_validation:

- condition: event_id already exists and already processed
  decision: ignore_duplicate
  code: duplicate_ignored

- condition: event_id already exists and not yet processed
  decision: ignore_duplicate
  code: duplicate_ignored

- condition: event_id not found
  decision: accept_for_processing
  code: accepted_for_processing

# ============================================================
# 5. GROWTH_EVENTS INSERT VALIDATION
# ============================================================

growth_events_insert_validation:

- condition: event accepted and storage succeeds
  decision: accept_for_processing
  code: accepted_for_processing

- condition: event accepted but storage fails
  decision: fail_processing
  code: processing_failed

# ============================================================
# 6. GROWTH_CORE_STATE APPLY VALIDATION
# ============================================================

growth_core_state_apply_validation:

- condition: growth_events row exists and is_processed = false
  decision: apply
  code: applied

- condition: growth_events row exists but processing logic fails
  decision: fail_processing
  code: processing_failed

- condition: growth_events row already processed
  decision: ignore_duplicate
  code: duplicate_ignored

# ============================================================
# 7. FIXED APPLY TARGET VALIDATION
# ============================================================

apply_target_validation:

- condition: trust target available
  result: apply_to_trust

- condition: familiarity target available
  result: apply_to_familiarity

- condition: relationship_score target available
  result: apply_to_relationship_score

- condition: last_interaction_at available
  result: update_last_interaction_at

rule:
Initial implementation must limit apply targets to:
- trust
- familiarity
- relationship_score
- last_interaction_at

# ============================================================
# 8. EVENT TYPE TO APPLY INTENT MATRIX
# ============================================================

event_apply_matrix:

- event_type: business_reliable_support
  apply: yes
  trust: positive
  familiarity: slight_positive
  relationship_score: positive

- event_type: business_continuous_support
  apply: yes
  trust: slight_positive
  familiarity: positive
  relationship_score: positive

- event_type: business_positive_outcome
  apply: yes
  trust: positive
  familiarity: neutral
  relationship_score: positive

- event_type: business_safe_completion
  apply: yes
  trust: slight_positive
  familiarity: neutral
  relationship_score: slight_positive

- event_type: business_helpful_advisory
  apply: yes
  trust: slight_positive
  familiarity: slight_positive
  relationship_score: slight_positive

- event_type: business_trust_decrease
  apply: yes
  trust: negative
  familiarity: neutral
  relationship_score: negative

- event_type: business_failed_commitment
  apply: yes
  trust: negative
  familiarity: slight_negative
  relationship_score: negative

- event_type: business_interaction_gap
  apply: yes
  trust: slight_negative
  familiarity: negative
  relationship_score: slight_negative

# ============================================================
# 9. MAGNITUDE VALIDATION MATRIX
# ============================================================

magnitude_validation:

- condition: magnitude = -3
  decision: valid

- condition: magnitude = -1
  decision: valid

- condition: magnitude = 1
  decision: valid

- condition: magnitude = 3
  decision: valid

- condition: other values inside -5..5
  decision: valid_but_not_recommended_initially

- condition: outside -5..5
  decision: reject
  code: invalid_magnitude

# ============================================================
# 10. CONTEXT VALIDATION MATRIX
# ============================================================

context_validation:

required_context_keys:
- source_system
- source_domain
- worker_id
- activity_mode
- business_action_type
- result_class
- occurred_at

- condition: source_system != business-os
  decision: reject
  code: invalid_effect_source

- condition: source_domain missing
  decision: reject
  code: invalid_payload

- condition: worker_id missing
  decision: reject
  code: invalid_payload

- condition: activity_mode invalid
  decision: reject
  code: invalid_payload

- condition: result_class invalid
  decision: reject
  code: invalid_payload

- condition: context valid
  decision: accept_for_processing
  code: accepted_for_processing

# ============================================================
# 11. AUTHORIZATION MATRIX
# ============================================================

authorization_matrix:

- condition: caller is official BusinessOS integration caller
  decision: accept_for_processing
  code: accepted_for_processing

- condition: caller is not trusted
  decision: reject
  code: unauthorized_caller

# ============================================================
# 12. PROCESSING RESULT MATRIX
# ============================================================

processing_result_matrix:

- condition: growth_events inserted and apply not yet run
  decision: accept_for_processing
  code: accepted_for_processing

- condition: growth_events inserted and apply succeeded
  decision: apply
  code: applied

- condition: growth_events inserted but apply failed
  decision: fail_processing
  code: processing_failed

- condition: duplicate event_id detected
  decision: ignore_duplicate
  code: duplicate_ignored

# ============================================================
# 13. FIXED REJECTION REASONS
# ============================================================

fixed_rejection_reasons:
- invalid_effect_source
- invalid_event_type
- invalid_magnitude
- invalid_persona_id
- invalid_user_scope
- invalid_payload
- unauthorized_caller

# ============================================================
# 14. FIXED SUCCESS CODES
# ============================================================

fixed_success_codes:
- accepted_for_processing
- applied
- duplicate_ignored

# ============================================================
# 15. OFFICIAL SUMMARY
# ============================================================

BusinessOS -> PersonaOS effect integration
must result in exactly one of:

- accepted_for_processing
- applied
- reject
- ignore_duplicate
- fail_processing

Initial implementation is fixed to:
- accept into growth_events
- apply into growth_core_state
- prevent duplicate event_id application
- reject invalid or unauthorized effect events
