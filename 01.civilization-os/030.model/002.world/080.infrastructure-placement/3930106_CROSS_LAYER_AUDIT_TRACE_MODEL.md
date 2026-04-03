# ============================================================
# CROSS LAYER AUDIT TRACE MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-audit-trace

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRACE FIELDS
# ============================================================

trace_fields:
- trace_id
- source_facility_event_id
- source_facility_id
- source_facility_type
- source_action_type
- nation_id
- metric_target_set
- aggregate_update_id
- ui_refresh_target_set
- recorded_at


# ============================================================
# 2. FINAL RULE
# ============================================================

Audit trace must connect
facility action,
nation update,
and UI refresh
inside one explainable chain.
