# ============================================================
# CITY BUILDER
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for city builder execution.

# 2. RUNTIME STATE

- active city-builder session
- zoning-bundle resolution state
- validation execution state
- publication gate state

# 3. EXECUTION RULES

- one active builder session per city and builder scope
- zoning bundle must validate before publication
- city publication requires explicit nation scope
- ambiguous builder session is prohibited

# 4. FAILURE HANDLING

- missing nation scope -> reject
- invalid zoning bundle -> reject
- ambiguous builder session -> fail closed

