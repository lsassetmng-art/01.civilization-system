# ============================================================
# CITY BUILDER
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for city builder systems.

# 2. IMPLEMENTATION TARGETS

- builder-session handling
- zoning-bundle handling
- validation handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- city_definition
- city_builder_session
- zoning_bundle
- city_builder_validation

# 4. EXECUTION

- open one active builder session per city/scope
- validate zoning before publication
- publish only after validated city/nation scope
- reject ambiguous builder session

# 5. VALIDATION

- reject missing nation scope
- reject invalid zoning bundle
- reject ambiguous builder session

# 6. OBSERVABILITY

- city-builder audit
- zoning/validation visibility
- publication visibility

