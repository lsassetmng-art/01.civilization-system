# ============================================================
# MAPPING RULE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for mapping rules.

# 2. OPERATIONAL CONTROLS

- mapping-rule-set review
- field/transform review
- active/revised state inspection
- mapping-rule audit inspection

# 3. FAILURE OPERATIONS

- missing mapping scope -> reject
- invalid field or transform binding -> block
- hidden mapping mutation -> fail closed

