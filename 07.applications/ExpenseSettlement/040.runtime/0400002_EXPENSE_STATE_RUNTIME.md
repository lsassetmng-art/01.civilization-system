# ============================================================
# EXPENSE STATE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

submit_states:
- draft
- ready_for_submit
- submitted
- returned
- resubmitted
- approved
- rejected

erp_states:
- none
- pending
- confirmed
- failed
- settled

runtime_rule:
approval transition and erp transition are independent but coordinated.
