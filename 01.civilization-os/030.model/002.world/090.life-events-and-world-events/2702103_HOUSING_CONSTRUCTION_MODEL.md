# ============================================================
# HOUSING CONSTRUCTION MODEL
# ============================================================

status: canonical
layer: model
scope: housing-builder
component: housing-construction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- build_intent_created
- land_validated
- zone_compatibility_passed
- design_selected
- construction_request_created
- system_construction_execution
- completion_verified
- move_in_ready


# ============================================================
# 2. COSTS
# ============================================================

Housing construction may include:
- land acquisition or lease cost
- construction cost
- design cost
- interior cost
- equipment cost
- registration cost
- acquisition tax
- holding tax


# ============================================================
# 3. FINAL RULE
# ============================================================

Housing construction is company-executed only through
system construction_company.
