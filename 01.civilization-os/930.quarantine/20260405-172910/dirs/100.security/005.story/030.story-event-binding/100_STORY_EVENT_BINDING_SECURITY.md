# ============================================================
# STORY EVENT BINDING
# SECURITY
# ============================================================

status: draft
layer: security
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for story event bindings.

# 2. SECURITY SCOPE

- event-binding integrity
- reference/rule authorization
- active/blocked state integrity
- story-event-binding audit protection

# 3. SECURITY RULES

- event scope, references, and rules must be tamper-evident
- reference and rule changes require explicit authorization
- hidden event-binding mutation must be detectable
- audit output must preserve event-binding identity

