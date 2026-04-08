# ============================================================
# FISCAL AND TREATY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for fiscal plans and treaties.

# 2. POLICY RULES

- fiscal scope and commitments must be explicit
- treaty parties and ratification state must be explicit
- hidden treaty mutation is prohibited
- ambiguous fiscal/treaty publication state is prohibited

# 3. FAILURE RULE

- invalid fiscal scope must reject
- missing treaty party state must reject
- hidden treaty mutation must reject

