# ============================================================
# INITIAL NATION AND CITY SET
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for initial nation and city sets.

# 2. RUNTIME STATE

- active initial-set context
- nation/city assignment resolution state
- completeness validation state
- publication state

# 3. EXECUTION RULES

- initial nation and city identities must resolve explicitly before publication
- completeness validation must finish before publication
- publication state must preserve set version and world scope
- partial initial-set publication is prohibited

# 4. FAILURE HANDLING

- incomplete city assignment -> reject
- invalid nation/city identity binding -> reject
- ambiguous set publication state -> fail closed

