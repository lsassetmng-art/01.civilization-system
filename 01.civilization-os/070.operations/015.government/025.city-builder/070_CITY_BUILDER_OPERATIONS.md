# ============================================================
# CITY BUILDER
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for city builder systems.

# 2. OPERATIONAL CONTROLS

- builder-session review
- zoning review
- validation inspection
- publication-state review

# 3. FAILURE OPERATIONS

- missing nation scope -> reject
- invalid zoning bundle -> block
- ambiguous builder session -> fail closed

