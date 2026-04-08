# ============================================================
# MAP CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: map
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of map in CivilizationOS.

## policy_scope
Policy governs:
which spatial detail may be disclosed,
who may access authoritative or projected map detail,
when route and adjacency detail may be shown,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- spatial disclosure scope must remain explicit
- authoritative and projected disclosure must remain distinct
- route and adjacency disclosure must remain explicit
- historical and current map disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- spatial disclosure eligibility
- route disclosure eligibility
- adjacency disclosure eligibility
- historical-reference eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit map authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public map summary
- operator-scoped detail
- reviewer detail
- historical map reference
- denied output
- restricted output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what map reference is allowed under valid scope
- what is denied under invalid scope
- what requires review before exposure
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- spatial basis is unclear
- disclosure scope is unclear
- authoritative and projected meanings conflict
- route or adjacency meaning is ambiguous
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- disclosure scope is invalid
- requested spatial exposure exceeds allowed scope
- restricted boundaries would be breached

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current map disclosure
- historical map disclosure
- replay or reconstructed map disclosure
- archived map disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- MAP_POLICY_IDENTITY_ERROR
- MAP_POLICY_SCOPE_ERROR
- MAP_POLICY_DISCLOSURE_ERROR
- MAP_POLICY_DENIED
- MAP_POLICY_REVIEW_REQUIRED
- MAP_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated spatial scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed authoritative map reference with bounded disclosure
- denied request due to invalid spatial scope
- restricted projected map output
- historical map reference with bounded visibility
- escalated request due to ambiguous spatial meaning

## review_checklist
- spatial disclosure scope is explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
which map references may be shown,
what must be denied,
what must be reviewed,
and how historical map disclosure differs from current disclosure
without inventing missing policy semantics.
