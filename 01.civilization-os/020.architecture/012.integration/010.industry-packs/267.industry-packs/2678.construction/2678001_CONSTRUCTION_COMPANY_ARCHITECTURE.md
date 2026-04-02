# ============================================================
# CONSTRUCTION COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: construction-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for construction_company.

construction_company is a system-limited company type
that exclusively executes construction work.


# ============================================================
# 2. CORE RULE
# ============================================================

construction_company is system company only.

User companies may fund and own buildings,
but may not directly execute construction.


# ============================================================
# 3. CORE RESPONSIBILITIES
# ============================================================

- construction request intake
- design handoff reception
- schedule planning
- build execution
- completion and inspection
- delivery to building/site activation path


# ============================================================
# 4. FINAL RULE
# ============================================================

Construction execution is system-exclusive.
