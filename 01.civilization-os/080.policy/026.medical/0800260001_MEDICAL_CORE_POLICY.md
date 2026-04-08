# ============================================================
# MEDICAL CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: medical
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of medical in CivilizationOS.

## policy_scope
Policy governs:
who may observe,
assess,
intervene,
review,
or disclose medical detail,
which states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- observation scope must remain explicit
- intervention scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current medical disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- observer eligibility
- assessor eligibility
- intervention eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit medical authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public medical summary
- subject-scoped detail
- operator or reviewer detail
- historical medical reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what medical action is allowed under valid scope
- what medical action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- subject identity basis is unclear
- actor authority is unclear
- disclosure scope is unclear
- historical mode conflicts with current disclosure
- intervention meaning conflicts with disclosure boundary

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested medical action exceeds allowed scope
- disclosure exceeds allowed class
- delegated medical authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current medical disclosure
- historical medical disclosure
- replay or reconstructed medical disclosure
- retired or archived medical disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- MEDICAL_POLICY_IDENTITY_ERROR
- MEDICAL_POLICY_SCOPE_ERROR
- MEDICAL_POLICY_DISCLOSURE_ERROR
- MEDICAL_POLICY_DENIED
- MEDICAL_POLICY_REVIEW_REQUIRED
- MEDICAL_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated medical scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed medical action with bounded disclosure
- denied medical action due to invalid actor scope
- restricted medical output due to disclosure class
- historical medical reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- observation and intervention scopes are explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may observe,
who may intervene,
who may see,
what must be denied,
what must be reviewed,
and how historical medical disclosure differs from current disclosure
without inventing missing policy semantics.
