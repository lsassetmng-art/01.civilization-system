# ============================================================
# MBO FLOW OVERVIEW
# ============================================================

status: canonical
application: Mbo
layer: flow
owner: Boss
prepared_by: Zero

main_business_flow:
period_open
-> objective_create
-> action_plan_attach
-> progress_update_repeat
-> review_repeat
-> evaluation_draft
-> evaluation_confirm
-> ERP_transfer

exception_flows:
- overdue update handling
- overdue review handling
- evaluation rework before confirmation
- ERP resend after failure
