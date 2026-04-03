# ============================================================
# PLACEMENT MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: placement-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

placement_mode_enum:
- authority_facility_entry_only
- field_map_shortcut_with_authority_resolution
- authority_or_field_map_dual_entry
- approval_gate_entry
- crisis_only_emergency_entry


# ============================================================
# 2. FINAL RULE
# ============================================================

Placement mode
defines how the user enters
the infrastructure placement flow.
