# ============================================================
# CITY BUILDER
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for city builder systems.

# 2. INFRASTRUCTURE SCOPE

- builder-session storage
- zoning-bundle persistence
- validation result storage
- city publication path

# 3. INFRASTRUCTURE RULES

- zoning bundle must be durably resolvable
- validation state must persist before publication
- city publication must preserve city and nation identity
- infrastructure ambiguity must fail closed

