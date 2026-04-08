# ============================================================
# STORY RESOLUTION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for story resolutions.

# 2. SECURITY SCOPE

- resolution integrity
- condition/result authorization
- active/closed state integrity
- story-resolution audit protection

# 3. SECURITY RULES

- resolution scope, conditions, and results must be tamper-evident
- condition and result changes require explicit authorization
- hidden resolution mutation must be detectable
- audit output must preserve resolution identity

