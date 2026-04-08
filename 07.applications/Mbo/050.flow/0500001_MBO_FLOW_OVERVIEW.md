# ============================================================
# MBO FLOW OVERVIEW
# ============================================================

status: canonical
application: Mbo
layer: flow
owner: Boss
prepared_by: Zero

main_flow:
current_state -> objective_setup -> action_plan
-> progress_update -> review -> evaluation_confirm -> ERP_transfer
