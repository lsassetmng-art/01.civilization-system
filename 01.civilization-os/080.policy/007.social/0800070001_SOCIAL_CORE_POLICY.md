# ============================================================
# SOCIAL CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: 007.social
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of 007.social in CivilizationOS.

## policy_scope
Policy governs:
who may act,
who may see,
which states may transition,
which outputs may be disclosed,
which actions require review,
and when denial or escalation is required.

Authority interpretation must not remain vague.

## design_intent
The policy core exists to make
authority meaning,
disclosure meaning,
review meaning,
denial meaning,
and escalation meaning
explicit enough for runtime and implementation.

The goal is not policy ornament.
The goal is bounded authority interpretation.

## required_behavior
- authority scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current disclosure must remain distinct
- escalation criteria must remain explicit
- policy outcomes must remain reviewable and attributable

## policy_rules
The policy layer must define:
- actor eligibility
- action eligibility
- state-transition eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit allowance is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- public summary output
- actor-scoped detailed output
- operator or reviewer output
- historical reference output
- denied output
- restricted or masked output

Disclosure classes must remain semantically distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what is allowed under valid scope
- what is denied under invalid scope
- what requires review before action
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- identity basis is unclear
- actor authority is unclear
- state meaning is unclear
- boundary meaning is unclear
- disclosure scope is unclear
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested action exceeds allowed scope
- state is not eligible for requested transition
- disclosure exceeds allowed class
- delegated scope exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current-state disclosure
- historical disclosure
- replay or reconstructed disclosure
- closed or archived disclosure

Historical disclosure must never impersonate current truth.

## failure_codes
- POLICY_IDENTITY_ERROR
- POLICY_SCOPE_ERROR
- POLICY_STATE_ERROR
- POLICY_DISCLOSURE_ERROR
- POLICY_DENIED
- POLICY_REVIEW_REQUIRED
- POLICY_ESCALATED

## observability
Policy execution must leave enough trace
to reconstruct:
- policy inputs
- evaluated scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed action with bounded disclosure
- denied action due to invalid actor scope
- restricted output due to disclosure class
- historical reference with bounded visibility
- escalated request due to ambiguous boundary

## review_checklist
- policy scope is explicit
- authority rules are explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- failure codes are explicit
- observability is explicit
- bounded output classes are explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may act,
who may see,
what must be denied,
what must be reviewed,
what must be escalated,
and how historical disclosure differs from current disclosure
without inventing missing policy semantics.
