# ============================================================
# WORLD MODEL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for top-level world control.

# 2. POLICY RULES

- one active world context per execution scope
- one active timeframe per world
- world readiness requires validated region structure
- ambiguous top-level world state is prohibited

# 3. FAILURE RULE

- multiple active timeframes must reject
- inconsistent region hierarchy must reject
- ambiguous world activation must reject

