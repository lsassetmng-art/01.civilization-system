# ============================================================
# PERSONA SOCIETY LINK
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona society links.

# 2. INTEGRATION SCOPE

- society link to governance/society systems
- role assignment to authority consumers
- affiliation and participation to activity systems
- society-link audit to operations

# 3. INTEGRATION RULES

- role and affiliation handoff must preserve target scope
- contradictory active assignments must not cross boundary
- participation handoff requires explicit activity scope
- rejected assignment must preserve reason state

