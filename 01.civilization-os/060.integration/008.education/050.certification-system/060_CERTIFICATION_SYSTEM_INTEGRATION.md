# ============================================================
# CERTIFICATION SYSTEM
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for certification system structures.

# 2. INTEGRATION SCOPE

- certification definitions and requirements to evaluation consumers
- awards and status to career, law, and profile consumers
- certification audit to operations

# 3. INTEGRATION RULES

- certification scope, requirement set, and recipient identity must be explicit before handoff
- award and revocation handoff must preserve certification identity
- hidden revocation without status change must not cross boundary
- ambiguous award or certification status must fail closed

