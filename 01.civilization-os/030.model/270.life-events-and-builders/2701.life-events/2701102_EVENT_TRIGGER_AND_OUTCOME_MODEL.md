# ============================================================
# EVENT TRIGGER AND OUTCOME MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: event-trigger-and-outcome

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical trigger and outcome structure
for life stage events.


# ============================================================
# 2. TRIGGER FIELDS
# ============================================================

Recommended trigger fields:
- trigger_type
- trigger_source
- required_age_band
- required_state
- required_relationship_state
- required_facility_presence
- required_funds_state
- required_score_state


# ============================================================
# 3. OUTCOME FIELDS
# ============================================================

Recommended outcome fields:
- outcome_type
- score_change_set
- growth_effect_set
- relationship_change_set
- facility_change_set
- status_change_set
- followup_event_set


# ============================================================
# 4. FINAL RULE
# ============================================================

Trigger and outcome must remain explicit
and not be silently implied.
