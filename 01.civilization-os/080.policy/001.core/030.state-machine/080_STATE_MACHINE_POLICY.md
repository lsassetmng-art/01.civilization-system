# ============================================================
# STATE MACHINE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for state transition control.

# 2. POLICY RULES

- transition edge must be explicit before use
- trigger authority must be validated before transition
- terminal state cannot transition without declared exception
- partial state transition is prohibited

# 3. FAILURE RULE

- missing edge must reject
- unauthorized trigger must reject
- terminal violation must reject

