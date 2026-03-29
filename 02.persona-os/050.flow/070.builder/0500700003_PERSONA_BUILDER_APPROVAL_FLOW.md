# ============================================================
# PERSONA BUILDER APPROVAL FLOW
# ============================================================

status: canonical
scope: persona.builder.approval.flow
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical approval flow for Persona Builder.

This flow governs movement from validated draft
to approval decision state.


# ============================================================
# FLOW
# ============================================================

1. approval request submitted
2. latest validation result resolved
3. blocking issue check performed
4. approval request record created
5. reviewer assignment created
6. status moved to approval_requested / under_review
7. reviewer inspects draft summary and evidence
8. reviewer records one of:
   - approve
   - reject
   - return_for_rework
   - request_more_information
9. approval state updated
10. audit records written

Approval flow must fail closed if:

- validation is missing
- blocking issues remain
- reviewer authority is unresolved
- decision record is incomplete
- audit persistence fails


# ============================================================
# OUTPUT
# ============================================================

Approval flow outputs:

- approval request reference
- reviewer assignment reference
- decision reference
- updated draft governance state
- audit reference
