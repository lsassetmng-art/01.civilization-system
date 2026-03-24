# ============================================================
# CIVILIZATION PAYROLL RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for payroll handling.

runtime_scope:
- validate payroll target
- enforce idempotent payroll posting
- update payroll state
- preserve compensation traceability

trigger_conditions:
- payroll approved
- payroll paid
- payroll failed
- payroll reversed
- payroll cancelled

processing_steps:
1 resolve payroll target and worker scope
2 verify payroll_ref idempotency basis
3 apply payroll state transition
4 persist payroll result
5 preserve audit and compensation trace

success_condition:
- payroll handled once effectively

failure_condition:
- invalid payroll target
- duplicate effective payroll
- persistence failure
