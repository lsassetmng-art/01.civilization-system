# ============================================================
# WAR IMPACT CALCULATION
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for war impact calculation.

# 2. INFRASTRUCTURE SCOPE

- war-state persistence
- impact-calculation execution path
- recovery-state storage
- cross-domain effect publication path

# 3. INFRASTRUCTURE RULES

- active war scope must be durably resolvable
- impact publication must follow persisted conflict state
- recovery state must preserve target scope
- infrastructure ambiguity must fail closed

