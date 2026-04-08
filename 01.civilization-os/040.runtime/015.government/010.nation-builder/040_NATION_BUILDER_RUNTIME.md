# ============================================================
# NATION BUILDER
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for nation builder execution.

# 2. RUNTIME STATE

- active nation-builder session
- policy-bundle resolution state
- validation execution state
- publication gate state

# 3. EXECUTION RULES

- one active builder session per nation and builder scope
- required policy bundles must resolve before validation
- publication must remain blocked until all required validations pass
- ambiguous builder session state is prohibited

# 4. FAILURE HANDLING

- missing required policy bundle -> reject
- validation failure -> reject publication
- ambiguous builder session -> fail closed

