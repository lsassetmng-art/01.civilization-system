# ============================================================
# TIME CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: time
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of time in CivilizationOS.

## policy_scope
Policy governs:
which time references may be exposed,
when schedule, occurrence, history, or replay references are valid,
who may view which timing detail,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- reference scope must remain explicit
- disclosure scope must remain explicit
- current and historical disclosure must remain distinct
- replay and original occurrence disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- reference eligibility
- disclosure eligibility
- replay eligibility
- historical-reference eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit time-reference authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public time summary
- operator-scoped detail
- reviewer detail
- historical or replay reference
- denied output
- restricted output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what time reference is allowed under valid scope
- what is denied under invalid scope
- what requires review before exposure
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- time basis is unclear
- reference mode is unclear
- disclosure scope is unclear
- replay meaning conflicts with original occurrence
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- reference scope is invalid
- requested time exposure exceeds allowed scope
- disclosure exceeds allowed class

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current time disclosure
- historical time disclosure
- replay or reconstructed time disclosure
- closed or archived time disclosure

Historical or replay disclosure must not impersonate current truth.

## failure_codes
- TIME_POLICY_IDENTITY_ERROR
- TIME_POLICY_SCOPE_ERROR
- TIME_POLICY_DISCLOSURE_ERROR
- TIME_POLICY_DENIED
- TIME_POLICY_REVIEW_REQUIRED
- TIME_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated time scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed current-time reference with bounded disclosure
- denied request due to invalid time scope
- restricted replay output
- historical reference with bounded visibility
- escalated request due to ambiguous timing mode

## review_checklist
- reference scope is explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical/replay rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
which time references may be shown,
what must be denied,
what must be reviewed,
and how historical or replay disclosure differs from current disclosure
without inventing missing policy semantics.
