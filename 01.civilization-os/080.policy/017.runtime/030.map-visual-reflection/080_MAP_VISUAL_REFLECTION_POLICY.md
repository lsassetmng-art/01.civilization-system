# ============================================================
# MAP VISUAL REFLECTION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for map visual reflection.

# 2. POLICY RULES

- map scope, layer ordering, and reflection rules must be explicit
- projection must preserve map visual identity
- hidden visual mutation is prohibited
- implicit layer reordering is prohibited

# 3. FAILURE RULE

- missing map scope must reject
- invalid layer ordering must reject
- hidden visual mutation must reject

