# ============================================================
# PERSONA SOCIETY LINK
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for persona society links.

# 2. INFRASTRUCTURE SCOPE

- society-link storage
- role-assignment persistence
- affiliation/participation storage
- society-link audit sink

# 3. INFRASTRUCTURE RULES

- role assignment must persist before downstream publication
- affiliation state must preserve target scope durably
- contradictory role evidence must remain durable
- infrastructure ambiguity must fail closed

