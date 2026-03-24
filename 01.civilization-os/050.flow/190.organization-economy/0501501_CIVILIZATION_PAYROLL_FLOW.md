# ============================================================
# CIVILIZATION PAYROLL FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical payroll flow.

flow_steps:
1 payroll trigger occurs
2 payroll runtime validates identity and basis
3 payroll state is persisted
4 failure, reversal, or settlement-adjacent paths may follow
5 compensation trace remains preserved
