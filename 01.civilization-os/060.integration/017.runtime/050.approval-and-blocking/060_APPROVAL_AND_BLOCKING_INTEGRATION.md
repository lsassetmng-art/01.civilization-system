# ============================================================
# APPROVAL AND BLOCKING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for approval and blocking.

# 2. INTEGRATION SCOPE

- approval requests to decision systems
- block rules to runtime controllers
- approval/block outcomes to execution consumers
- approval/block audit to operations

# 3. INTEGRATION RULES

- request scope and rule identity must be explicit before decision handoff
- blocked state must preserve block record identity
- hidden blocking must not cross boundary
- ambiguous approval/block outcome must fail closed

