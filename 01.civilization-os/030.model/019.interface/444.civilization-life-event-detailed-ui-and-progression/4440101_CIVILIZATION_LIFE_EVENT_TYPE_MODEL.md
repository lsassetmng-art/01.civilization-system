# ============================================================
# CIVILIZATION LIFE EVENT TYPE MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-type

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT TYPES
# ============================================================

civilization_life_event_types:
- schooling_event
- qualification_event
- employment_event
- promotion_event
- transfer_event
- marriage_event
- childbirth_event
- migration_event
- housing_event
- illness_event
- recovery_event
- poverty_event
- welfare_event
- bankruptcy_event
- crime_event
- arrest_event
- trial_event
- political_participation_event
- public_office_entry_event
- military_service_event
- retirement_event
- death_progression_event


# ============================================================
# 2. FINAL RULE
# ============================================================

Life events
must use explicit event type classification.
