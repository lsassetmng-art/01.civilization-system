# ============================================================
# INFRASTRUCTURE MANAGEMENT HOME MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-management-home

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- management_home
- network_overview
- line_placement_entry
- node_placement_entry
- replacement_entry
- removal_entry
- permission_feedback_surface
- authority_scope_surface


# ============================================================
# 2. REQUIRED BLOCKS
# ============================================================

required_blocks:
- authority_identity_block
- governance_mode_block
- available_action_block
- managed_network_summary
- pending_project_summary
- restriction_and_approval_block


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure management home
must function as the operational gateway
between authority identity
and actual placement actions.
