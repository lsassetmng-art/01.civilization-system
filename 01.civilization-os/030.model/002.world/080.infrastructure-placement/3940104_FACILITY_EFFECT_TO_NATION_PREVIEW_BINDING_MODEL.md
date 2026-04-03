# ============================================================
# FACILITY EFFECT TO NATION PREVIEW BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-master-integration
component: facility-effect-to-nation-preview-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines how facility actions
bind to nation preview surfaces.


# ============================================================
# 2. REQUIRED BINDINGS
# ============================================================

required_bindings:
- add_facility -> nation_builder_preview
- remove_facility -> nation_builder_preview
- replace_facility -> nation_builder_preview
- suspend_facility -> nation_detail_warning_surface
- reopen_facility -> nation_detail_recovery_surface


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview and warning surfaces
must know which facility action
they are explaining.
