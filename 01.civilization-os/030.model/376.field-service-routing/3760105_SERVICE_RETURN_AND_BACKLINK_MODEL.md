# ============================================================
# SERVICE RETURN AND BACKLINK MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-routing
component: service-return-and-backlink

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RETURN TARGETS
# ============================================================

return_targets:
- previous_service_surface
- tenant_list
- facility_overview
- field_map
- nation_market_home
- company_store_home
- global_market_home


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

return_fields:
- service_type
- entry_context
- preferred_back_target
- secondary_back_target
- context_banner_backlink_supported
- related_service_shortcuts_supported


# ============================================================
# 3. RULES
# ============================================================

return_rules:
- tenant entry prefers return to tenant list
- single-function facility entry prefers return to field map
- company direct store entry may prefer return to seller store home
- marketplace detail may preserve prior browsing scope when possible


# ============================================================
# 4. FINAL RULE
# ============================================================

Back navigation must preserve
the user's mental model
of where they came from.
