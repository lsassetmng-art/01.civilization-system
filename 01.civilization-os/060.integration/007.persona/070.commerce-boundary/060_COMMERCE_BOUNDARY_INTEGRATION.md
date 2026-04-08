# ============================================================
# COMMERCE BOUNDARY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona commerce.

# 2. INTEGRATION SCOPE

- permission state to sale/listing systems
- sale unit to marketplace/commercial systems
- settlement reference to finance/compliance consumers
- commerce audit to operations

# 3. INTEGRATION RULES

- sale/listing handoff requires explicit permission
- restriction state must be applied before marketplace publication
- unauthorized commercial publication must not cross boundary
- settlement handoff must preserve sale identity

