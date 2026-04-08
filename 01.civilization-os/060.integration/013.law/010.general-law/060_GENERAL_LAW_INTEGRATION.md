# ============================================================
# GENERAL LAW
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for general law structures.

# 2. INTEGRATION SCOPE

- law code and articles to runtime/governance consumers
- jurisdiction scope to enforcement and review systems
- law audit to operations

# 3. INTEGRATION RULES

- law code, article set, and jurisdiction scope must be explicit before handoff
- active/revision state must preserve law identity
- hidden law mutation must not cross boundary
- ambiguous legal status must fail closed

