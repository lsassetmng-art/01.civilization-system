# ============================================================
# EXPENSE INITIAL ROUTE MATRIX BASELINE
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the initial company-scope approval route matrix baseline
for implementation-start readiness.

matrix_basis:
- threshold basis: converted_total_amount_in_policy_base_currency
- default route family: sequential
- company scope: initial baseline
- project route precedence: stricter_route_wins

route_matrix_rows:

  - row_code: ROUTE_ROW_001
    condition_summary: department general + below threshold band 01
    applicant_department_scope: general
    threshold_band: ROUTE_BAND_01
    project_route_required: false
    route_shape:
      - manager_approval

  - row_code: ROUTE_ROW_002
    condition_summary: department general + threshold band 02
    applicant_department_scope: general
    threshold_band: ROUTE_BAND_02
    project_route_required: false
    route_shape:
      - manager_approval
      - department_head_approval

  - row_code: ROUTE_ROW_003
    condition_summary: department general + threshold band 03
    applicant_department_scope: general
    threshold_band: ROUTE_BAND_03
    project_route_required: false
    route_shape:
      - manager_approval
      - department_head_approval
      - special_approver

  - row_code: ROUTE_ROW_004
    condition_summary: project-linked expense + below threshold band 01
    applicant_department_scope: general
    threshold_band: ROUTE_BAND_01
    project_route_required: true
    route_shape:
      - manager_approval
      - project_owner_approval

  - row_code: ROUTE_ROW_005
    condition_summary: project-linked expense + threshold band 02 or above
    applicant_department_scope: general
    threshold_band: ROUTE_BAND_02_or_higher
    project_route_required: true
    route_shape:
      - manager_approval
      - project_owner_approval
      - department_head_approval

  - row_code: ROUTE_ROW_006
    condition_summary: entertainment-sensitive category
    applicant_department_scope: general
    threshold_band: any
    project_route_required: false
    route_shape:
      - manager_approval
      - department_head_approval

  - row_code: ROUTE_ROW_007
    condition_summary: advance-sensitive category
    applicant_department_scope: general
    threshold_band: any
    project_route_required: false
    route_shape:
      - manager_approval
      - department_head_approval

  - row_code: ROUTE_ROW_008
    condition_summary: corporate-card-sensitive category
    applicant_department_scope: general
    threshold_band: any
    project_route_required: false
    route_shape:
      - manager_approval
      - department_head_approval

initial_assumptions:
- parallel approval is not used in the initial baseline
- timeout auto-approval is not used
- substitute approval remains explicit and auditable
- finance review begins only after route completion

conclusion:
This matrix is sufficient as an initial implementation-start baseline
for route selection meaning.

