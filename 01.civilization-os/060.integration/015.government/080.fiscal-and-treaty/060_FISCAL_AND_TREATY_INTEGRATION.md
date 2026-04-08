# ============================================================
# FISCAL AND TREATY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for fiscal plans and treaties.

# 2. INTEGRATION SCOPE

- fiscal plan to economy/runtime consumers
- treaty state to diplomacy/law/security consumers
- fiscal/treaty audit to operations

# 3. INTEGRATION RULES

- fiscal scope and commitment identity must be explicit before handoff
- treaty parties must be explicit before signature or ratification publication
- invalid fiscal/treaty mutation must not cross boundary
- hidden treaty mutation must fail closed

