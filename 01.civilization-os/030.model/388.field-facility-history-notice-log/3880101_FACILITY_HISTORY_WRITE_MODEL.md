# ============================================================
# FACILITY HISTORY WRITE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-history-write

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HISTORY EVENT TYPES
# ============================================================

history_event_types:
- facility_build_started
- facility_build_review_pending
- facility_build_completed
- facility_activation_started
- facility_opened
- facility_suspended
- facility_reopened
- facility_replaced
- facility_removed
- tenant_building_opened


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

history_write_fields:
- history_event_id
- facility_type
- facility_id
- lot_id
- operator_id
- actor_id
- event_type
- event_summary
- event_visibility
- recorded_at
- backlink_target


# ============================================================
# 3. FINAL RULE
# ============================================================

Visible facility history must track
meaningful lifecycle changes,
not every internal state transition.
