# ============================================================
# FIELD FACILITY UI SURFACE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-master-integration
component: field-facility-ui-surface-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI SURFACES
# ============================================================

required_ui_surfaces:
- build_menu_surface
- candidate_detail_surface
- build_confirmation_surface
- construction_status_surface
- field_map_quick_info_surface
- service_entry_surface
- tenant_list_surface
- facility_overview_surface


# ============================================================
# 2. REQUIRED BINDINGS
# ============================================================

required_bindings:
- facility_type -> service_entry_surface
- facility_type -> build_menu_surface
- facility_type -> candidate_detail_surface
- facility_type -> field_map_quick_info_surface
- tenant_container_facility_type -> tenant_list_surface
- overview_first_facility_type -> facility_overview_surface


# ============================================================
# 3. FINAL RULE
# ============================================================

Every facility type
must know which UI surfaces it participates in.
