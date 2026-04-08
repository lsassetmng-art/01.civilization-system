# ============================================================
# EPIDEMIC CALCULATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for epidemic calculation.

# 2. INFRASTRUCTURE SCOPE

- epidemic-profile storage
- infection evaluation path
- wave-state persistence
- impact publication path

# 3. INFRASTRUCTURE RULES

- one explicit spread profile must be resolvable
- wave state must persist before impact publication
- impact publication must preserve wave identity
- infrastructure ambiguity must fail closed

