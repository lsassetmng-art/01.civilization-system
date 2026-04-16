# ============================================================
# SHIFT MANAGER PDF EXPORT SPECIFICATION
# ============================================================

status: design-extension
type: pdf-export-specification
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

PDF export in ShiftManager exists to support:
- printing
- in-store posting
- internal review
- fixed publication distribution
- paper-based operational handling

PDF export should be split into:
- draft PDF for internal review
- publication PDF for formal printable distribution

# ============================================================
# 2. BASIC PRINCIPLES
# ============================================================

principles:
1. draft PDF is internal review/use only
2. publication PDF is the formal printable/shareable output
3. formal distribution-oriented PDF should be publication-based
4. PDF export must respect visibility and authority boundaries
5. print-oriented A4 layout should be supported
6. output history should be traceable where needed

# ============================================================
# 3. EXPORT TYPES
# ============================================================

export_types:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

meanings:
draft_pdf:
- internal review
- pre-publication checking
- correction discussion

publication_pdf:
- officially published printable version
- formal posting/distribution

personal_pdf:
- one person's printable shift view

department_pdf:
- department-oriented printable schedule

board_pdf:
- store/office wall-posting style printable output

# ============================================================
# 4. PRIMARY USE CASES
# ============================================================

primary_use_cases:
- manager prints weekly shift for store wall
- manager prints published department shift
- staff prints own schedule
- reviewer prints draft schedule before publication
- office prints monthly overview for posting

# ============================================================
# 5. AUTHORITY DIRECTION
# ============================================================

authority_direction:
draft_pdf:
- shift_admin
- department_manager
- conditional team_leader
- staff denied by default

publication_pdf:
- permitted published viewers
- manager-side printing allowed in scope

personal_pdf:
- self allowed
- managers allowed in managed scope

department_pdf / board_pdf:
- manager-side only in relevant scope

# ============================================================
# 6. OUTPUT BASIS
# ============================================================

draft_output_basis:
- shift_schedule
- shift_assignment

publication_output_basis:
- shift_publication
- shift_publication_assignment

important_rule:
Formal printable distribution should use publication output basis.

# ============================================================
# 7. SCREEN ADDITIONS
# ============================================================

screen_candidates:
- pdf_export_setting
- pdf_export_preview
- pdf_export_history

entry_points:
- shift_edit -> draft PDF export
- publish/publication area -> publication PDF export
- my_shift / week_view -> personal PDF export
- department/board view -> board PDF export

# ============================================================
# 8. API CANDIDATES
# ============================================================

api_candidates:
- POST /api/shift-manager/v1/schedules/{schedule_id}/export-pdf
- POST /api/shift-manager/v1/publications/{publication_id}/export-pdf
- GET /api/shift-manager/v1/pdf-exports/{pdf_export_id}

# ============================================================
# 9. DATA MODEL CANDIDATE
# ============================================================

candidate_table:
- shift_pdf_export_history

candidate_columns:
- pdf_export_id
- schedule_id
- publication_id
- export_type
- export_target_scope
- exported_by_person_id
- exported_at
- file_name
- storage_path
- page_count

# ============================================================
# 10. LAYOUT DIRECTION
# ============================================================

layout_direction:
- A4 print-friendly layout
- weekly printable layout
- monthly printable layout
- personal compact layout
- board/posting layout
- clear date/time/office/role visibility
- minimal color dependence for monochrome printing

# ============================================================
# 11. COMMON COMPONENT DIRECTION
# ============================================================

common_component_candidate:
- Printable Publication Export Common

purpose:
Provides reusable printable fixed-output/PDF export pattern
for publication-oriented applications.

# ============================================================
# 12. CONCLUSION
# ============================================================

ShiftManager should support printable PDF export,
with clear separation between:
- draft PDF for internal review
- publication PDF for formal printable distribution

