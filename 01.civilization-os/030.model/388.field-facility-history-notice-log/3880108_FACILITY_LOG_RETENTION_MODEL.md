# ============================================================
# FACILITY LOG RETENTION MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-history-notice-log
component: facility-log-retention

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RETENTION CLASSES
# ============================================================

retention_classes:
- short_notice_retention
- visible_history_retention
- album_retention
- audit_retention


# ============================================================
# 2. RULES
# ============================================================

retention_rules:
- transient notices may expire
- visible history should persist longer than notices
- album entries should persist as long-lived milestones
- audit logs should follow strict long-term retention rules


# ============================================================
# 3. FINAL RULE
# ============================================================

Retention must match the purpose
of memory, notice, and audit.
