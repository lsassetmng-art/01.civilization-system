# ============================================================
# NATION DETAIL SET
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for nation detail sets.

# 2. INFRASTRUCTURE SCOPE

- detail-profile storage
- bundle persistence
- publication path
- detail audit sink

# 3. INFRASTRUCTURE RULES

- bundle and profile identity must remain durable
- completeness and publication state must persist before handoff
- publication must preserve nation identity and version
- infrastructure ambiguity must fail closed

