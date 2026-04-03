# ============================================================
# ARCHITECTURAL DESIGN COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: architectural-design-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official architecture
for architectural_design_company.

This company type creates architectural design output,
primarily building exterior design packages,
inside Civilization.

It is a user-creatable company type.


# ============================================================
# 2. ECONOMIC ROLE
# ============================================================

architectural_design_company operates as a design-originator
for buildings, facilities, and built-environment identity.

It does not execute construction directly.

Construction execution must be handled by
system construction_company.


# ============================================================
# 3. CORE RESPONSIBILITIES
# ============================================================

- receive design brief
- produce design proposal
- process revision cycles
- finalize design package
- hand off approved design to construction path
- receive design fee and revision fee


# ============================================================
# 4. SITE POSTURE
# ============================================================

Required:
- headquarters

Recommended:
- office
- studio


# ============================================================
# 5. OUTPUT POSTURE
# ============================================================

Primary output:
- building_exterior_design

The company is a design provider,
not a construction executor.


# ============================================================
# 6. RELATION TO OTHER COMPANY TYPES
# ============================================================

Primary relations:
- client company
- interior_company
- construction_company
- real_estate_company
- nation facility placement system


# ============================================================
# 7. FINAL RULE
# ============================================================

architectural_design_company is the canonical
architectural design originator company type.

It may design.
It must not directly construct.
