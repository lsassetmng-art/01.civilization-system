# ============================================================
# GLOBAL RULES
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for global rule administration.

# 2. OPERATIONAL CONTROLS

- active rule version review
- exception approval review
- application audit inspection
- precedence conflict monitoring

# 3. FAILURE OPERATIONS

- conflicting active versions -> reject and alert
- unauthorized exception -> reject
- missing effective version -> block rule application
- ambiguous precedence -> fail closed

