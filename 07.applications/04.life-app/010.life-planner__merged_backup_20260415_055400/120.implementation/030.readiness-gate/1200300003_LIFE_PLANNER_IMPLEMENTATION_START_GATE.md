# ============================================================
# LIFE PLANNER IMPLEMENTATION START GATE
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 030.readiness-gate
owner: Boss
prepared_by: Zero
schema: life

implementation_start_gate:
  must_be_true:
    - design freeze checklist reviewed
    - major contradictions resolved
    - role visibility/editability matrix reviewed
    - payload exact docs reviewed
    - logical schema reviewed
    - scope matrix reviewed
    - decision log updated

  must_not_happen:
    - DDL before logical model signoff
    - UI implementation before screen item exact review
    - integration implementation before connected-app assumption review
    - pricing implementation before plan scope freeze

recommended_first_impl_sequence_after_gate:
  - phase 1 model signoff
  - phase 1 screen shell
  - phase 1 payload adapter contract
  - phase 1 policy enforcement
