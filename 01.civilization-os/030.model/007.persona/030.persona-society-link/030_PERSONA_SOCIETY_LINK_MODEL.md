# ============================================================
# PERSONA SOCIETY LINK
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for links between persona and society structures.

# 2. CORE ENTITIES

- society_link
- role_assignment
- affiliation_state
- participation_state

# 3. STATE MODEL

society_link:
- link_id
- persona_id
- target_society_scope
- link_type_code
- link_status

role_assignment:
- assignment_id
- persona_id
- role_code
- target_scope
- assignment_status

affiliation_state:
- affiliation_id
- persona_id
- organization_scope
- affiliation_status
- effective_from

participation_state:
- participation_id
- persona_id
- activity_scope
- participation_level
- participation_status

# 4. INTEGRITY RULES

- each active role assignment must have explicit target scope
- affiliation must preserve organization scope
- society link type must be explicit
- contradictory active role assignments are prohibited

