# ============================================================
# SHIFT MANAGER IMPLEMENTATION MASTER INDEX
# ============================================================

status: implementation-entry
type: implementation-master-index
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document provides the master implementation index
for ShiftManager.

It fixes:
- what to read first
- which phase files exist
- what each phase covers
- what order implementation should follow
- what remains intentionally deferred

# ============================================================
# 1. READ FIRST
# ============================================================

mandatory_first_read:
1. 00_SHIFT_MANAGER_INTEGRATED.md
2. 9000003_SHIFT_MANAGER_FINAL_BUSINESS_AND_PRE_IMPLEMENTATION_HANDOFF.md
3. 9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
4. 9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md

important_reference_after_that:
5. 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
6. 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
7. 1200011_SHIFT_MANAGER_SUBSCRIPTION_API_AND_FEATURE_GATE_SPEC.md
8. 1200012_SHIFT_MANAGER_COMPETITOR_ANALYSIS_AND_ADDITIONAL_FEATURE_PROPOSAL.md
9. 1200013_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_IMPLEMENTATION_NOTE.md
10. 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
11. 030.model/010.shift-manager/sql-pack/*
12. 100.security/010.shift-manager/sql-pack/*

# ============================================================
# 2. IMPLEMENTATION PACK FILES
# ============================================================

implementation_pack_files:
- 9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
- 9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md
- 9000006_SHIFT_MANAGER_PHASE1_DETAILED_TASK_BREAKDOWN.md
- 9000007_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
- 9000008_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_STARTER_PACK.md
- 9000009_SHIFT_MANAGER_PHASE2_IMPLEMENTATION_ENTRY_PACK.md
- 9000010_SHIFT_MANAGER_PHASE3_4_IMPLEMENTATION_ENTRY_PACK.md
- 9000011_SHIFT_MANAGER_PHASE5_PDF_NOTIFICATION_ERP_ENTRY_PACK.md
- 9000013_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_FILE_RESPONSIBILITY_PACK.md

# ============================================================
# 3. PHASE COVERAGE SUMMARY
# ============================================================

phase_1:
- bootstrap
- subscription / feature gate
- read-only enforcement
- schedule create/list/detail
- assignment create/update/list

phase_2:
- validate-for-publication
- publish / republish
- share rule basics
- share preview
- my shifts today/week
- publication visibility

phase_3_4:
- generation rules
- auto-generate
- requested day-off
- scheduled auto-generation
- difference / confirmation
- headquarters lightweight visibility

phase_5:
- PDF export
- notification center / generation
- ERP export / retry
- export/linkage visibility

cross_phase_fixed_axes:
- site-based pricing
- multilingual display/output layer
- same core features on PC and smartphone
- publication-only ERP export
- draft-only generation
- read-only when inactive

# ============================================================
# 4. RECOMMENDED EXECUTION ORDER
# ============================================================

recommended_execution_order:
1. Phase 1
2. Phase 2
3. Phase 3-4
4. Phase 5

# ============================================================
# 5. CONCLUSION
# ============================================================

ShiftManager now has a full practical implementation path:
- foundation
- draft core
- publication/visibility
- generation/advanced operations
- PDF/notification/ERP
- multilingual-ready display layer

This master index should be used
as the top implementation navigation document.

