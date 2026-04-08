# ============================================================
# TRANSPORT CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: transport
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of transport in CivilizationOS.

## policy_scope
Policy governs:
who may initiate transport,
who may operate transport,
who may observe transport detail,
which transport states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- operator scope must remain explicit
- route scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current transport disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- initiator eligibility
- operator eligibility
- route eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit transport authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- public transport summary
- operator-scoped detail
- reviewer detail
- historical transport reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what transport action is allowed under valid scope
- what transport action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- transport identity basis is unclear
- operator authority is unclear
- route or boundary scope is unclear
- disclosure scope is unclear
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- operator scope is invalid
- requested transport action exceeds allowed scope
- disclosure exceeds allowed class
- delegated transport authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current transport disclosure
- historical transport disclosure
- replay or reconstructed transport disclosure
- completed or archived transport disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- TRANSPORT_POLICY_IDENTITY_ERROR
- TRANSPORT_POLICY_SCOPE_ERROR
- TRANSPORT_POLICY_DISCLOSURE_ERROR
- TRANSPORT_POLICY_DENIED
- TRANSPORT_POLICY_REVIEW_REQUIRED
- TRANSPORT_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated transport scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed transport action with bounded disclosure
- denied transport action due to invalid operator scope
- restricted transport output due to disclosure class
- historical transport reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- operator and route scopes are explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may operate,
who may see,
what must be denied,
what must be reviewed,
and how historical transport disclosure differs from current disclosure
without inventing missing policy semantics.
