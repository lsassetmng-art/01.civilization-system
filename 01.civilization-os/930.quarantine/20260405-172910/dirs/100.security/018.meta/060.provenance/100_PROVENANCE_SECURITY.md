# ============================================================
# PROVENANCE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for provenance structures.

# 2. SECURITY SCOPE

- provenance integrity
- actor/rule authorization
- active/blocked state integrity
- provenance audit protection

# 3. SECURITY RULES

- provenance scope, actor references, and rules must be tamper-evident
- actor and rule changes require explicit authorization
- hidden provenance mutation must be detectable
- audit output must preserve provenance identity

