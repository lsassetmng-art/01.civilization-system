# ============================================================
# EVENT RULE
# ============================================================

status: canonical
layer: rule
component: event-rule

owner: Boss
prepared_by: Zero


# EVENT PRINCIPLE

Events represent accepted system facts.


# EVENT STRUCTURE

event_id
event_type
event_version
issued_at
source_command
payload


# EVENT IMMUTABILITY

Events must be immutable.

Historical events must never be rewritten.


# FINAL RULE

System state must be derived from event history.

