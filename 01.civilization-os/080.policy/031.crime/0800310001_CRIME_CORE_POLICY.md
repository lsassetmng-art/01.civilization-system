# ============================================================
# CRIME CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: crime
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of crime in CivilizationOS.

## policy_scope
Policy governs:
who may observe,
investigate,
review,
decide,
or disclose crime detail,
which crime states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- investigation scope must remain explicit
- decision scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current crime disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- observer eligibility
- investigator eligibility
- reviewer eligibility
- decision eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit crime authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public crime summary
- operator-scoped detail
- reviewer or decision detail
- historical crime reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what crime action is allowed under valid scope
- what crime action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- subject identity basis is unclear
- actor authority is unclear
- disclosure scope is unclear
- allegation meaning conflicts with determination meaning
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested crime action exceeds allowed scope
- disclosure exceeds allowed class
- delegated crime authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current crime disclosure
- historical crime disclosure
- replay or reconstructed crime disclosure
- closed or archived crime disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- CRIME_POLICY_IDENTITY_ERROR
- CRIME_POLICY_SCOPE_ERROR
- CRIME_POLICY_DISCLOSURE_ERROR
- CRIME_POLICY_DENIED
- CRIME_POLICY_REVIEW_REQUIRED
- CRIME_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated crime scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed crime action with bounded disclosure
- denied crime action due to invalid actor scope
- restricted crime output due to disclosure class
- historical crime reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- investigation and decision scopes are explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may investigate,
who may decide,
who may see,
what must be denied,
what must be reviewed,
and how historical crime disclosure differs from current disclosure
without inventing missing policy semantics.
