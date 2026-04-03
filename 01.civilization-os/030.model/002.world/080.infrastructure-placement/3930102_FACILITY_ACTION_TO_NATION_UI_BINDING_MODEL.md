# ============================================================
# FACILITY ACTION TO NATION UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: facility-action-to-nation-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTION TYPES
# ============================================================

action_types:
- add_facility
- remove_facility
- replace_facility
- suspend_facility
- reopen_facility


# ============================================================
# 2. UI TARGETS
# ============================================================

ui_targets:
- nation_builder_metric_panel
- nation_overview_metric_card
- nation_detail_metric_drilldown
- nation_comparison_metric_view
- nation_preview_projected_delta


# ============================================================
# 3. BINDING RULES
# ============================================================

binding_rules:
- add_facility may affect builder preview and nation detail
- remove_facility may affect builder preview and nation detail
- replace_facility may affect preview, detail, and comparison
- suspend_facility may affect overview and detail
- reopen_facility may affect overview and detail


# ============================================================
# 4. FINAL RULE
# ============================================================

Every meaningful facility action
must know where its nation-side consequence appears.
