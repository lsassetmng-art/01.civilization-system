# ============================================================
# CONSCRIPTION AND ENLISTMENT ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: conscription-and-enlistment-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTE FAMILIES
# ============================================================

route_families:
- nation_notice_route
- public_recruitment_route
- recruitment_facility_route
- education_guidance_route
- military_facility_route


# ============================================================
# 2. ROUTE RULES
# ============================================================

route_rules:
- forced service may use nation_notice_route
- voluntary enlistment may use recruitment_facility_route
- mixed service may use both nation_notice_route and voluntary routes
- education_guidance_route may surface officer or service-track opportunities
- military_facility_route is the primary intake and assignment route


# ============================================================
# 3. FINAL RULE
# ============================================================

Military service entry
must not be modeled
as military facility only.
