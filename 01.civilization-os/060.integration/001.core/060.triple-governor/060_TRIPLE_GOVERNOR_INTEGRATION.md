# ============================================================
# TRIPLE GOVERNOR
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for Triple governor adjustments.

# 2. INTEGRATION SCOPE

- governor signal intake to adjustment evaluation
- authority boundary to adjustment publication
- reason trace to audit and operations
- approved adjustment to target runtime channel

# 3. INTEGRATION RULES

- signal set must be bound to one governor context
- authority mode must be explicit before channel publication
- reason trace must accompany every approved adjustment
- rejected adjustment must not cross into target runtime channel

