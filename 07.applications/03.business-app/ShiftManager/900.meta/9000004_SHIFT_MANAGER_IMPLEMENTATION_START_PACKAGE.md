# ============================================================
# SHIFT MANAGER IMPLEMENTATION START PACKAGE
# ============================================================

status: implementation-entry
type: implementation-start-package
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This package defines the minimum practical starting point
for implementation work on ShiftManager.

It is intended to reduce implementation-entry confusion by fixing:
- where to start
- what to read first
- what to implement first
- what to defer

# ============================================================
# 1. CURRENT IMPLEMENTATION ENTRY JUDGEMENT
# ============================================================

judgement:
ShiftManager is ready for implementation-entry work.

reason:
- business model fixed
- subscription/trial/read-only model fixed
- API payloads fixed
- validation matrix fixed
- SQL packs split
- RLS packs split
- generation direction fixed
- PDF direction fixed
- screen/navigation/input direction fixed

# ============================================================
# 2. FIRST READ ORDER
# ============================================================

read_order_mandatory:
1. 00_SHIFT_MANAGER_INTEGRATED.md
2. 9000003_SHIFT_MANAGER_FINAL_BUSINESS_AND_PRE_IMPLEMENTATION_HANDOFF.md
3. 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
4. 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
5. 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
6. 030.model/010.shift-manager/sql-pack/*
7. 100.security/010.shift-manager/sql-pack/*
8. 1200008_SHIFT_MANAGER_AUTO_GENERATION_CONDITION_JSON_SPEC.md
9. 1200009_SHIFT_MANAGER_GENERATION_ALGORITHM_REFINEMENT.md
10. 0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md

# ============================================================
# 3. IMPLEMENTATION PHASE ORDER
# ============================================================

recommended_phase_order:
phase_1_foundations:
- package/module skeleton
- auth/subscription/bootstrap context
- DB schema review
- SQL pack review

phase_2_core_draft:
- schedule create/list/detail
- assignment create/update/list
- draft edit screens

phase_3_publication_and_visibility:
- validate-for-publication
- publish / republish
- share rule management
- view_scope evaluation basis
- my shifts today/week

phase_4_generation:
- generation rule create
- auto-generate
- generation result / warning view

phase_5_pdf_and_notifications:
- PDF export
- notification center
- publish / republish notification flow

phase_6_erp_and_polish:
- ERP export / retry
- audit/history polish
- print detail tuning
- generation tuning

# ============================================================
# 4. MINIMUM IMPLEMENTATION START SET
# ============================================================

minimum_start_set:
backend:
- bootstrap
- schedule create/list/detail
- assignment create/update/list
- publish validation
- publish
- me/shifts/today
- me/shifts/week

database:
- schema
- core tables
- generation tables
- history tables
- indexes
- helper functions
- minimum RLS enable/helpers/draft/publication/share

ui:
- login/access confirmation
- dashboard
- shift list
- shift edit
- publish confirmation
- my shift
- week view

# ============================================================
# 5. DEFER-FIRST ITEMS
# ============================================================

defer_first_if_needed:
- board_a3 fine tuning
- advanced PDF layout variants
- merge_into_existing_draft advanced behavior
- advanced generation balancing
- richer push provider integrations
- ERP transport optimization
- nonessential visual polish

# ============================================================
# 6. IMPLEMENTATION RISKS TO WATCH
# ============================================================

implementation_risks:
- draft/publication boundary collapse
- share_rule and view_scope confusion
- subscription gate applied too late
- PDF export treated as raw business source instead of publication output
- generation logic becoming opaque too early
- RLS and app-layer checks diverging
- inactive state accidentally keeping write authority

# ============================================================
# 7. MANDATORY IMPLEMENTATION RULES
# ============================================================

mandatory_rules:
- keep publish manual
- keep generation draft-only
- keep ERP export publication-only
- keep inactive state read-only
- keep visibility explicit
- keep PDF formal distribution publication-based
- keep API payload names snake_case
- keep additive SQL change style where possible

# ============================================================
# 8. IMPLEMENTATION START CHECKLIST
# ============================================================

implementation_start_checklist:
- [ ] read integrated + final handoff
- [ ] review API payload spec
- [ ] review validation matrix
- [ ] review SQL packs
- [ ] confirm package/module split
- [ ] confirm subscription gate handling
- [ ] confirm first endpoint batch
- [ ] confirm first screen batch
- [ ] confirm SQL execution review path
- [ ] confirm test scope for phase 1

# ============================================================
# 9. NEXT RECOMMENDED OUTPUTS
# ============================================================

next_recommended_outputs:
- implementation phase task breakdown
- package/module starter skeleton
- first endpoint batch implementation plan
- first SQL execution review pack
- first UI screen responsibility pack

# ============================================================
# 10. CONCLUSION
# ============================================================

ShiftManager should now move from broad design work
to controlled implementation-entry work.

The safest starting point is:
- foundations
- draft-side core
- publication/visibility
- then generation/PDF/ERP

