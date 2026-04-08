# ============================================================
# PERSONA BEHAVIOR BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona behavior binding.

# 2. OPERATIONAL CONTROLS

- profile/version review
- binding-context review
- active-rule inspection
- binding audit inspection

# 3. FAILURE OPERATIONS

- missing active profile -> reject
- invalid context binding -> block
- conflicting active binding -> fail closed

