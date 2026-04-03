# ============================================================
# INITIAL CITY HOUSING AND INDUSTRY BALANCE MODEL
# ============================================================

status: canonical
layer: model
scope: initial-nation-and-city-set
component: initial-city-housing-and-industry-balance

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines how expanded cities should balance
housing and industry in seed-world planning.


# ============================================================
# 2. HOUSING BALANCE RULE
# ============================================================

Recommended rule:
- capital cities: high apartment / condominium share
- industrial cities: mixed worker housing + medium apartment share
- frontier growth cities: higher detached / townhouse expansion capacity
- cultural and coastal cities: mixed residential + tourism-linked housing
- union cities: higher mixed-use and citizen housing balance


# ============================================================
# 3. INDUSTRY BALANCE RULE
# ============================================================

Recommended rule:
- port cities: logistics / trade / fisheries / import-export support
- industrial cities: manufacturing / construction / heavy industry
- academic cities: education / training / child education density
- cultural cities: exhibition / festival / arts / religion density
- military cities: defense logistics / training / arsenal support


# ============================================================
# 4. FINAL RULE
# ============================================================

Each city should have explicit housing and industry posture
before detailed placement begins.
