# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE PHYSICAL DDL EXECUTION EXTENSION
# ============================================================

status: design-extension
type: additional-feature-physical-ddl-execution-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the execution-facing DDL direction
for the newly added competitive features.

# ============================================================
# 2. TARGET TABLES
# ============================================================

target_tables:
- shift_requested_day_off
- shift_publication_difference
- shift_change_confirmation
- shift_site_dashboard_snapshot
- shift_site_analytics_snapshot
- shift_auto_generation_schedule
- shift_auto_generation_execution

# ============================================================
# 3. KEY DDL DIRECTION
# ============================================================

ddl_direction:
- use uuid primary keys
- use company_id for company boundary wherever applicable
- keep enum-like values as checked text initially
- use created_at / updated_at timestamptz
- use logical status progression where review exists
- separate schedule definition and execution history for timer generation
- difference rows must remain publication-based
- analytics snapshots remain lightweight summary rows

# ============================================================
# 4. EXECUTION ORDER RECOMMENDATION
# ============================================================

execution_order:
1. shift_requested_day_off
2. shift_publication_difference
3. shift_change_confirmation
4. shift_auto_generation_schedule
5. shift_auto_generation_execution
6. shift_site_dashboard_snapshot
7. shift_site_analytics_snapshot
8. indexes
9. updated_at triggers
10. RLS / authorization policies

# ============================================================
# 5. CONCLUSION
# ============================================================

These tables should be added as explicit execution-facing DDL targets
before implementation of the related competitive features.

