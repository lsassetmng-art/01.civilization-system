# ============================================================
# CITY BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: government.city_builder
document_id: 01502501

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Defines the architecture for city builder inside CivilizationOS.

This domain governs city-level structure design, district setup,
facility zoning, placement intent, and publishable city plan
configuration.

# ============================================================
# 2. SCOPE
# ============================================================

This architecture covers:

- city template definition
- district and zone structure
- infrastructure placement intent
- facility category placement intent
- city builder enum/value set
- validation and publish gate

# ============================================================
# 3. RESULT
# ============================================================

City builder is a separate government architecture branch and
must remain distinct from nation builder and company builder.
