# ============================================================
# PUBLIC OFFICE UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: public-office-actor-compatibility
component: public-office-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI SURFACES
# ============================================================

ui_surfaces:
- personal_profile_surface
- office_eligibility_surface
- nation_detail_surface
- political_power_surface
- military_surface
- civil_service_surface
- grand_play_summary_surface


# ============================================================
# 2. REQUIRED BLOCKS
# ============================================================

required_blocks:
- actor_class_summary
- office_class_summary
- office_type_summary
- compatibility_state
- human_requirement_profile
- nation_override_preview
- blocked_reason_summary
- authority_scope_preview


# ============================================================
# 3. FINAL RULE
# ============================================================

UI must explain
whether an actor may hold an office,
why,
and at what authority scope.
