# ============================================================
# FACILITY NOTIFICATION PRIORITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-notification-priority

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRIORITY LEVELS
# ============================================================

priority_levels:
- low
- medium
- high
- critical


# ============================================================
# 2. PRIORITY RULES
# ============================================================

priority_rules:
- build_started is low or medium
- review_pending is medium
- construction_completed is medium
- facility_open is medium or high for anchor facilities
- suspension is high
- infra_failure is high
- forced_removal is critical


# ============================================================
# 3. FINAL RULE
# ============================================================

Priority should reflect operational importance,
not simply event recency.
