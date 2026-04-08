# ============================================================
# ADMIN CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: admin
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of admin in CivilizationOS.

## policy_scope
Policy governs:
who may file,
handle,
review,
approve,
or disclose administrative detail,
which admin states may transition,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- filing scope must remain explicit
- handling and approval scopes must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current admin disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- filing eligibility
- handling eligibility
- approval eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit administrative authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- bounded public admin summary
- operator-scoped detail
- reviewer or approval detail
- historical admin reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what admin action is allowed under valid scope
- what admin action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- request identity basis is unclear
- actor authority is unclear
- disclosure scope is unclear
- request or approval meaning is ambiguous
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- actor scope is invalid
- requested admin action exceeds allowed scope
- disclosure exceeds allowed class
- delegated admin authority exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current admin disclosure
- historical admin disclosure
- replay or reconstructed admin disclosure
- closed or archived admin disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- ADMIN_POLICY_IDENTITY_ERROR
- ADMIN_POLICY_SCOPE_ERROR
- ADMIN_POLICY_DISCLOSURE_ERROR
- ADMIN_POLICY_DENIED
- ADMIN_POLICY_REVIEW_REQUIRED
- ADMIN_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated admin scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed admin action with bounded disclosure
- denied admin action due to invalid actor scope
- restricted admin output due to disclosure class
- historical admin reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- filing, handling, and approval scopes are explicit
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
who may approve,
who may see,
what must be denied,
what must be reviewed,
and how historical admin disclosure differs from current disclosure
without inventing missing policy semantics.
