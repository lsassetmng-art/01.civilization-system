# ============================================================
# CIVILIZATION LIFE EVENT TRIGGER AND ELIGIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-trigger-and-eligibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRIGGER SOURCES
# ============================================================

trigger_sources:
- age_progression
- household_state_change
- school_progression
- qualification_progression
- company_progression
- health_state_change
- housing_state_change
- nation_policy
- financial_state_change
- criminal_or_police_state
- military_rule
- political_opportunity
- public_notice


# ============================================================
# 2. ELIGIBILITY AXES
# ============================================================

eligibility_axes:
- age
- actor_class
- nation_rule
- city_rule
- household_state
- financial_state
- school_status
- qualification_status
- employment_status
- health_status
- public_record_state
- criminal_record_state
- office_eligibility_state


# ============================================================
# 3. FINAL RULE
# ============================================================

Life events
must distinguish trigger from eligibility.
