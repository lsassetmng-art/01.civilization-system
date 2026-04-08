# ============================================================
# CAREER PATH
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for career path structures.

# 2. SECURITY SCOPE

- path-definition integrity
- step/requirement authorization
- path-status integrity
- career-path audit protection

# 3. SECURITY RULES

- path scope, step order, and requirement set must be tamper-evident
- step and requirement changes require explicit authorization
- hidden path mutation must be detectable
- audit output must preserve path identity

