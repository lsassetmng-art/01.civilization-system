# ============================================================
# ANNOTATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for annotation structures.

# 2. OPERATIONAL CONTROLS

- annotation review
- target/rule review
- active/revised state inspection
- annotation audit inspection

# 3. FAILURE OPERATIONS

- missing annotation scope -> reject
- invalid target or rule binding -> block
- hidden annotation mutation -> fail closed

