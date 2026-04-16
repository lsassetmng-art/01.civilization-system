# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE EXACT REFERENCE MAP
# ============================================================

status: implementation-facing-fixed-candidate
type: additional-feature-exact-reference-map
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document maps the exactification documents
for additional competitive features.

# ============================================================
# 2. REQUESTED DAY-OFF
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md

main_objects:
- requested_day_off_submit
- requested_day_off_review
- requested_day_off_history

# ============================================================
# 3. SCHEDULED AUTO GENERATION
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
- 0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md

main_objects:
- auto_generation_schedule_create
- auto_generation_schedule_detail
- auto_generation_schedule_execution_history

# ============================================================
# 4. DIFFERENCE / CONFIRMATION
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md

main_objects:
- publication_difference_detail
- change_confirmation_status
- shortage_difference_dashboard

# ============================================================
# 5. HEADQUARTERS
# ============================================================

reference_docs:
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md

main_objects:
- headquarters_site_dashboard
- site_status_detail
- multi_site_analytics

