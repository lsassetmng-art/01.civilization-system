# ============================================================
# PERSONA PLACEMENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for persona placement.

# 2. POLICY RULES

- placement scope must be explicit
- incompatible overlapping placements are prohibited
- placement constraint must be validated before publication
- implicit relocation without placement record is prohibited

# 3. FAILURE RULE

- missing placement scope must reject
- incompatible placement overlap must reject
- invalid constraint binding must reject

