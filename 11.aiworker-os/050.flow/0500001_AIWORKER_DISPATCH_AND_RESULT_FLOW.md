# ============================================================
# AIWORKER DISPATCH AND RESULT FLOW
# ============================================================

status: canonical
system: AiworkerOS
layer: 050.flow
owner: Boss
prepared_by: Zero

flow:
1. BusinessOS records business-side dispatch request.
2. BusinessOS sends controlled dispatch intake to AiworkerOS.
3. AiworkerOS validates request scope and tenant context.
4. AiworkerOS evaluates candidate workers by domain, role, rank attachment, fit, availability, and restriction state.
5. AiworkerOS decides assignment, reservation, rejection, or escalation.
6. AiworkerOS writes worker-side canonical state into aiworker schema.
7. AiworkerOS publishes refreshed safe context families to cx22073jw.
8. Assigned worker reads cx22073jw view families.
9. Worker produces advice, action draft, staged output, or controlled execution request.
10. Controlled function and gate evaluate write intent.
11. Summary-safe result is emitted back to BusinessOS.
12. Audit, growth, fit, and recovery histories are updated in AiworkerOS.

flow_invariants:
- request truth and assignment truth are different records
- raw worker internals do not flow back to business-facing surfaces by default
- read lane is cx22073jw only
- write lane is controlled only

final_rule:
AiworkerOS resolves the worker,
BusinessOS resolves the business transaction,
and cx22073jw resolves the worker-readable context.
