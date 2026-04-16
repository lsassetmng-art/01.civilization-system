# ============================================================
# MBO FIRST SLICE ACCEPTANCE RUNBOOK
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines the exact run order for first-slice acceptance.

run_order:
1. apply integrated SQL or phased SQL
2. apply seed/master data
3. apply sample test data
4. run executable quick-check SQL
5. verify backend first-slice endpoints
6. verify frontend first-slice screens
7. verify cross-flow lock behavior
8. record acceptance result
9. record blockers or deviations if any

backend_acceptance_flow:
- objective list returns visible rows
- objective detail returns exact fields
- create objective creates draft
- update objective updates draft
- activate objective moves draft to active
- action plan create works on active objective
- progress log create works on active objective
- dashboard summary returns scoped counts

frontend_acceptance_flow:
- objective list loads correctly
- create/edit screen saves correctly
- detail screen reflects latest data
- action plan create is visible and works
- progress update/history works
- dashboard summary shell renders counts
- loading/empty/error states render correctly

cross_flow_acceptance:
- newly created objective appears in list
- newly activated objective accepts action plan
- newly activated objective accepts progress log
- latest progress is reflected in detail
- locked sample objective blocks normal write path
- lock badge is visible for locked sample
- multi-device baseline is usable

acceptance_output:
- acceptance date
- validator
- backend result
- frontend result
- cross-flow result
- pass/fail decision
- blockers
- next action

pass_condition:
All first-slice required flows pass
without design-breaking deviation.

