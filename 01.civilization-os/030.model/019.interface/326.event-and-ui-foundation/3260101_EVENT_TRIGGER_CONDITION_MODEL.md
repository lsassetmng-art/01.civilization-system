# ============================================================
# EVENT TRIGGER CONDITION MODEL
# ============================================================

status: canonical
layer: model
scope: event-and-ui-foundation
component: event-trigger-condition

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRIGGER FIELDS
# ============================================================

trigger_fields:
- event_id
- event_class
- trigger_type
- trigger_source
- trigger_scope
- required_flags
- forbidden_flags
- cooldown_rule
- recurrence_rule
- priority_level


# ============================================================
# 2. TRIGGER TYPES
# ============================================================

trigger_types:
- age_threshold
- status_change
- role_change
- resource_threshold
- relationship_change
- calendar_date
- location_entry
- decision_followup
- hidden_probability
- crisis_threshold
- regime_transition


# ============================================================
# 3. FINAL RULE
# ============================================================

Trigger definition must explain
why an event became eligible
before any UI is shown.
