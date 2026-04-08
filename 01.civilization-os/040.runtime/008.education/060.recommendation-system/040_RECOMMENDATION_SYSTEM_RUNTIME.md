# ============================================================
# RECOMMENDATION SYSTEM
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for education recommendation systems.

# 2. RUNTIME STATE

- active recommendation-profile state
- rule and candidate-item resolution state
- recommendation evaluation state
- result publication state

# 3. EXECUTION RULES

- subject scope, rule set, and candidate items must resolve before recommendation evaluation
- one explicit result state must exist per evaluation cycle
- recommendation logic must preserve profile identity and version
- hidden recommendation mutation is prohibited

# 4. FAILURE HANDLING

- missing subject scope -> reject
- invalid rule or item binding -> reject
- hidden recommendation mutation -> fail closed

