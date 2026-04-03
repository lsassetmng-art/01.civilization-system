# ============================================================
# SCHOOL EVENT AND CEREMONY MODEL
# ============================================================

status: canonical
layer: model
scope: education-work-ui
component: school-event-and-ceremony

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT TYPES
# ============================================================

event_types:
- entrance_ceremony
- term_opening
- sports_festival
- cultural_festival
- field_learning_trip
- legal_studies_day
- business_presentation_day
- arts_showcase
- military_preparation_event
- parent_visit_day
- graduation_ceremony
- guidance_season_event


# ============================================================
# 2. EVENT FIELDS
# ============================================================

event_fields:
- event_id
- event_type
- event_load
- staffing_requirement
- budget_requirement
- prestige_effect
- community_visibility
- discipline_risk
- narrative_weight


# ============================================================
# 3. EVENT ACTIONS
# ============================================================

event_actions:
- prepare_event
- assign_event_staff
- scale_event_up
- reduce_event_scope
- add_ceremonial_elements
- add_guidance_elements
- add_public_showcase_elements
- cancel_or_postpone_event
- attach_album_or_history_output


# ============================================================
# 4. FINAL RULE
# ============================================================

School events must reveal
what each school publicly celebrates
and what kind of citizen it tries to present.
