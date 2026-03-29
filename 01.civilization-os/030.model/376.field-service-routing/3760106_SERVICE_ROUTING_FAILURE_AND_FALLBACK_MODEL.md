# ============================================================
# SERVICE ROUTING FAILURE AND FALLBACK MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-routing
component: service-routing-failure-and-fallback

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FAILURE TYPES
# ============================================================

failure_types:
- missing_service_profile
- inactive_facility
- inactive_tenant
- nation_restricted
- permission_denied
- operator_mapping_invalid
- route_resolution_failed


# ============================================================
# 2. FALLBACK TARGETS
# ============================================================

fallback_targets:
- facility_overview
- tenant_list
- restricted_access_notice
- inactive_service_notice
- management_review_notice
- field_map_return


# ============================================================
# 3. FINAL RULE
# ============================================================

Every failed service route
must degrade to one clear fallback,
never to silent no-op behavior.
