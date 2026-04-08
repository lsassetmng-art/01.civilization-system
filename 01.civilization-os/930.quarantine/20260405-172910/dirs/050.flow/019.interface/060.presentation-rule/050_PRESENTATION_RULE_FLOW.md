# ============================================================
# PRESENTATION RULE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for presentation rule handling.

# 2. TRIGGER

- presentation rule create/update
- presentation condition update
- style rule update
- presentation revision request

# 3. MAIN FLOW

1. create or resolve presentation_rule_set
2. bind presentation_condition set
3. bind presentation_style_rule set
4. validate presentation scope and condition/style consistency
5. persist presentation_status
6. emit audit trace

# 4. FAILURE FLOW

- missing presentation scope -> reject
- invalid condition or style binding -> reject
- hidden presentation mutation -> fail closed

# 5. OUTPUT

- presentation state
- condition/style/status
- audit record

