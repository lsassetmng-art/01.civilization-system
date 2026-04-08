# ============================================================
# NATION DETAIL SET
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for nation detail sets.

# 2. RUNTIME STATE

- active detail-profile state
- administrative/institutional bundle resolution
- completeness validation state
- publication gate state

# 3. EXECUTION RULES

- one active detail profile per nation/version decision point
- required bundles must resolve before completeness evaluation
- publication requires explicit completeness and validation status
- incomplete detail publication is prohibited

# 4. FAILURE HANDLING

- missing required detail bundle -> reject
- invalid nation identity binding -> reject
- ambiguous publication/completeness state -> fail closed

