# ============================================================
# CIVILIZATION BANKING LENDING GUARANTEE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define lending and guarantee architecture
inside CivilizationOS.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Lending must distinguish:
- personal unsecured credit
- personal secured credit
- housing/mortgage credit
- enterprise credit
- working capital credit
- collateral-backed credit
- state-supported credit
- guarantee-backed credit

Guarantees must be modeled separately from the loan itself.


# ============================================================
# 2. GUARANTEE TYPES
# ============================================================

Minimum guarantee/surety types:
- personal_guarantee
- company_guarantee
- institutional_guarantee
- state_backed_guarantee
- deposit_secured_guarantee
- collateral_substitute_guarantee
- hybrid_guarantee

All guarantee legality is nation-governed.


# ============================================================
# 3. FINAL ARCHITECTURAL RULE
# ============================================================

Lending and guarantees must remain:
- product-distinct
- credit-aware
- collateral-aware
- nation-governed
- DB-controlled
