# ============================================================
# 013 LAW
# FLOW
# ============================================================

status: draft
layer: flow
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow receiver for 013 LAW.

# 2. TRIGGER

- explicit trigger source
- entry condition
- guard condition

# 3. MAIN FLOW

1. validate input / state
2. resolve authority / ownership
3. execute canonical transition
4. persist resulting state
5. emit audit / observable effect

# 4. FAILURE FLOW

- invalid state -> reject
- unauthorized action -> reject
- inconsistent lifecycle -> reject
- boundary violation -> reject
