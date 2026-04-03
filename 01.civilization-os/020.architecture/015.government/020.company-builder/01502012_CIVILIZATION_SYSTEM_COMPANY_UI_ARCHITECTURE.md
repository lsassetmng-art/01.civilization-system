# ============================================================
# CIVILIZATION SYSTEM COMPANY UI ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI architecture for system companies
inside CivilizationOS.

This architecture covers:
- system company admin surfaces
- system company settings
- infrastructure management surfaces
- review / mediation / notification surfaces


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

System company UI must be distinct from ordinary user company UI.

Core principle:

system company UI is an operational/admin surface,
not merely a retail or ordinary enterprise surface


# ============================================================
# 2. SYSTEM COMPANY UI DOMAINS
# ============================================================

System company admin UI should support at minimum:
- property/tenant mediation surfaces
- opening notification surfaces
- upload moderation/review surfaces
- marketplace moderation surfaces
- official scout/adoption surfaces
- finance/securities operation surfaces where relevant

These may vary by system company type.


# ============================================================
# 3. REAL ESTATE SYSTEM UI PRINCIPLE
# ============================================================

For the system real-estate company,
UI should support:
- property listing management
- lease listing management
- ownership transfer processing
- tenant unit occupancy processing
- company-site compatibility review
- opening-support visibility
- nation notification visibility


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

System company UI in CivilizationOS must be:
- admin-oriented
- operation-aware
- system-role-aware
- distinct from user company UI
