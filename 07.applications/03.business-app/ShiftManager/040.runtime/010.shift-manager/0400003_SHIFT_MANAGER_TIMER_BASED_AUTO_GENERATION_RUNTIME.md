# ============================================================
# SHIFT MANAGER TIMER-BASED AUTO GENERATION RUNTIME
# ============================================================

status: design-extension
type: timer-based-auto-generation-runtime
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the runtime behavior
for scheduled automatic draft generation.

# ============================================================
# 2. CORE RULE
# ============================================================

core_rule:
Timer-based auto generation creates draft only.
It must never:
- publish automatically
- share automatically
- export to ERP automatically
- perform formal PDF distribution automatically

# ============================================================
# 3. EXECUTION FLOW
# ============================================================

execution_flow:
1. scheduler finds active auto_generation_schedule rows
2. execution time is matched in execution_timezone
3. subscription state is checked
4. existing target-period draft collision is checked
5. generation_rule validity is checked
6. auto-generate draft is executed
7. execution result is recorded
8. manager-facing result notification may be queued

# ============================================================
# 4. SKIP RULES
# ============================================================

skip_rules:
- subscription inactive
- target schedule already exists and policy forbids overwrite
- generation rule inactive
- target scope invalid
- required site/license context unresolved

recommended_skip_error_codes:
- SUBSCRIPTION_INACTIVE_READ_ONLY
- AUTO_GENERATION_TARGET_ALREADY_EXISTS
- GENERATION_RULE_INACTIVE
- SITE_LICENSE_NOT_FOUND

# ============================================================
# 5. SUPPORTED SCHEDULE TYPES
# ============================================================

supported_schedule_types:
weekly:
- weekly_day_of_week + execution_time

monthly_fixed_day:
- monthly_day + execution_time

monthly_last_day:
- last day of month + execution_time

once:
- one-time future execution

# ============================================================
# 6. TARGET PERIOD CALCULATION
# ============================================================

target_period_mode:
next_week:
- generate next week draft

next_month:
- generate next month draft

# ============================================================
# 7. SUBSCRIPTION RELATION
# ============================================================

subscription_relation:
trial:
- allowed

active:
- allowed

grace:
- allowed

inactive:
- skipped

# ============================================================
# 8. MANAGER REVIEW RELATION
# ============================================================

important_manager_rule:
Generated output remains:
- reviewable
- editable
- non-published
until a human publishes it.

# ============================================================
# 9. CONCLUSION
# ============================================================

Scheduled auto generation should act as
a timer-driven draft preparation mechanism,
not a hands-off publishing mechanism.

