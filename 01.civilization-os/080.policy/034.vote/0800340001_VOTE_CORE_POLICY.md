# ============================================================
# VOTE CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: vote
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of vote in CivilizationOS.

## policy_scope
Policy governs:
who may vote,
operate,
count,
review,
or disclose vote detail,
which vote states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- eligibility scope must remain explicit
- counting and review scopes must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current vote disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- voter eligibility
- operator eligibility
- counting eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit voting authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public vote summary
- operator-scoped detail
- reviewer or counting detail
- historical vote reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what vote action is allowed under valid scope
- what vote action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- subject identity basis is unclear
- actor authority is unclear
- disclosure scope is unclear
- eligibility or result meaning is ambiguous
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested vote action exceeds allowed scope
- disclosure exceeds allowed class
- delegated vote authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current vote disclosure
- historical vote disclosure
- replay or reconstructed vote disclosure
- closed or archived vote disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- VOTE_POLICY_IDENTITY_ERROR
- VOTE_POLICY_SCOPE_ERROR
- VOTE_POLICY_DISCLOSURE_ERROR
- VOTE_POLICY_DENIED
- VOTE_POLICY_REVIEW_REQUIRED
- VOTE_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated vote scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed vote action with bounded disclosure
- denied vote action due to invalid actor scope
- restricted vote output due to disclosure class
- historical vote reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- eligibility/counting/review scopes are explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may vote,
who may count,
who may see,
what must be denied,
what must be reviewed,
and how historical vote disclosure differs from current disclosure
without inventing missing policy semantics.
