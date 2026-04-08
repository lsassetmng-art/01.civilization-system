# ============================================================
# SQL SAFETY POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

policy_principles:
- select_safe may be lightest
- write_guarded requires stronger control
- ddl_guarded requires mandatory approval
- destructive_high_risk requires strongest control
- production execution should be stricter than non-production
