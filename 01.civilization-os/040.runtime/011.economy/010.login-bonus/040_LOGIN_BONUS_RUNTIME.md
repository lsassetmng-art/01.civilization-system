# ============================================================
# LOGIN BONUS
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for login bonus processing.

# 2. RUNTIME STATE

- active campaign state
- day-rule resolution state
- claim progression state
- reset-rule execution state

# 3. EXECUTION RULES

- one subject has one active claim progression per campaign
- day-rule resolution must complete before grant trigger
- reset execution must be explicit
- duplicate same-day claim is prohibited

# 4. FAILURE HANDLING

- missing active campaign -> reject
- duplicate same-day claim -> reject
- ambiguous reset state -> fail closed

