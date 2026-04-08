# ============================================================
# LIFE EXPECTANCY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona life expectancy.

# 2. INTEGRATION SCOPE

- expectancy factors to runtime calculation
- expectancy state to life-event/governance consumers
- expectancy adjustment to review systems
- expectancy audit to operations

# 3. INTEGRATION RULES

- factor provenance must be explicit before calculation handoff
- adjustment handoff must preserve reason state
- hidden expectancy mutation must not cross boundary
- rejected expectancy update must preserve evidence

