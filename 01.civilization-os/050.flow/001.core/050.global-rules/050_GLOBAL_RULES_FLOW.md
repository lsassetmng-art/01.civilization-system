# ============================================================
# GLOBAL RULES
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for global rule resolution and application.

# 2. TRIGGER

- rule evaluation request
- domain action requiring global precedence check
- exception review request

# 3. MAIN FLOW

1. resolve applicable global_rule set
2. select active global_rule_version
3. check for approved global_rule_exception
4. determine precedence over local behavior
5. apply rule or approved exception path
6. persist global_rule_application
7. emit audit trace

# 4. FAILURE FLOW

- missing active version -> reject
- conflicting active versions -> reject
- unauthorized exception -> reject
- ambiguous precedence -> fail closed

# 5. OUTPUT

- applied rule result
- application record
- explicit rejection or exception reason

