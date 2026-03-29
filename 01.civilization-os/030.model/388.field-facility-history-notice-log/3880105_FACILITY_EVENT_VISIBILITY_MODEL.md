# ============================================================
# FACILITY EVENT VISIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-event-visibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY CLASSES
# ============================================================

visibility_classes:
- user_visible_history
- user_visible_notice
- album_candidate
- audit_only
- hidden_internal


# ============================================================
# 2. RULES
# ============================================================

visibility_rules:
- build_started may be notice and history
- validation_run is audit_only by default
- review_failed may be notice and audit
- facility_opened may be history and album_candidate depending on facility type
- low-level intermediate transitions may remain hidden_internal


# ============================================================
# 3. FINAL RULE
# ============================================================

Visibility class must be decided
per event meaning,
not per implementation convenience.
