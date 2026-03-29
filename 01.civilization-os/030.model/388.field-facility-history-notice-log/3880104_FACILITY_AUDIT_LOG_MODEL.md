# ============================================================
# FACILITY AUDIT LOG MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-audit-log

owner: Boss
prepared_by: Zero


# ============================================================
# 1. AUDIT EVENT TYPES
# ============================================================

audit_event_types:
- placement_validation_run
- build_confirmation_submitted
- build_execution_committed
- review_state_changed
- replacement_executed
- activation_state_changed
- open_state_changed
- suspension_state_changed
- forced_removal_executed


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

audit_log_fields:
- audit_event_id
- facility_id_or_null
- facility_type
- actor_id
- operator_id
- event_type
- state_before
- state_after
- validation_code_set
- execution_code
- recorded_at


# ============================================================
# 3. FINAL RULE
# ============================================================

Audit logs must capture
state transitions precisely enough
for debugging and governance review.
