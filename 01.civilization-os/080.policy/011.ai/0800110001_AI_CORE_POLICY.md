# ============================================================
# AI CORE POLICY
# ============================================================

status: canonical
layer: policy
domain: ai
scope: core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical policy behavior of ai in CivilizationOS.

## policy_scope
Policy governs:
who may deploy AI,
who may control AI,
who may observe AI detail,
which AI actions require review,
and when denial or escalation is required.

Authority interpretation must remain explicit.

## required_behavior
- deployment scope must remain explicit
- control scope must remain explicit
- disclosure scope must remain explicit
- allowed and denied paths must remain explicit
- historical and current AI disclosure must remain distinct
- escalation criteria must remain explicit

## policy_rules
The policy layer must define:
- deployer eligibility
- controller eligibility
- action eligibility
- disclosure eligibility
- review-required conditions
- denial-required conditions
- escalation-required conditions

Implicit AI authority is prohibited.

## disclosure_matrix
Policy outputs must distinguish:
- public AI summary
- controller-scoped detail
- operator or reviewer detail
- historical AI reference
- denied output
- restricted or masked output

These disclosure classes must remain distinct.

## allowed_denied_matrix
Policy must explicitly define:
- what AI action is allowed under valid scope
- what AI action is denied under invalid scope
- what requires review before execution
- what requires escalation due to ambiguity
- what remains visible only in restricted form

## escalation_rules
Escalation is required when:
- AI identity basis is unclear
- deployment authority is unclear
- controller authority is unclear
- disclosure scope is unclear
- historical mode conflicts with current disclosure

Escalation must preserve traceability.

## denial_rules
Denial is required when:
- controller scope is invalid
- requested AI action exceeds allowed scope
- disclosure exceeds allowed class
- delegated AI control exceeds source authority

Denial must remain distinguishable from absence of data.

## historical_rules
Policy must preserve distinction between:
- current AI disclosure
- historical AI disclosure
- replay or reconstructed AI disclosure
- retired or archived AI disclosure

Historical disclosure must not impersonate current truth.

## failure_codes
- AI_POLICY_IDENTITY_ERROR
- AI_POLICY_SCOPE_ERROR
- AI_POLICY_DISCLOSURE_ERROR
- AI_POLICY_DENIED
- AI_POLICY_REVIEW_REQUIRED
- AI_POLICY_ESCALATED

## observability
Policy execution must leave enough trace to reconstruct:
- evaluated AI scopes
- evaluated disclosure class
- allow or deny outcome
- review or escalation outcome

## example_scenarios
- allowed AI action with bounded disclosure
- denied AI action due to invalid controller scope
- restricted AI output due to disclosure class
- historical AI reference with bounded visibility
- escalated request due to ambiguous authority

## review_checklist
- deployment scope is explicit
- controller scope is explicit
- disclosure matrix is explicit
- allowed/denied matrix is explicit
- escalation rules are explicit
- denial rules are explicit
- historical rules are explicit
- observability is explicit

## acceptance_criteria
This policy core is acceptable only when
runtime and implementation can determine
who may deploy,
who may control,
who may see,
what must be denied,
what must be reviewed,
and how historical AI disclosure differs from current disclosure
without inventing missing policy semantics.
