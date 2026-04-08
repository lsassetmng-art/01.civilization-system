# ============================================================
# REWARD DEFINITION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for reward definitions.

# 2. SECURITY SCOPE

- definition/version integrity
- source/condition/value integrity
- definition update authorization
- reward-definition audit protection

# 3. SECURITY RULES

- version source must be attributable
- source/condition/value mutation requires authorization
- incompatible definition state must be detectable
- audit output must preserve actor attribution

