# ============================================================
# RELATIONSHIP
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona relationships.

# 2. CORE ENTITIES

- relationship_record
- relationship_party
- relationship_status
- relationship_event

# 3. STATE MODEL

relationship_record:
- relationship_id
- relationship_type_code
- relationship_scope
- relationship_status

relationship_party:
- party_id
- relationship_id
- persona_id
- party_role_code
- party_status

relationship_status:
- status_id
- relationship_id
- status_code
- effective_from
- effective_to

relationship_event:
- relationship_event_id
- relationship_id
- event_type_code
- occurred_at
- event_status

# 4. INTEGRITY RULES

- relationship must have explicit party set
- party role must be explicit
- status windows must not overlap incompatibly
- hidden relationship mutation without event is prohibited

