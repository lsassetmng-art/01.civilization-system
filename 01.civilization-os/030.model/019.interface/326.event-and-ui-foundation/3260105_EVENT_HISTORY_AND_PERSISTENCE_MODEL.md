# ============================================================
# EVENT HISTORY AND PERSISTENCE MODEL
# ============================================================

status: canonical
layer: model
scope: event-and-ui-foundation
component: event-history-and-persistence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HISTORY FIELDS
# ============================================================

history_fields:
- history_id
- event_id
- actor_id
- target_scope
- occurred_at
- displayed_title
- displayed_summary
- result_state
- effect_snapshot
- rollback_supported
- archive_class


# ============================================================
# 2. ARCHIVE CLASSES
# ============================================================

archive_classes:
- visible_life_log
- visible_work_log
- visible_governance_log
- hidden_system_log
- memorial_log
- regime_transition_log


# ============================================================
# 3. FINAL RULE
# ============================================================

Every event that changes world state
must leave a persistent and classifiable record.
