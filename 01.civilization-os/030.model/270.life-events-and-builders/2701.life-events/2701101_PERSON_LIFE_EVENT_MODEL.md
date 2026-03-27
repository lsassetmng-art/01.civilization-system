# ============================================================
# PERSON LIFE EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: person-life-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical person life event model.


# ============================================================
# 2. CORE FIELDS
# ============================================================

Recommended fields:
- person_life_event_id
- person_ref
- event_family
- event_type
- event_state
- trigger_ref
- prerequisite_state
- started_at
- expected_end_at
- ended_at
- outcome_type
- related_actor_ref_set
- related_facility_ref_set
- related_company_ref_set
- cost_profile
- effect_profile
- notes


# ============================================================
# 3. EVENT STATE
# ============================================================

Recommended states:
- available
- pending
- active
- paused
- completed
- failed
- cancelled


# ============================================================
# 4. FINAL RULE
# ============================================================

A person life event must preserve
both event process and outcome.
