# ============================================================
# APPROVAL AND BLOCKING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for approval and blocking.

# 2. INFRASTRUCTURE SCOPE

- approval-request storage
- decision and block-rule persistence
- block-record persistence
- approval/block audit sink

# 3. INFRASTRUCTURE RULES

- request and block-rule identity must be durably resolvable
- block record must persist before blocked publication
- approval/block outcome must remain durable and reviewable
- infrastructure ambiguity must fail closed

