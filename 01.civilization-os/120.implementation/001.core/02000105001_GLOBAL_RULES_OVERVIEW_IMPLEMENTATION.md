# ============================================================
# GLOBAL RULES OVERVIEW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines how global rules are represented and resolved in execution.

# 2. STORAGE

Global rule registry fields:
- rule_code
- rule_scope
- effective_from
- effective_to
- rule_payload
- enabled_flag
- version

# 3. CONTRACTS

Rule lookup request:
- rule_scope
- rule_code
- reference_time
- caller_domain

Rule lookup response:
- resolved_rule
- version
- source
- fallback_used

# 4. EXECUTION

1. validate lookup request
2. resolve active rule set
3. apply precedence
4. return deterministic rule payload

# 5. AUTHORIZATION

Read is domain-limited by scope.
Write belongs to governance-controlled layers only.

# 6. AUDIT

- rule_code
- scope
- resolved_version
- caller_domain
- resolved_at

# 7. FAILURE HANDLING

Fail closed on conflicting active rules or undefined precedence.
