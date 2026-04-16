# ============================================================
# MBO FIRST SLICE ACCEPTANCE CHECKLIST
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance checks for the first implementation slice.

backend_acceptance:
- objective list endpoint works
- objective detail endpoint works
- create objective endpoint works
- update objective endpoint works
- activate objective endpoint works
- action plan list/create endpoints work
- progress log list/create endpoints work
- dashboard summary endpoint works
- exact response envelope is preserved
- role guard works
- company scope guard works
- lock rejection works

frontend_acceptance:
- objective list screen works
- objective create/edit screen works
- objective detail screen works
- action plan list/create screen works
- progress update/history screen works
- dashboard summary shell works
- loading state works
- empty state works
- error state works
- lock badge is visible
- read-only state is visually distinct

cross_acceptance:
- create objective then activate works end to end
- add action plan works end to end
- add progress log works end to end
- detail screen reflects latest data
- finalized record rejects normal write path
- iphone layout is usable
- android layout is usable
- pc layout is usable
- tablet layout is usable
- multilingual resource baseline works

acceptance_result_record:
- execution_date
- validator_name
- backend_pass_fail
- frontend_pass_fail
- cross_flow_pass_fail
- blocking_issues
- followup_notes
