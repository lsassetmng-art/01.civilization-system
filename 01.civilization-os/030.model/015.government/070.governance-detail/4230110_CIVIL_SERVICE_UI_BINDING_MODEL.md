# ============================================================
# CIVIL SERVICE UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civil-service-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI SURFACES
# ============================================================

ui_surfaces:
- personal_profile_surface
- political_power_surface
- office_eligibility_surface
- nation_detail_surface
- grand_play_summary_surface


# ============================================================
# 2. REQUIRED BLOCKS
# ============================================================

required_blocks:
- actor_class_summary
- human_category_summary
- civil_service_eligibility_state
- entry_route_summary
- disqualification_reason_summary
- office_scope_preview


# ============================================================
# 3. FINAL RULE
# ============================================================

UI must explain
why an actor can or cannot
enter civil service.
