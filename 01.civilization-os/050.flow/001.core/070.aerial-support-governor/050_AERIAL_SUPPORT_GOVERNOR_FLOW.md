# ============================================================
# AERIAL SUPPORT GOVERNOR
# FLOW
# ============================================================

status: draft
layer: flow
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for Aerial support governor assistance.

# 2. TRIGGER

- support-needed signal
- context instability detection
- authorized escalation review request

# 3. MAIN FLOW

1. open aerial_support_context
2. collect aerial_support_signal set
3. determine assistive action within authority boundary
4. execute aerial_support_action
5. record user/operator-visible result
6. escalate only when declared condition is met
7. persist aerial_escalation_record where applicable
8. emit audit trace

# 4. FAILURE FLOW

- missing support context -> reject
- unauthorized direct control -> reject
- invalid escalation target -> reject
- boundary confusion with stronger governor role -> fail closed

# 5. OUTPUT

- support action result
- escalation record where applicable
- audit trace and explicit rejection reason

