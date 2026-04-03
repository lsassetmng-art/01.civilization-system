# ============================================================
# BUILDER BINDING MAP MODEL
# ============================================================

status: canonical
layer: model
scope: implementation-bridge-master
component: builder-binding-map

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines canonical binding
between builders and domain models.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

builder_binding_fields:
- builder_id
- builder_family
- bound_structure_models
- bound_scope_models
- bound_transition_models
- bound_validation_models
- bound_ui_tab_models
- bound_integrated_master_refs


# ============================================================
# 3. REQUIRED BUILDER FAMILIES
# ============================================================

builder_families:
- nation_builder
- power_structure_builder
- legislature_builder
- executive_builder
- appointment_builder
- faction_builder


# ============================================================
# 4. FINAL RULE
# ============================================================

Every builder must declare
which canonical models it edits,
which it displays,
and which it validates.
