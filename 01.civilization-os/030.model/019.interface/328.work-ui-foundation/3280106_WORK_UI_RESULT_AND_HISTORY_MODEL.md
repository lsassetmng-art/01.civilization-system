# ============================================================
# WORK UI RESULT AND HISTORY MODEL
# ============================================================

status: canonical
layer: model
scope: work-ui-foundation
component: work-ui-result-and-history

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESULT FIELDS
# ============================================================

result_fields:
- work_result_id
- job_category
- action_id
- result_state
- resource_delta
- personnel_delta
- kpi_delta
- incident_delta
- followup_unlocks
- displayed_summary
- recorded_at


# ============================================================
# 2. HISTORY FIELDS
# ============================================================

history_fields:
- work_history_id
- actor_id
- job_category
- loop_type
- displayed_title
- displayed_summary
- result_state
- key_changes_snapshot
- incident_marker
- saved_at


# ============================================================
# 3. FINAL RULE
# ============================================================

Work UI must leave
a recoverable operational trail
for review, audit, and memory.
