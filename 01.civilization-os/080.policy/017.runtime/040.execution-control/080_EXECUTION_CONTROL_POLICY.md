# ============================================================
# EXECUTION CONTROL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for execution control.

# 2. POLICY RULES

- controller scope, mode, and execution window must be explicit
- blocked execution must not continue
- incompatible overlapping execution windows are prohibited
- implicit execution mode escalation is prohibited

# 3. FAILURE RULE

- missing controller scope must reject
- incompatible overlapping window must reject
- blocked execution continuation must reject

