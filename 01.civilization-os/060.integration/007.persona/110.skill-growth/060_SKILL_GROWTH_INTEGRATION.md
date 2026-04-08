# ============================================================
# SKILL GROWTH
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona skill growth.

# 2. INTEGRATION SCOPE

- growth sources to skill runtime calculation
- updated skill states to education/career/runtime consumers
- growth results to snapshot/review systems
- skill-growth audit to operations

# 3. INTEGRATION RULES

- growth source scope must be explicit before calculation handoff
- skill-state publication must preserve profile identity
- hidden skill mutation must not cross boundary
- rejected growth update must preserve reason state

