# ============================================================
# LOGIN BONUS
# FLOW
# ============================================================

status: draft
layer: flow
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for login bonus handling.

# 2. TRIGGER

- login event
- campaign review cycle
- reset execution request

# 3. MAIN FLOW

1. resolve active login_bonus_campaign
2. resolve day rule for subject progression
3. validate claim state and reset rule
4. create reward grant for eligible day
5. persist claim state
6. emit audit trace

# 4. FAILURE FLOW

- missing active campaign -> reject
- duplicate same-day claim -> reject
- ambiguous reset state -> fail closed

# 5. OUTPUT

- claim state
- reward grant trigger
- audit record

