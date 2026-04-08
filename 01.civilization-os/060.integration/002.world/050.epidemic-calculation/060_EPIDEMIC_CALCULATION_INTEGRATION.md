# ============================================================
# EPIDEMIC CALCULATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for epidemic calculation.

# 2. INTEGRATION SCOPE

- epidemic profile to runtime spread evaluator
- infection state to wave state
- wave/impact records to mortality and event systems
- epidemic audit to operations

# 3. INTEGRATION RULES

- infection evaluation preserves region/type binding
- wave publication requires explicit state
- impact handoff must preserve wave identity
- ambiguous epidemic scope must not cross boundary

