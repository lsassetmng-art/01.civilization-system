# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE RLS SQL PACK NOTE
# ============================================================

status: design-extension
type: additional-feature-rls-sql-pack-note
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note fixes the RLS SQL pack direction
for newly added competitive features.

# ============================================================
# 2. TARGET SQL FILES
# ============================================================

target_sql_files:
- 109_shift_manager_rls_requested_day_off.sql
- 110_shift_manager_rls_additional_generation.sql
- 111_shift_manager_rls_difference_confirmation.sql
- 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 3. CORE DIRECTION
# ============================================================

core_direction:
- requested day-off = self-first + manager review visibility
- scheduled generation = manager-side only
- difference / confirmation = affected-person or manager-side visibility
- headquarters snapshot/analytics = headquarters/operator summary visibility only

# ============================================================
# 4. IMPORTANT RULE
# ============================================================

important_rule:
Subscription inactive blocking remains an app/service-layer mutation gate.
RLS should preserve scope safety,
not replace subscription feature-gate logic.

# ============================================================
# 5. CONCLUSION
# ============================================================

Additional features now have an explicit RLS SQL pack direction
aligned with the existing authorization model.

