# ============================================================
# INITIAL NATION AND CITY SET
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for initial nation and city sets.

# 2. INFRASTRUCTURE SCOPE

- set storage
- assignment persistence
- publication path
- initial-set audit sink

# 3. INFRASTRUCTURE RULES

- set and assignment identities must remain durable
- completeness status must persist before publication
- publication must preserve world/nation/city identity
- infrastructure ambiguity must fail closed

