# ============================================================
# AIWORKER EFFECTIVE BEHAVIOR AND GATE RUNTIME EXACT MODEL
# ============================================================

status: exact-runtime
system: AiworkerOS
layer: 040.runtime
owner: Boss
prepared_by: Zero

purpose:
Freeze runtime decision order for read, proposal, staging, and official request.

runtime_evaluation_order:
1. worker lifecycle status
2. mode
3. restriction and privileged context
4. assignment and availability state
5. allowed view family
6. lane
7. output policy
8. write surface
9. gate requirement
10. company_style_profile

stop_conditions:
- suspended worker
- retired worker
- unavailable mode for requested lane
- no allowed read family
- no allowed write surface
- missing approval requirement
- missing audit requirement
- restricted action outside gate

style_application_order:
Style is applied only after authority and gate checks pass.

escalation_triggers:
- restricted handling required
- official request rejected by gate
- missing mandatory reference data
- low confidence under strict policy
- privileged context required
