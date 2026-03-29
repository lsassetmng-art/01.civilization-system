# ============================================================
# FACILITY HISTORY BACKLINK MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-history-backlink

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BACKLINK TARGETS
# ============================================================

backlink_targets:
- field_map_lot
- facility_overview
- construction_status
- operator_profile
- builder_summary
- tenant_building_overview


# ============================================================
# 2. RULES
# ============================================================

backlink_rules:
- build_started prefers construction_status
- facility_opened prefers facility_overview
- replacement_notice prefers target lot or construction status
- suspended_notice prefers facility_overview
- album milestone may backlink to field map lot


# ============================================================
# 3. FINAL RULE
# ============================================================

History and notices should lead users
back to the relevant map object or status view.
