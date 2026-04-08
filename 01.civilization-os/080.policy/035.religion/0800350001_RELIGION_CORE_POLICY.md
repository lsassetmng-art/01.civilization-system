# ============================================================
# RELIGION CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: religion
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of religion in CivilizationOS.

## policy_scope
Policy governs:
who may disclose,
administer,
review,
or restrict religion-linked detail,
which religious states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- administration scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current religion disclosure must remain distinct
- escalation criteria must remain explicit
- policy outcomes must remain reviewable and attributable

## policy_rules
The policy layer must define:
- administrator eligibility
- reviewer eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit religious authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public religion summary
- operator-scoped detail
- reviewer detail
- historical religion reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what religion action is allowed under valid scope
- what religion action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- subject identity basis is unclear
- actor authority is unclear
- disclosure scope is unclear
- affiliation or practice meaning is ambiguous
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested religion action exceeds allowed scope
- disclosure exceeds allowed class
- delegated religion authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current religion disclosure
- historical religion disclosure
- replay or reconstructed religion disclosure
- closed or archived religion disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- RELIGION_POLICY_IDENTITY_ERROR
- RELIGION_POLICY_SCOPE_ERROR
- RELIGION_POLICY_DISCLOSURE_ERROR
- RELIGION_POLICY_DENIED
- RELIGION_POLICY_REVIEW_REQUIRED
- RELIGION_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated religion scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed religion action with bounded disclosure
- denied religion action due to invalid actor scope
- restricted religion output due to disclosure class
- historical religion reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- administration scope is explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may administer,
who may see,
what must be denied,
what must be reviewed,
and how historical religion disclosure differs from current disclosure
without inventing missing policy semantics.
