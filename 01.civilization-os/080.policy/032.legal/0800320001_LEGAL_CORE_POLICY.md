# ============================================================
# LEGAL CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: legal
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of legal in CivilizationOS.

## policy_scope
Policy governs:
who may file,
review,
decide,
or disclose legal detail,
which legal states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- filing scope must remain explicit
- decision scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current legal disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- filing eligibility
- reviewer eligibility
- decision eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit legal authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public legal summary
- operator-scoped detail
- reviewer or decision detail
- historical legal reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what legal action is allowed under valid scope
- what legal action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- subject identity basis is unclear
- actor authority is unclear
- disclosure scope is unclear
- claim or determination meaning is ambiguous
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested legal action exceeds allowed scope
- disclosure exceeds allowed class
- delegated legal authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current legal disclosure
- historical legal disclosure
- replay or reconstructed legal disclosure
- closed or archived legal disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- LEGAL_POLICY_IDENTITY_ERROR
- LEGAL_POLICY_SCOPE_ERROR
- LEGAL_POLICY_DISCLOSURE_ERROR
- LEGAL_POLICY_DENIED
- LEGAL_POLICY_REVIEW_REQUIRED
- LEGAL_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated legal scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed legal action with bounded disclosure
- denied legal action due to invalid actor scope
- restricted legal output due to disclosure class
- historical legal reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- filing and decision scopes are explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may file,
who may decide,
who may see,
what must be denied,
what must be reviewed,
and how historical legal disclosure differs from current disclosure
without inventing missing policy semantics.
