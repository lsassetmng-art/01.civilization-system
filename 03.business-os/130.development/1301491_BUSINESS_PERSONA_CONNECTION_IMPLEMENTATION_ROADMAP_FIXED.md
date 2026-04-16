# ============================================================
# BUSINESS PERSONA CONNECTION IMPLEMENTATION ROADMAP FIXED
# ============================================================

status: canonical
layer: development
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed implementation roadmap
for BusinessOS -> PersonaOS connection,
using the uploaded Persona-side real DB as the first landing path.

# ============================================================
# 1. ROADMAP PRINCIPLE
# ============================================================

principle:
Prefer existing real Persona-side DB structures first.

principle:
Do not begin by adding new Persona-side tables
when growth_events and growth_core_state are already sufficient
for the first implementation-preparation path.

principle:
Fix transport, validation, idempotency, and apply path
before adding richer Persona-side relation models.

# ============================================================
# 2. FIXED PHASE ORDER
# ============================================================

fixed_phase_order:
- phase_1_effect_payload_and_auth
- phase_2_event_insert_path
- phase_3_growth_apply_path
- phase_4_duplicate_and_failure_hardening
- phase_5_optional_persona_table_extension

# ============================================================
# 3. PHASE 1 EFFECT PAYLOAD AND AUTH
# ============================================================

phase_name:
phase_1_effect_payload_and_auth

goal:
Fix exact payload and trusted-caller path.

must_complete:
- exact effect event payload fixed
- exact validation matrix fixed
- trusted BusinessOS caller rule fixed
- event_id idempotency rule fixed
- event_type and magnitude set fixed

exit_criteria:
- BusinessOS can form canonical payload
- PersonaOS can validate payload shape
- unauthorized caller is rejected
- invalid event_type is rejected
- invalid magnitude is rejected

# ============================================================
# 4. PHASE 2 EVENT INSERT PATH
# ============================================================

phase_name:
phase_2_event_insert_path

goal:
Land valid BusinessOS-origin events into personaos.growth_events.

must_complete:
- request endpoint
- payload validation
- growth_events insert mapping
- received_at population
- is_processed initial false
- processed_at initial null

target_table:
- personaos.growth_events

exit_criteria:
- valid event stored in growth_events
- duplicate event_id does not reinsert
- rejected payload does not reach storage

# ============================================================
# 5. PHASE 3 GROWTH APPLY PATH
# ============================================================

phase_name:
phase_3_growth_apply_path

goal:
Apply accepted events into personaos.growth_core_state.

must_complete:
- unprocessed event reader
- event_type to state-apply mapping
- trust apply
- familiarity apply
- relationship_score apply
- last_interaction_at update
- is_processed true update
- processed_at update

target_table:
- personaos.growth_core_state

exit_criteria:
- accepted event updates growth_core_state
- processed flag is updated
- same event does not apply twice

# ============================================================
# 6. PHASE 4 DUPLICATE AND FAILURE HARDENING
# ============================================================

phase_name:
phase_4_duplicate_and_failure_hardening

goal:
Make connection path reliable and safe.

must_complete:
- duplicate_ignored behavior
- processing_failed behavior
- retry or investigation strategy
- audit visibility
- invalid payload rejection logging
- invalid_effect_source handling

exit_criteria:
- duplicate event_id safely ignored
- apply failures are visible
- rejected events are explainable
- no silent double-apply occurs

# ============================================================
# 7. PHASE 5 OPTIONAL PERSONA TABLE EXTENSION
# ============================================================

phase_name:
phase_5_optional_persona_table_extension

goal:
Add richer Persona-side structures only if existing tables become insufficient.

later_candidates:
- persona_company_relation_state
- persona_reliability_perception
- business_effect_receipt
- business_effect_apply_audit

rule:
This phase is optional
and must not block the first implementation path.

exit_criteria:
- only start if real gaps are proven
- not started merely because richer design exists on paper

# ============================================================
# 8. FIXED BUILD ORDER INSIDE EACH PHASE
# ============================================================

build_order_inside_phase:
1. payload/interface
2. validation
3. storage mapping
4. apply logic
5. duplicate/idempotency logic
6. audit/monitoring hooks

rule:
Do not begin with UI.
Do not begin with new Persona-side tables.

# ============================================================
# 9. FIXED TEST GATES
# ============================================================

gate_1_payload:
- valid payload accepted
- invalid payload rejected
- unauthorized caller rejected

gate_2_insert:
- growth_events insert succeeds
- duplicate event_id ignored
- required context keys validated

gate_3_apply:
- trust updated
- familiarity updated
- relationship_score updated
- last_interaction_at updated
- processed flags updated

gate_4_hardening:
- duplicate safe
- processing failure visible
- invalid source visible

# ============================================================
# 10. STOP CONDITIONS
# ============================================================

must_stop_and_fix_before_next_phase_when:
- event_id idempotency is not guaranteed
- BusinessOS payload diverges from fixed contract
- Persona insert mapping diverges from growth_events real columns
- growth_core_state apply writes to wrong fields
- duplicate event causes double state mutation
- unauthorized caller can insert events

# ============================================================
# 11. OFFICIAL SUMMARY
# ============================================================

The fixed implementation order for BusinessOS -> PersonaOS connection is:

1. exact payload and authorization
2. growth_events insert path
3. growth_core_state apply path
4. duplicate and failure hardening
5. optional Persona-side richer tables only if needed

This roadmap is intentionally real-DB-first
and avoids premature new schema expansion.
