# ============================================================
# EVENT DEDUPLICATION POLICY
# ============================================================

status: canonical
scope: civilization.policy.event_deduplication
component: event-deduplication-policy
owner: Boss
prepared_by: Zero


# PURPOSE

Ensures that duplicate events do not produce repeated state mutation.


# DUPLICATE SOURCES

Duplicate events may occur due to

network retry  
dispatcher retry  
worker restart  
message re-delivery


# IDENTIFICATION

Events are uniquely identified by

event_id

Optionally verified using

event_hash


# POLICY RULES

If duplicate event detected

reject execution


Duplicate detection may occur at

ingestion layer  
dispatcher layer  
execution layer


# SAFETY PRINCIPLE

Event execution must be idempotent.


# END
# ============================================================
