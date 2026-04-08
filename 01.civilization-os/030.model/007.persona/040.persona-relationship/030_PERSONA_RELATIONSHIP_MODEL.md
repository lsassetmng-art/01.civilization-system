# ============================================================
# PERSONA RELATIONSHIP
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona relationship structures.

# 2. CORE ENTITIES

- persona_relationship
- relationship_party
- relationship_rule
- relationship_status

# 3. STATE MODEL

persona_relationship:
- persona_relationship_id
- relationship_code
- relationship_scope
- relationship_type_code
- relationship_status

relationship_party:
- relationship_party_id
- persona_relationship_id
- party_scope
- party_role_code
- party_status

relationship_rule:
- relationship_rule_id
- persona_relationship_id
- rule_type_code
- rule_value
- rule_status

relationship_status:
- relationship_status_id
- persona_relationship_id
- active_flag
- suspended_flag
- changed_at

# 4. INTEGRITY RULES

- relationship party and rule must belong to one relationship
- party scope must be explicit
- active and suspended state must be explicit
- hidden relationship mutation is prohibited

