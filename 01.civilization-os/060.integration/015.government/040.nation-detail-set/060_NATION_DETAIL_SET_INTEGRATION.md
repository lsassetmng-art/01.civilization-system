# ============================================================
# NATION DETAIL SET
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for nation detail sets.

# 2. INTEGRATION SCOPE

- detail bundles to governance/runtime consumers
- publication/completeness state to review systems
- nation-detail audit to operations

# 3. INTEGRATION RULES

- required bundles must be explicit before downstream handoff
- incomplete detail state must not cross publication boundary
- detail handoff must preserve nation identity and version
- ambiguous completeness state must fail closed

