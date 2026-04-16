# ============================================================
# MBO FIRST SLICE VERIFICATION RUNBOOK
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Defines the runbook for verifying the first implementation slice.

verification_order:
1. execute integrated SQL or phased SQL
2. apply sample test data
3. run executable quick-check SQL
4. verify backend first-slice endpoints
5. verify frontend first-slice screens
6. verify cross-flow behaviors
7. record results

backend_verification_steps:
- call objective list endpoint
- call objective detail endpoint
- create draft objective
- update draft objective
- activate objective
- list action plans
- create action plan
- list progress logs
- create progress log
- read dashboard summary

frontend_verification_steps:
- open objective list
- filter and open detail
- create draft objective
- edit draft objective
- activate objective
- open action plan screen and create row
- open progress screen and create row
- open dashboard summary shell

cross_flow_checks:
- created objective appears in list
- updated objective appears in detail
- activated objective accepts action plan
- activated objective accepts progress log
- detail reflects latest progress
- finalized sample objective visually shows lock
- normal write path to locked sample is blocked
- dashboard summary reflects sample counts

recording_rules:
- use acceptance checklist
- use implementation progress record template
- record backend result
- record frontend result
- record cross-flow result
- record blockers and next actions

exit_condition:
First slice is considered verified when:
- backend acceptance passes
- frontend acceptance passes
- cross acceptance passes
- no design-breaking issue remains unresolved
