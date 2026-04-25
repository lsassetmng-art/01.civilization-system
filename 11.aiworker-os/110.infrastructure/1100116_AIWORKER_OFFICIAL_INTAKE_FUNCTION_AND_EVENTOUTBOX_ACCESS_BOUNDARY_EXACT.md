# ============================================================
# AIWORKER OFFICIAL INTAKE FUNCTION AND EVENTOUTBOX ACCESS BOUNDARY EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact access boundary for official intake, controlled functions, and event delivery.

official_intake_boundary:
- aiworker.official_intake_request
  ROLE_AIW_SCHEMA_OWNER:
  - OWN

  ROLE_AIW_OFFICIAL_INTAKE_WRITER:
  - INSERT
  - SELECT on self/eligible workflow scope via RLS
  - UPDATE limited to nonterminal intake metadata allowed by policy
  forbidden:
  - direct APPLIED finalization
  - direct canonical mutation

  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR:
  - SELECT on eligible intake rows
  - UPDATE intake_status through controlled workflow only
  forbidden:
  - ad hoc nonworkflow mutation

  all_other_runtime_roles:
  - NONE

controlled_function_boundary:
- functions in controlled catalog:
  ROLE_AIW_SCHEMA_OWNER:
  - OWN
  ROLE_AIW_CONTROLLED_FUNCTION_EXECUTOR:
  - EXECUTE
  all_other_runtime_roles:
  - NONE

event_outbox_boundary:
- aiworker.event_outbox
  ROLE_AIW_SCHEMA_OWNER:
  - OWN

  ROLE_AIW_EVENT_DELIVERY:
  - SELECT on undelivered or eligible delivery rows
  - DELIVERY_UPDATE on delivered_at and delivery metadata only
  forbidden:
  - rewriting summary/result codes
  - rewriting business correlation
  - deleting rows

  ROLE_AIW_AUDIT_READER:
  - SELECT when audit review requires delivery evidence

  all_other_runtime_roles:
  - NONE

status_realization_principle:
- intake writer submits
- controlled-function executor applies
- event delivery role delivers
- no single runtime role owns the whole workflow chain

hard_rules:
- official intake writer cannot finalize canonical mutation
- event delivery cannot mutate worker truth
- event delivery cannot broaden raw truth visibility
