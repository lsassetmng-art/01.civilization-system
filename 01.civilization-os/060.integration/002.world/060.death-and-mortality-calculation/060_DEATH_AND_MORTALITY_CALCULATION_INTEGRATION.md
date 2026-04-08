# ============================================================
# DEATH AND MORTALITY CALCULATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for mortality calculation.

# 2. INTEGRATION SCOPE

- mortality profile to runtime evaluator
- mortality state to death aggregates
- aggregates and impact records to population and governance consumers
- mortality audit to operations

# 3. INTEGRATION RULES

- mortality output must preserve region and period scope
- aggregate persistence must complete before impact publication
- ambiguous mortality severity must not cross boundary
- rejected output must preserve audit evidence

