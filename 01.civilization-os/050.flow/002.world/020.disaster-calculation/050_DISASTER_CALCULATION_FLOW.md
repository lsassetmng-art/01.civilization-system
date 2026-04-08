# ============================================================
# DISASTER CALCULATION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for disaster calculation.

# 2. TRIGGER

- scheduled disaster risk evaluation
- environmental condition change
- explicit recalculation request

# 3. MAIN FLOW

1. resolve disaster_profile
2. calculate disaster_risk_state by region
3. evaluate occurrence threshold
4. create disaster_occurrence when triggered
5. calculate disaster_impact
6. persist results and emit audit trace

# 4. FAILURE FLOW

- missing disaster profile -> reject
- invalid risk scope -> reject
- inconsistent occurrence severity -> fail closed

# 5. OUTPUT

- disaster risk state
- occurrence record where applicable
- impact record

