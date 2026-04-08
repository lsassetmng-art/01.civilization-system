# ============================================================
# WAR IMPACT CALCULATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for war impact calculation.

# 2. INTEGRATION SCOPE

- active war state to impact evaluator
- impact records to demographic/economic/governance consumers
- recovery state to post-conflict systems
- war impact audit to operations

# 3. INTEGRATION RULES

- impact evaluator requires one active war scope
- recovery state must preserve target scope
- unresolved conflict ambiguity must not cross boundary
- rejected impact calculation must preserve audit state

