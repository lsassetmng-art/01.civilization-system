# ============================================================
# ASSET CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: asset
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of asset in CivilizationOS.

## policy_scope
Policy governs:
who may hold or control asset-linked actions,
who may observe asset detail,
which asset states may transition,
which outputs may be disclosed,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- control scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current asset disclosure must remain distinct
- escalation criteria must remain explicit
- policy outcomes must remain reviewable and attributable

## policy_rules
The policy layer must define:
- holder eligibility
- controller eligibility
- action eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit asset authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- public asset summary
- holder-scoped detail
- operator or reviewer detail
- historical asset reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what asset action is allowed under valid scope
- what asset action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- asset identity basis is unclear
- holder or controller authority is unclear
- disclosure scope is unclear
- historical mode conflicts with current disclosure
- valuation boundary conflicts with control boundary

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- controller scope is invalid
- requested asset action exceeds allowed scope
- disclosure exceeds allowed class
- delegated control exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current asset disclosure
- historical asset disclosure
- replay or reconstructed asset disclosure
- retired or disposed asset disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- ASSET_POLICY_IDENTITY_ERROR
- ASSET_POLICY_SCOPE_ERROR
- ASSET_POLICY_DISCLOSURE_ERROR
- ASSET_POLICY_DENIED
- ASSET_POLICY_REVIEW_REQUIRED
- ASSET_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated asset scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed asset action with bounded disclosure
- denied asset action due to invalid controller scope
- restricted asset output due to disclosure class
- historical asset reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- control scope is explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may control,
who may see,
what must be denied,
what must be reviewed,
and how historical asset disclosure differs from current disclosure
without inventing missing policy semantics.
