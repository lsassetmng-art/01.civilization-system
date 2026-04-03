# ============================================================
# FACILITY NOTICE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-notice

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NOTICE TYPES
# ============================================================

notice_types:
- construction_started_notice
- review_pending_notice
- construction_completed_notice
- activation_pending_notice
- facility_open_notice
- replacement_notice
- suspension_notice
- infra_failure_notice
- review_failed_notice


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_notice_fields:
- notice_id
- notice_type
- facility_id
- facility_type
- operator_id
- summary_text
- severity
- actionable_flag
- backlink_target
- created_at
- expires_at


# ============================================================
# 3. FINAL RULE
# ============================================================

Notices must be timely,
actionable when needed,
and removable when stale.
