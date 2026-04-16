# ============================================================
# BUSINESS TO PERSONA GROWTH EVENTS MAPPING FIXED
# ============================================================

status: canonical
layer: integration
domain: business-persona-connection
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed initial mapping
from BusinessOS-origin effects
to PersonaOS existing real database structures.

target_persona_schema:
- personaos.growth_events
- personaos.growth_core_state

design_rule:
For the initial implementation-preparation phase,
BusinessOS must map business-origin effects
into PersonaOS existing tables first,
before introducing new dedicated Persona-side tables.

# ============================================================
# 1. FIXED TARGET TABLES
# ============================================================

primary_event_sink:
- personaos.growth_events

primary_state_sink:
- personaos.growth_core_state

existing_growth_core_fields_used:
- trust
- familiarity
- relationship_score
- last_interaction_at

notes:
Existing fields affinity and burnout_level remain available,
but are not the primary minimum target for the first business-origin mapping.

# ============================================================
# 2. BUSINESS ORIGIN EFFECT PAYLOAD
# ============================================================

fixed_payload_shape:
{
  "event_id": "string",
  "user_id": "string",
  "persona_id": "string",
  "company_id": "string",
  "app_namespace": "BusinessOS",
  "event_type": "string",
  "magnitude": 0,
  "context": {
    "source_system": "business-os",
    "source_domain": "business-ai-worker",
    "worker_id": "string",
    "lending_id": "string",
    "activity_mode": "string",
    "world_scope": "string",
    "specialty": "string",
    "business_action_type": "string",
    "result_class": "string",
    "review_status": "string|null",
    "approval_status": "string|null",
    "occurred_at": "ISO-8601"
  },
  "occurred_at": "ISO-8601"
}

# ============================================================
# 3. FIXED MAPPING TO personaos.growth_events
# ============================================================

growth_events_mapping:
- event_id                -> event_id
- user_id                 -> user_id
- persona_id              -> persona_id
- app_namespace           -> app_namespace
- event_type              -> event_type
- magnitude               -> magnitude
- context                 -> context
- occurred_at             -> occurred_at
- received_at             -> received_at = now()
- is_processed            -> false
- processed_at            -> null

fixed_app_namespace:
- BusinessOS

# ============================================================
# 4. FIXED EVENT TYPE SET
# ============================================================

initial_fixed_event_types:
- business_reliable_support
- business_continuous_support
- business_positive_outcome
- business_safe_completion
- business_helpful_advisory
- business_trust_decrease
- business_failed_commitment
- business_interaction_gap

event_type_meaning:

business_reliable_support:
Used when BusinessOS-side governed support was performed reliably.

business_continuous_support:
Used when repeated stable support has accumulated.

business_positive_outcome:
Used when a governed business action ended positively.

business_safe_completion:
Used when a task completed safely within policy.

business_helpful_advisory:
Used when advisory output was useful and non-problematic.

business_trust_decrease:
Used when business-side behavior should reduce trust tendency.

business_failed_commitment:
Used when promised or expected support failed materially.

business_interaction_gap:
Used when continuity weakened due to lack of business interaction.

# ============================================================
# 5. FIXED MAGNITUDE RULE
# ============================================================

magnitude_scale:
-5 to +5

recommended_initial_mapping:
- very_negative: -5
- negative: -3
- slight_negative: -1
- neutral: 0
- slight_positive: 1
- positive: 3
- very_positive: 5

rule:
Initial implementation may use only:
- -3
- -1
- 1
- 3

to reduce overfitting.

# ============================================================
# 6. FIXED STATE APPLY TARGET
# ============================================================

growth_core_state_apply_targets:
- trust
- familiarity
- relationship_score
- last_interaction_at

initial_apply_rule:
PersonaOS consumes unprocessed growth_events
and reflects the result into growth_core_state.

BusinessOS does not directly update growth_core_state.

# ============================================================
# 7. FIXED APPLY INTENT
# ============================================================

business_reliable_support:
- trust: positive
- familiarity: slight_positive
- relationship_score: positive

business_continuous_support:
- trust: slight_positive
- familiarity: positive
- relationship_score: positive

business_positive_outcome:
- trust: positive
- familiarity: neutral
- relationship_score: positive

business_safe_completion:
- trust: slight_positive
- familiarity: neutral
- relationship_score: slight_positive

business_helpful_advisory:
- trust: slight_positive
- familiarity: slight_positive
- relationship_score: slight_positive

business_trust_decrease:
- trust: negative
- familiarity: neutral
- relationship_score: negative

business_failed_commitment:
- trust: negative
- familiarity: slight_negative
- relationship_score: negative

business_interaction_gap:
- trust: slight_negative
- familiarity: negative
- relationship_score: slight_negative

# ============================================================
# 8. FIXED CONTEXT KEYS
# ============================================================

required_context_keys:
- source_system
- source_domain
- company_id
- worker_id
- activity_mode
- business_action_type
- result_class
- occurred_at

optional_context_keys:
- lending_id
- world_scope
- specialty
- review_status
- approval_status
- target_app_surface
- output_handoff_id

# ============================================================
# 9. FIXED BUSINESS ACTION TYPE EXAMPLES
# ============================================================

business_action_type_examples:
- advisory_completion
- execution_completion
- embedded_app_assistance
- marketplace_listing_preparation
- night_operation_completion
- bugfix_support_result
- testing_support_result

# ============================================================
# 10. FIXED RESULT CLASS EXAMPLES
# ============================================================

result_class_examples:
- safe_success
- helpful_success
- neutral_completion
- blocked_by_review
- blocked_by_approval
- failed
- policy_violation_prevented

# ============================================================
# 11. PROCESSING RULE
# ============================================================

processing_rule:
1. BusinessOS emits effect payload
2. PersonaOS inserts into personaos.growth_events
3. PersonaOS processing logic reads unprocessed records
4. PersonaOS applies state deltas to growth_core_state
5. PersonaOS marks:
   - is_processed = true
   - processed_at = now()

# ============================================================
# 12. INITIAL NO-NEW-TABLE RULE
# ============================================================

rule:
The first implementation-preparation path must prefer:
- growth_events
- growth_core_state

over creating new dedicated persona-side tables.

rule:
Dedicated relation tables may be introduced later
only if existing structures become insufficient.

# ============================================================
# 13. OFFICIAL SUMMARY
# ============================================================

For the initial implementation-preparation phase,
BusinessOS-origin effects are fixed to map into:

- personaos.growth_events as the event sink
- personaos.growth_core_state as the canonical state sink

This allows implementation to start
without adding large new Persona-side schema first.
