# ============================================================
# INFRASTRUCTURE MANAGEMENT UI COPY MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-management-ui-copy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COPY THEMES
# ============================================================

copy_themes:
- authority_owner
- governance_mode
- placement_allowed
- approval_required
- blocked_by_authority
- blocked_by_corridor
- direct_shortcut_resolved_authority
- line_vs_node_explanation


# ============================================================
# 2. FINAL RULE
# ============================================================

Infrastructure copy
must clarify authority,
network type,
and actionability without ambiguity.
