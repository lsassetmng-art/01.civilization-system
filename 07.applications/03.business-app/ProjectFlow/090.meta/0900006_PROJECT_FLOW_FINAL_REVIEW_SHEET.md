# ============================================================
# PROJECT FLOW FINAL REVIEW SHEET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Final review sheet for detecting omissions,
conflicts,
and unresolved design areas.

# ============================================================
# 1. POSITIONING REVIEW
# ============================================================

positioning_check:
- [ ] ProjectFlow is consistently described as a field operation front
- [ ] ERP direct call from ProjectFlow is consistently forbidden
- [ ] shared BusinessOS mediated integration is consistently stated
- [ ] source-of-truth split is consistent across documents

# ============================================================
# 2. COMMERCIAL / ENTITLEMENT REVIEW
# ============================================================

commercial_check:
- [ ] provision style is fixed as pre-installed application
- [ ] subscription style is fixed as monthly-use application
- [ ] monthly price is fixed at 900 JPY
- [ ] initial trial is fixed at 7 days
- [ ] unpaid state is fixed as read-only
- [ ] blocked actions remain visible but guarded
- [ ] smartphone and pc apply the same entitlement rules

# ============================================================
# 3. DEVICE PARITY REVIEW
# ============================================================

device_parity_check:
- [ ] smartphone and pc same functional capability rule is fixed
- [ ] only layout and density differences are allowed
- [ ] no device-exclusive major feature remains in design
- [ ] wireframes preserve action parity

# ============================================================
# 4. CORE FUNCTION REVIEW
# ============================================================

core_function_check:
- [ ] project management is covered
- [ ] task management is covered
- [ ] milestone management is covered
- [ ] issue and risk management are covered
- [ ] time entry is covered
- [ ] sync status and retry are covered
- [ ] export and report are covered

# ============================================================
# 5. ADDITIVE FEATURE REVIEW
# ============================================================

additive_feature_check:
- [ ] form intake is covered
- [ ] light automation is covered
- [ ] timeline is covered
- [ ] gantt is covered
- [ ] live dashboard is covered
- [ ] memo and meeting note are covered
- [ ] comment history is covered
- [ ] project template is covered
- [ ] WBS scheduling proposal is covered

# ============================================================
# 6. CUSTOMER MATERIAL REVIEW
# ============================================================

customer_material_check:
- [ ] customer-facing schedule is covered
- [ ] progress report is covered
- [ ] issue list is covered
- [ ] risk list is covered
- [ ] decision note is covered
- [ ] follow-up action list is covered
- [ ] all six are standard materials from the beginning
- [ ] external-use human review remains mandatory

# ============================================================
# 7. STATE / PROPOSAL / DRAFT REVIEW
# ============================================================

state_check:
- [ ] proposal and confirmed schedule are clearly separated
- [ ] draft and final external-use report are clearly separated
- [ ] read-only and active entitlement states are clearly separated
- [ ] sync status values are consistently handled

# ============================================================
# 8. DATA / MODEL REVIEW
# ============================================================

data_model_check:
- [ ] logical models cover major domains
- [ ] physical table candidates cover major domains
- [ ] export/report/template/proposal models are included
- [ ] memo/comment/form models are included
- [ ] automation-related models are included where intended
- [ ] table ownership does not conflict with ERP truth

# ============================================================
# 9. IMPLEMENTATION PREP REVIEW
# ============================================================

implementation_prep_check:
- [ ] module split is documented
- [ ] screen state and event design is documented
- [ ] use case grouping is documented
- [ ] repository and gateway boundaries are documented
- [ ] migration split plan is documented
- [ ] validation and error handling split is documented

# ============================================================
# 10. UI / WIREFRAME REVIEW
# ============================================================

ui_wireframe_check:
- [ ] dashboard wireframe exists
- [ ] project list/detail wireframes exist
- [ ] task wireframes exist
- [ ] timeline/gantt wireframes exist
- [ ] export/report/customer material wireframes exist
- [ ] form/memo/comment/automation wireframes exist
- [ ] read-only visibility is represented

# ============================================================
# 11. OPEN DECISION REVIEW
# ============================================================

open_decision_check:
- [ ] open decisions remain explicitly listed
- [ ] no open decision is incorrectly treated as already fixed
- [ ] no implementation-start action is implied by design-only docs

# ============================================================
# 12. REVIEW RESULT
# ============================================================

review_result_fields:
- final_gap_summary
- contradiction_summary
- optional_next_design_focus
