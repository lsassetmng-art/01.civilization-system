# ============================================================
# SHIFT MANAGER IMPLEMENTATION PHASE TASK BREAKDOWN
# ============================================================

status: implementation-entry
type: implementation-phase-task-breakdown
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document breaks ShiftManager implementation
into practical phases and task groups.

The goal is:
- clear starting order
- reduced implementation confusion
- controlled delivery from foundation to usable MVP

# ============================================================
# 1. PHASE OVERVIEW
# ============================================================

phase_overview:
phase_1:
- foundation / bootstrap / subscription gate

phase_2:
- draft-side core shift operations

phase_3:
- publication / visibility / viewing

phase_4:
- generation

phase_5:
- PDF / notification

phase_6:
- ERP / polish / hardening

# ============================================================
# 2. PHASE 1: FOUNDATION / BOOTSTRAP / SUBSCRIPTION GATE
# ============================================================

goal:
Make the app able to start safely,
resolve user/site context,
and block features correctly by subscription state.

tasks:
- confirm package/module starter structure
- implement bootstrap API consumption
- resolve person_id / company_id / roles / site_license_id
- resolve subscription_status
- implement feature_gate context
- implement read-only mode detection
- connect first DB schema pack review
- confirm auth/session boundary
- confirm base error handling format
- confirm base API client DTO layer

deliverables:
- bootstrap context works
- subscription/trial/inactive state visible in app
- feature gate can block write features
- basic auth/session state stable

# ============================================================
# 3. PHASE 2: DRAFT-SIDE CORE SHIFT OPERATIONS
# ============================================================

goal:
Enable draft creation and editing as the first real usable core.

tasks:
- schedule create
- schedule list
- schedule detail
- assignment create
- assignment update
- assignment list
- draft edit screen wiring
- draft-side validation basics
- overlap / period range checks
- draft-side role authority checks

deliverables:
- manager can create draft schedule
- manager can edit assignments
- draft schedule list/detail usable
- inactive state blocks write behavior

# ============================================================
# 4. PHASE 3: PUBLICATION / VISIBILITY / VIEWING
# ============================================================

goal:
Turn drafts into visible published schedules safely.

tasks:
- validate-for-publication
- publish
- republish
- publication snapshot persistence
- share rule create/update basics
- view_scope evaluation/rebuild
- my shifts today
- my shifts week
- publication assignment detail
- share preview
- publish target confirmation UX
- viewing/read-only scope checks

deliverables:
- manager can publish/republish
- viewer can see only permitted published shifts
- self-view and visible shared view work correctly

# ============================================================
# 5. PHASE 4: GENERATION
# ============================================================

goal:
Enable explainable rule-based draft auto-generation.

tasks:
- generation rule create/read basics
- condition_json validation
- slot expansion logic
- candidate collection logic
- hard-rule elimination
- staged scoring logic
- required_roles first-fill logic
- generation_result save
- generation_warning save
- generation result review screen
- generation warning list screen
- overwrite_policy support
- initial support: create_new_schedule / replace_existing_draft

deliverables:
- manager can run auto-generate
- draft is created/updated
- warnings/shortages are visible
- result remains editable by human

# ============================================================
# 6. PHASE 5: PDF / NOTIFICATION
# ============================================================

goal:
Enable practical printable output and publication-driven alerts.

tasks:
- notification list
- notification read
- publish notification generation
- republish notification generation
- same_day reminder generation
- urgent_change handling
- PDF export request handling
- publication_pdf rendering path
- draft_pdf rendering path
- export history save
- weekly_a4 first layout
- personal_compact layout
- draft watermark handling
- publication version/published_at print header

deliverables:
- user can receive/view notifications
- manager can export publication PDF
- personal PDF works where allowed
- print output is operationally usable

# ============================================================
# 7. PHASE 6: ERP / POLISH / HARDENING
# ============================================================

goal:
Connect enterprise export and stabilize quality.

tasks:
- ERP export request
- ERP linkage status detail
- ERP retry handling
- audit/history surface polish
- RLS/app-layer consistency review
- print layout tuning
- generation score tuning
- grace-state handling finalization
- site/store definition finalization
- error code consistency review
- performance/index review

deliverables:
- ERP export path works
- status/retry visibility works
- major edge cases reduced
- pre-release hardening baseline exists

# ============================================================
# 8. CROSS-PHASE MANDATORY CHECKS
# ============================================================

cross_phase_checks:
- snake_case payload consistency
- subscription gate consistency
- read-only mode correctness
- draft/publication separation
- visibility scope correctness
- publication-only ERP export
- publication-oriented printable export
- generation remains draft-only
- warnings remain explainable

# ============================================================
# 9. SAFE DEFER ITEMS
# ============================================================

safe_defer_items:
- board_a3 visual fine tuning
- advanced PDF variants
- merge_into_existing_draft advanced logic
- advanced optimizer behavior
- push provider sophistication
- nonessential visual polish
- rich analytics/dashboard extras

# ============================================================
# 10. RECOMMENDED FIRST IMPLEMENTATION BATCH
# ============================================================

first_batch_recommendation:
backend:
- bootstrap
- schedule create/list/detail
- assignment create/update/list

ui:
- home dashboard
- shift list
- shift edit
- week view

policy:
- subscription gate
- read-only mode
- basic draft authority

reason:
This gives the earliest usable core
without mixing too many advanced concerns too early.

# ============================================================
# 11. CONCLUSION
# ============================================================

ShiftManager implementation should proceed in this order:
1. foundation
2. draft core
3. publication/visibility
4. generation
5. PDF/notification
6. ERP/hardening

This keeps the system understandable and shippable.

