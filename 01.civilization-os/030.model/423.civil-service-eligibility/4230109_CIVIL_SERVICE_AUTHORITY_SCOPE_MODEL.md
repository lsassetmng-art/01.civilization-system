# ============================================================
# CIVIL SERVICE AUTHORITY SCOPE MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civil-service-authority-scope

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AUTHORITY SCOPES
# ============================================================

authority_scopes:
- clerk_scope
- district_scope
- city_scope
- prefectural_scope
- regional_scope
- nation_scope
- strategic_ministry_scope


# ============================================================
# 2. FINAL RULE
# ============================================================

Civil service authority
must be assigned by office scope,
not by actor billing status.
