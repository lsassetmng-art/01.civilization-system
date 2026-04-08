# ============================================================
# PERSONA SOCIETY LINK
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona society links.

# 2. POLICY RULES

- role assignment requires explicit target scope
- affiliation status must be explicit
- contradictory active role assignments are prohibited
- hidden society-link mutation is prohibited

# 3. FAILURE RULE

- missing target scope must reject
- contradictory active role assignment must reject
- ambiguous affiliation state must reject

