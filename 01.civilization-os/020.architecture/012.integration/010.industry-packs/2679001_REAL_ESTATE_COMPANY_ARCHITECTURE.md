# ============================================================
# REAL ESTATE COMPANY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: industry-pack
component: real-estate-company

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture for real_estate_company.

real_estate_company is a system-limited company type
that mediates land, building, lease, and tenant-unit transactions.


# ============================================================
# 2. CORE RULE
# ============================================================

real_estate_company is system company only.

It is the formal intermediary for:
- land purchase mediation
- land lease mediation
- building lease mediation
- tenant-unit mediation
- property resale processing


# ============================================================
# 3. FINAL RULE
# ============================================================

Direct real-estate transfer must not bypass
real_estate_company mediation.
