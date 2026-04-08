# ============================================================
# COMPANY BUILDER
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for company builder systems.

# 2. OPERATIONAL CONTROLS

- builder-session review
- ownership-state review
- validation inspection
- publication-state review

# 3. FAILURE OPERATIONS

- missing owner scope -> reject
- ownership ratio inconsistency -> block
- ambiguous builder session -> fail closed

