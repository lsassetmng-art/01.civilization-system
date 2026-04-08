# ============================================================
# NATION BUILDER
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for nation builder systems.

# 2. OPERATIONAL CONTROLS

- builder-session review
- policy-bundle review
- validation inspection
- publication-state review

# 3. FAILURE OPERATIONS

- missing required bundle -> reject
- validation failure -> block publication
- ambiguous builder session -> fail closed

