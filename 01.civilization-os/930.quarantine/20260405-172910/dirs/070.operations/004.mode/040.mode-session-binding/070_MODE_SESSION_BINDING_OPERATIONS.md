# ============================================================
# MODE SESSION BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for mode session bindings.

# 2. OPERATIONAL CONTROLS

- session-binding review
- reference/constraint review
- active/blocked state inspection
- mode-session-binding audit inspection

# 3. FAILURE OPERATIONS

- missing mode or session scope -> reject
- invalid reference or constraint binding -> block
- hidden session-binding mutation -> fail closed

