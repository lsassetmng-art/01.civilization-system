# ============================================================
# AUTO PROGRESSION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operational control for automatic progression.

# 2. OPERATIONAL CONTROLS

- start / pause / resume / stop command
- active session monitoring
- checkpoint lag monitoring
- abnormal stop alerting

# 3. FAILURE OPERATIONS

- duplicate session attempt -> operator alert
- invalid checkpoint resume -> stop and review
- unsafe catchup detection -> halt progression
- logical time inconsistency -> fail closed and escalate

