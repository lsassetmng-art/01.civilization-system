# ============================================================
# WAR CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for war core structures.

# 2. OPERATIONAL CONTROLS

- war-definition review
- party/rule review
- active/suspended state inspection
- war-core audit inspection

# 3. FAILURE OPERATIONS

- missing war scope -> reject
- invalid party or rule binding -> block
- hidden war-core mutation -> fail closed

